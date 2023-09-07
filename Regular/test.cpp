#include "regular_analysis.h"
#include <iostream>

int main()
{
    using namespace Regular;

    const char *s = "AT(ATC|T)(G|CG)*CT";

    Parser ps(s);

    ps.Show_TransMatrix();

    return 0;
}
