#include "../Regular/regular_analysis.h"
#include "../include/CSA.h"
#include "../simd/simd.h"

/********************正则相关函数**********************/
// 计算状态s的当前搜索区间的hop跳的字符集合
int64_t *CSA::distinct_interval_aplphabet(state *s, int32_t hop) {
    int64_t *res = nullptr;
    if (s->begin == s->end) return res;
    res = new int64_t[arrsize];
    memset(res, 0, arrsize * sizeof(int64_t));
    int64_t interval_st = GethopRank(s->begin, hop);
    int64_t interval_en = GethopRank(s->end - 1, hop);

    auto r1 = newPhi_list(interval_st);
    auto r2 = newPhi_list(interval_en);
    uchar c1 = static_cast<uchar>(Character(r1));
    uchar c2 = static_cast<uchar>(Character(r2));

    res[c1 >> 6] |= Regular::table2[c1 % 64];
    res[c2 >> 6] |= Regular::table2[c2 % 64];
    if (c1 == c2) {
        s->m[c1] = make_pair(s->begin, s->end);
        return res;
    } else {
        for (auto i = r1; i <= r2; ++i) {
            if (FindBoundary(s, hop, Character(i))) {
                char c = Character(i);
                res[c >> 6] |= Regular::table2[c % 64];
            }
        }
        return res;
    }
}
int64_t *CSA::bit_and(int64_t *p1, int64_t *p2) {
    assert(p1);
    assert(p2);
    int64_t *ret = new int64_t[arrsize];
    for (int i = 0; i < arrsize; ++i) ret[i] = p1[i] & p2[i];
    return ret;
}

void CSA::regular_expression_search(const char *regular_expression) {
    using namespace simd;

    // 更换正则
    auto be = chrono::high_resolution_clock::now();

    Regular::Parser re(regular_expression);
    /*--------------测试最大状态数量-------------------*/
    size_t statenum = 1;
    size_t maxstatenum = 0;
    /*--------------测试最大状态数量-------------------*/
    auto end = chrono::high_resolution_clock::now();
    auto diff1 = chrono::duration_cast<std::chrono::microseconds>(end - be);

    /*-------------------------------------------------------------------*/

    be = chrono::high_resolution_clock::now();
    // 起始状态
    int32_t id = re.start;
    auto st = new state(id, start[0], start[alphabetsize]);
    for (auto i = 0; i < alphabetsize; ++i) {
        st->m[Character(i)] = make_pair(start[i], start[i + 1]);
    }
    queue<state *> qs;
    qs.push(st);
    int32_t hop = 0;

    // bug
    int64_t *s = nullptr;
    int64_t *intersection = nullptr;
    while (!qs.empty() && hop <= 100) {
        auto size = qs.size();
        for (size_t i = 0; i < size; ++i) {
            // 得到这个状态的当前搜索区间的hop跳字符集
            auto state_now = qs.front();
            if (state_now->id != re.end) {
                s = distinct_interval_aplphabet(state_now, hop);
                if (s) {
                    intersection = bit_and(s, re.Bitarray[state_now->id]);
                    auto sum = popcnt4(intersection);
                    if (sum) {
                        for (size_t j = 0; j < arrsize; j++) {
                            while (popcnt(intersection[j])) {
                                char x = lzcnt(intersection[j]);
                                intersection[j] &= Regular::table1[static_cast<int>(x)];
                                x += j << 6;
                                auto des_id = re.Transition_Matrix[state_now->id][x];
                                auto des = new state(des_id, state_now->m[x].first, state_now->m[x].second);
                                qs.push(des);
                                statenum++;
                            }
                        }
                        maxstatenum = max(maxstatenum, statenum);
                    }

                    delete[] s;
                    delete[] intersection;
                }
                // if (intersection) delete[] intersection;
            } else {
                store_ret(state_now, hop);
            }
            qs.pop();
            delete state_now;
            statenum--;
        }
        hop++;
    }
    test_regular();
    end = chrono::high_resolution_clock::now();
    auto diff = chrono::duration_cast<std::chrono::microseconds>(end - be);
    if (qs.empty())
        std::cout << "all find" << std::endl;
    else
        std::cout << "just find length less equal: " << hop << std::endl;
    std::cout << "队列最大状态数为: " << maxstatenum << std::endl;
    std::cout << "正则表达式为：" << regular_expression << std::endl;
    std::cout << "解析正则时间 " << diff1.count() << " us" << std::endl;
    cout << "查询时间: " << diff.count() << "us" << endl;
}

i64 CSA::newPhi_list(i64 i) {
    i64 l = 0;
    i64 r = this->alphabetsize;
    i64 m = 0;
    while (l < r) {
        m = (l + r) / 2;
        if (start[m] <= i)
            l = m + 1;
        else
            r = m;
    }
    return r - 1;
}

void CSA::output_re() {
    int64_t intersize = regular_ret.size();
    std::ofstream outputfile("/home/zsh/Desktop/GeCSA/Gtest/GeCSA.txt");
    for (auto i = 0; i < intersize; ++i) {
        // 获取左右区间
        // auto begin = get<0>(regular_ret[i]);
        // auto end = get<1>(regular_ret[i]);
        // auto hop = get<2>(regular_ret[i]);
        auto ret = ExtractRank(regular_ret[i].first, regular_ret[i].second);
        outputfile << ret << endl;
        outputfile.flush();
    }
    outputfile.close();
}

bool CSA::FindBoundary(state *s, int32_t hop, char16_t c) {
    int64_t left = s->begin, right = s->end;
    int64_t mid = (left + right) / 2;
    auto x = static_cast<char>(Character(newPhi_list(GethopRank(mid, hop))));
    int64_t leftboundary = 0, rightboundary = 0;
    // 定左边界
    while (left != right) {
        mid = (left + right) / 2;
        x = Character(newPhi_list(GethopRank(mid, hop)));
        if (x < c)
            left = mid + 1;
        else if (x > c)
            right = mid;
        else
            right = mid;
    }
    x = static_cast<char>(Character(newPhi_list(GethopRank(left, hop))));
    leftboundary = x == c ? left : -1;
    if (leftboundary >= 0) {
        left = s->begin, right = s->end;
        while (left != right) {
            mid = (left + right) / 2;
            x = Character(newPhi_list(GethopRank(mid, hop)));
            if (x < c)
                left = mid + 1;
            else if (x > c)
                right = mid;
            else
                left = mid + 1;
        }
        rightboundary = left;
        s->m[c] = make_pair(leftboundary, rightboundary); // 前闭后开区间
        return true;
    } else
        return false;
}

inline int64_t CSA::GethopRank(int64_t rank, int32_t hop) {
    for (auto i = 0; i < hop; ++i) {
        rank = Phi0->GetValue(rank);
    }
    return rank;
}

inline void CSA::store_ret(state *s, int32_t hop) { regular_ret.push_back({s->begin, hop}); }

string CSA::ExtractRank(int64_t r, int32_t hop) {
    string ret = "";

    for (auto i = 0; i < hop; ++i) {
        auto baserank = newPhi_list(r);
        ret += static_cast<char>(Character(baserank));
        r = Phi0->GetValue(r);
    }
    return ret;
}

void CSA::test_regular() {
    int64_t intersize = regular_ret.size();
    if (!intersize) cout << "no such pattern" << endl;
    // int64_t sum = 0;
    for (auto i = 0; i < intersize; ++i) {
        // 获取左右区间
        // auto begin = get<0>(regular_ret[i]);
        // auto end = get<1>(regular_ret[i]);
        // auto hop = get<2>(regular_ret[i]);
        auto ret = ExtractRank(regular_ret[i].first, regular_ret[i].second);
        cout << "第" << i << "个查询结果为：" << ret << endl;
        // sum += end - begin;
        // for (auto j = begin; j < end; ++j) {
        //     auto ret = ExtractRank(j, hop);
        //     cout << ret << endl;
        // }
    }
    // cout << "总的匹配行数为：" << sum << endl;
}
