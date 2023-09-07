
file(GLOB Automata_header "${CMAKE_CURRENT_SOURCE_DIR}/Automata.h")

file(GLOB util_header "${CMAKE_CURRENT_SOURCE_DIR}/../util/Set.h")

file(GLOB third_part "${CMAKE_CURRENT_SOURCE_DIR}/../third_part/ATMPL/optional/optional.hpp")

add_library(Automata INTERFACE)

target_sources(Automata INTERFACE ${Automata_header} ${util_header} ${third_part})