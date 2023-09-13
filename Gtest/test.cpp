#include <gtest/gtest.h>

#include <algorithm>
#include <chrono>
#include <fstream>
#include <iostream>
#include <regex>
#include <string>
#include <unordered_map>
#include <unordered_set>

TEST(Regular, test) {
    std::ifstream file("/home/zsh/Desktop/GeCSA/Data/howto"); // 替换为要读取的文本文件路径
    std::ifstream gecsafile("/home/zsh/Desktop/GeCSA/Gtest/GeCSA.txt");
    if (!file) {
        std::cout << "无法打开文件." << std::endl;
        file.close();
        exit(0);
    }
    std::string line;
    std::regex pattern(
        "(1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31)/"
        "(1|2|3|4|5|6|7|8|9|10|11|12)/"
        "(0|1|2|3|4|5|6|7|8|9)(0|1|2|3|4|5|6|7|8|9)(0|1|2|3|4|5|6|7|8|9)(0|1|2|3|4|5|6|7|8|9)"); // 替换为您的正则表达式模式
    std::string content((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
    std::unordered_map<std::string, int> m;
    auto begin = std::sregex_iterator(content.begin(), content.end(), pattern);
    auto end = std::sregex_iterator();

    auto start = std::chrono::high_resolution_clock::now();
    for (auto it = begin; it != end; ++it) {
        m[it->str()] = 1;
    }
    auto en = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(en - start);
    std::cout << "时间为：" << duration.count() << "us" << std::endl;
    int num = 0;
    for (auto v : m) {
        // std::cout << v.first << std::endl;
        num++;
    }
    std::cout << num << std::endl;
    while (std::getline(gecsafile, line)) {
        m[line]--;
    }
    for (auto v : m) {
        // EXPECT_EQ(v.second, 0);
        if (v.second > 0) std::cout << "标准库结果为：" << v.first << std::endl;
    }

    gecsafile.close();
    file.close();
}