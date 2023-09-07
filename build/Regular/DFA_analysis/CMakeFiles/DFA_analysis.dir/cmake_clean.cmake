file(REMOVE_RECURSE
  "libDFA_analysis.a"
  "libDFA_analysis.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/DFA_analysis.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
