#include "regular_analysis.h"

#include <iostream>

#include "../simd/simd.h"

namespace Regular {
static void event_handler(BREParser::event e_, ATMPL::any msg_) {
    switch (e_) {
#ifdef Debug
        case BREParser::event::NFA_complete:
            ATMPL::any::cast<FA>(msg_).print("NFA.dot");
            break;
        case BREParser::event::NFA_determinated:
            ATMPL::any::cast<FA>(msg_).print("DFA.dot");
            break;
        case BREParser::event::DFA_minimized:
            ATMPL::any::cast<FA>(msg_).print("min_DFA.dot");
            break;
#endif
    }
}

Parser::Parser(const char *regular_expression) {
    using std::vector;
    std::string s(regular_expression);
    std::cout << regular_expression << std::endl;
    BREParser bre_parser;
    bre_parser.register_event(BREParser::event::NFA_complete, event_handler);

    bre_parser.register_event(BREParser::event::NFA_determinated, event_handler);

    bre_parser.register_event(BREParser::event::DFA_minimized, event_handler);

    auto fa = bre_parser.parse(s);

    int32_t minStateNum = INT32_MAX;
    this->State_num = 0;

    for (auto &i : fa.ato_.graph_) {
        auto number = i.state_;
        State_num++;
        minStateNum = std::min(minStateNum, number);
    }
    minStateNum -= 1;

    this->Transition_Matrix = vector<vector<int32_t>>(State_num + 1, vector<int32_t>(UINT8_MAX + 1, 0));

    this->start = fa.ato_.cur_state_ - minStateNum;
    this->end = 1;
    for (auto &state : fa.ato_.graph_) {
        auto number = state.state_ - minStateNum;
        // std::cout << number << std::endl;
        for (auto i = state.directed_->begin(); i != state.directed_->end(); ++i) {
            auto des_state = i->second.state_ - minStateNum;
            auto c = i->first;
            Transition_Matrix[number][c] = des_state;
        }
    }
    // 初始化转移字符集合
    Bitarray = vector<int64_t *>(State_num + 1, nullptr);
    for (size_t i = 1; i < State_num + 1; ++i) {
        Bitarray[i] = new int64_t[arrsize];
        memset(Bitarray[i], 0, arrsize * sizeof(int64_t));
        for (char16_t j = 0; j <= UINT8_MAX; ++j) {
            if (Transition_Matrix[i][j]) {
                Bitarray[i][j >> 6] |= table2[j % 64];
            }
        }
    }
    // Show_TransMatrix();
}

void Parser::Show_TransMatrix() {
    using std::cout;
    using std::endl;
    auto count = this->Transition_Matrix.size();
    cout << "起始状态为" << start << endl;
    for (size_t i = 1; i < count; ++i) {
        for (char16_t j = 0; j < UINT8_MAX; ++j) {
            if (Transition_Matrix[i][j])
                cout << "状态：" << i << " 经字符 " << static_cast<char>(j) << "转移到" << Transition_Matrix[i][j]
                     << endl;
        }
    }

    // for (size_t i = 1; i < count; ++i) {
    //     cout << "状态 " << i << "的转移字符集为：";
    //     for (auto j = Salphabetset[i].begin(); j != Salphabetset[i].end(); ++j) {
    //         cout << *j << " ";
    //     }
    //     cout << endl;
    // }
    for (size_t i = 0; i < count; ++i) {
        if (!Bitarray[i]) {
            continue;
        }

        auto p = (int64_t *)malloc(arrsize * sizeof(int64_t));
        memcpy(p, Bitarray[i], arrsize * sizeof(int64_t));
        cout << "状态" << i << "的转移字符为:";
        for (size_t j = 0; j < arrsize; ++j) {
            while (p && simd::popcnt(p[j])) {
                char c = simd::lzcnt(p[j]);
                p[j] &= table1[c];
                c += j << 6;
                cout << c << " ";
            }
        }
        cout << endl;
    }

    cout << "终止状态为：" << this->end << endl;
}

Parser::~Parser() {
    for (size_t i = 0; i < Bitarray.size(); i++) {
        if (Bitarray[i]) delete[] Bitarray[i];
    }
}
} // namespace Regular