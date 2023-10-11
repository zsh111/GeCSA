add_subdirectory(Parser)
add_subdirectory(util)
add_subdirectory(Automata)

add_library(DFA_analysis)

target_link_libraries(DFA_analysis util Automata Parser)

# target_link_libraries()