#include <iostream>

#include "regular_analysis.h"

int main() {
    using namespace Regular;

    const char *s = "AT(ATC|T)(G|CG)*CT";

    auto bp = BackParser(s);

    return 0;
}
