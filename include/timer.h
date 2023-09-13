#ifndef TIMER_H
#define TIMER_H
#pragma once
#include <chrono>
#include <iostream>
namespace timer {
class timer {
public:
    timer() = default;
    ~timer() = default;
    void reset() { start = std::chrono::high_resolution_clock::now(); }
    void timing() {
        end = std::chrono::high_resolution_clock::now();
        auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);
        std::cout << duration.count() << " us"
                  << "\n";
    }

private:
    std::chrono::_V2::system_clock::time_point start;
    std::chrono::_V2::system_clock::time_point end;
};
} // namespace timer

#endif