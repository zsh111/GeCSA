# file(GLOB_RECURSE source CONFIGURE_DEPENDS )

# set(CMAKE_CXX_FLAGS "-O3 -DHAVE_CONFIG_H -DBUILD_DIVSUFSORT64=1")

# # add_executable(divsufsort ${src})
# add_library(divsufsort STATIC ${source})

# 添加源代码文件
set(SOURCES
    divsufsort.c
    sssort.c
    trsort.c
    utils.c
)

# 生成静态库
add_library(divsufsort STATIC ${SOURCES})

# 设置编译选项
target_compile_options(divsufsort PUBLIC -O3 -Wall -DHAVE_CONFIG_H -DBUILD_DIVSUFSORT64)

# target_include_directories(divsufsort PUBLIC ./*.h)