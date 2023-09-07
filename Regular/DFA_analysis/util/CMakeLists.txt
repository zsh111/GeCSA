file(GLOB util_header "${CMAKE_CURRENT_SOURCE_DIR}/Set.h")
add_library(util INTERFACE)
target_sources(util INTERFACE ${util_header})
