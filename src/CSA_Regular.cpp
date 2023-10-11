#include <cstddef>
#include <cstdint>
#include <cstring>
#include <iostream>
#include <ostream>
#include <stack>
#include <unordered_map>
#include <utility>

#include "../Regular/regular_analysis.h"
#include "../include/CSA.h"
#include "../include/timer.h"
#include "../simd/simd.h"

/********************正则相关函数**********************/

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

void CSA::output_re(const char *path) {
    int64_t intersize = regular_ret.size();
    std::ofstream outputfile(path);
    for (auto i = 0; i < intersize; ++i) {
        // 获取左右区间
        // auto begin = get<0>(regular_ret[i]);
        // auto end = get<1>(regular_ret[i]);
        // auto hop = get<2>(regular_ret[i]);
        auto ret = ExtractRank(regular_ret[i].first, regular_ret[i].second);
        outputfile << ret << endl;
        // cout << "第" << i + 1 << "个Pattern为: " << ret << endl;
        outputfile.flush();
    }
    outputfile.close();
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
        auto ret = ExtractRank(regular_ret[i].first, regular_ret[i].second);
        cout << "第" << i << "个查询结果为：" << ret << endl;
    }
    // cout << "总的匹配行数为：" << sum << endl;
}

// left~right为连续区间delta=1
auto CSA::FindBoundary(int64_t left, int64_t right, int64_t PreLeft, int64_t PreRight) -> pair<int64_t, int64_t> {
    int64_t RetLeft = PreLeft, RetRight = PreRight;
    int64_t ret1 = -1, ret2 = -1;
    int64_t nextRank = 0;
    while (RetLeft < RetRight) {
        auto mid = (RetLeft + RetRight) >> 1;
        nextRank = Phi0->GetValue(mid);
        if (nextRank >= left && nextRank <= right)
            RetRight = mid;
        else if (nextRank < left)
            RetLeft = mid + 1;
        else
            RetRight = mid;
    }
    nextRank = Phi0->GetValue(RetLeft);

    // cout << Phi0->GetValue(RetLeft) << endl;
    // cout << Phi0->GetValue(RetLeft - 1) << endl;
    if (nextRank >= left && nextRank <= right)
        ret1 = RetLeft;
    else
        return {ret1, ret2};
    // cout << Phi0->GetValue(ret1) << endl;
    // cout << Phi0->GetValue(ret1 - 1) << endl;
    RetLeft = PreLeft, RetRight = PreRight;
    while (RetLeft < RetRight) {
        auto mid = (RetLeft + RetRight) >> 1;
        nextRank = Phi0->GetValue(mid);
        if (nextRank >= left && nextRank <= right)
            RetLeft = mid + 1;
        else if (nextRank < left)
            RetLeft = mid + 1;
        else
            RetRight = mid;
    }
    ret2 = RetLeft - 1;
    // cout << Phi0->GetValue(ret2) << endl;
    // cout << Phi0->GetValue(ret2 + 1) << endl;
    return {ret1, ret2};
}

void CSA::regular_expression_search(const char *regular_expression) {
    timer::timer tr;
    tr.reset();
    Regular::BackParser re(regular_expression);
    auto time1 = tr.timing();
    std::cout << "解析时间为： " << time1 << " us" << std::endl;
    queue<state *> StateQueue;
    unordered_map<i64, pair<i64, i64>> SAMap;
    for (int i = 0; i < alphabetsize; ++i) {
        SAMap[incode[i]] = make_pair(start[i], start[i + 1] - 1);
    }
    auto InitialID = re.start;
    auto EndID = re.end;
    auto InitialState = new state(InitialID, start[0], start[alphabetsize]);
    StateQueue.push(InitialState);
    int32_t patternlen = 0;
    const int32_t maxpatterlen = 100;
    tr.reset();
    while (!StateQueue.empty() && patternlen < maxpatterlen) {
        auto size = StateQueue.size();
        for (size_t i = 0; i < size; ++i) {
            auto State = StateQueue.front();
            if (re.Bitarray[State->id]) {
                auto TranChar = new int64_t[arrsize]; //转移字符
                memcpy(TranChar, re.Bitarray[State->id], arrsize * sizeof(int64_t));
                for (size_t j = 0; j < arrsize; ++j) {
                    while (TranChar[j]) {
                        char x = simd::lzcnt(TranChar[j]);
                        TranChar[j] &= Regular::table1[static_cast<int>(x)];
                        x += j << 6;
                        // cout << "这是一个字符： " << x << endl;
                        auto TranStateNum = re.TransitionMatrix[State->id][x]; //表示目标状态
                        while (TranStateNum) {
                            char DesID = simd::lzcnt(TranStateNum);
                            TranStateNum &= Regular::table1[static_cast<int>(DesID)];
                            auto ret = FindBoundary(State->begin, State->end, SAMap[x].first, SAMap[x].second);
                            if (ret.first < 0) continue;
                            auto NewState = new state(static_cast<int32_t>(DesID), ret.first, ret.second);
                            StateQueue.push(NewState);
                        }
                    }
                }
                delete[] TranChar;
            }
            if (State->id == EndID) {
                store_ret(State, patternlen);
            }
            StateQueue.pop();
            delete State;
        }
        patternlen++;
    }
    auto time2 = tr.timing();
    std::cout << "搜索时间为： " << time2 << " us" << std::endl;
    std::cout << "总时间为： " << time2 + time1 << "us" << std::endl;
}

void CSA::DFSReSearch(const char *regular_expression) {
    timer::timer tr;
    tr.reset();
    Regular::BackParser re(regular_expression);
    std::cout << "解析时间为： " << tr.timing() << " us" << std::endl;
    unordered_map<i64, pair<i64, i64>> SAMap;
    for (int i = 0; i < alphabetsize; ++i) {
        SAMap[incode[i]] = make_pair(start[i], start[i + 1] - 1);
    }

    stack<pair<state *, int64_t *>> StateStack;
    auto InitialID = re.start;
    auto EndID = re.end;
    //这是分界线

    auto InitialState = new state(InitialID, start[0], start[alphabetsize]);
    auto pointer = new int64_t[arrsize];
    memcpy(pointer, re.Bitarray[InitialID], arrsize * sizeof(int64_t));
    StateStack.push({InitialState, pointer});

    function<void()> dfs = [&]() {
        if (StateStack.empty()) {
            return;
        }
        auto Cur = StateStack.top();
        auto curstate = Cur.first;
        auto curCharArray = Cur.second;

        if (curstate->id == EndID) {
            store_ret(curstate, StateStack.size() - 1);
            // cout << "当前id： " << curstate->id << endl;
        } else {
            for (int i = 0; i < arrsize; ++i) {
                while (curCharArray[i]) {
                    auto offset = 63 - simd::lzcnt(curCharArray[i]);
                    char tranchar = i * 64 + offset;
                    // cout << "当前ID为： " << curstate->id << " 当前转移字符为： " << tranchar << endl;
                    curCharArray[i] &= Regular::table1[offset];
                    auto ret =
                        FindBoundary(curstate->begin, curstate->end, SAMap[tranchar].first, SAMap[tranchar].second);
                    if (ret.first < 0) continue;
                    auto curID = curstate->id;
                    auto DesState = re.TransitionMatrix[curID][tranchar];
                    while (DesState) {
                        auto desID = 63 - simd::lzcnt(DesState);
                        DesState &= Regular::table1[static_cast<int>(desID)];
                        pointer = new int64_t[arrsize];
                        memcpy(pointer, re.Bitarray[desID], arrsize * sizeof(int64_t));
                        auto desState = new state(desID, ret.first, ret.second);
                        StateStack.push({desState, pointer});
                        dfs();
                    }
                }
            }
        }
        StateStack.pop();
        delete curstate;
        delete[] curCharArray;
        return;
    };
    tr.reset();
    dfs();
    std::cout << "搜索时间为： " << tr.timing() << " us" << std::endl;
}