# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zsh/Desktop/GeCSA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zsh/Desktop/GeCSA/build

# Include any dependencies generated for this target.
include Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/compiler_depend.make

# Include the progress variables for this target.
include Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/progress.make

# Include the compile flags for this target's objects.
include Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/flags.make

Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/BREParser.cpp.o: Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/flags.make
Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/BREParser.cpp.o: ../Regular/DFA_analysis/Parser/BREParser.cpp
Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/BREParser.cpp.o: Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/BREParser.cpp.o"
	cd /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis/Parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/BREParser.cpp.o -MF CMakeFiles/Parser.dir/BREParser.cpp.o.d -o CMakeFiles/Parser.dir/BREParser.cpp.o -c /home/zsh/Desktop/GeCSA/Regular/DFA_analysis/Parser/BREParser.cpp

Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/BREParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Parser.dir/BREParser.cpp.i"
	cd /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis/Parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zsh/Desktop/GeCSA/Regular/DFA_analysis/Parser/BREParser.cpp > CMakeFiles/Parser.dir/BREParser.cpp.i

Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/BREParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Parser.dir/BREParser.cpp.s"
	cd /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis/Parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zsh/Desktop/GeCSA/Regular/DFA_analysis/Parser/BREParser.cpp -o CMakeFiles/Parser.dir/BREParser.cpp.s

Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/__/Automata/FA.cpp.o: Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/flags.make
Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/__/Automata/FA.cpp.o: ../Regular/DFA_analysis/Automata/FA.cpp
Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/__/Automata/FA.cpp.o: Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/__/Automata/FA.cpp.o"
	cd /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis/Parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/__/Automata/FA.cpp.o -MF CMakeFiles/Parser.dir/__/Automata/FA.cpp.o.d -o CMakeFiles/Parser.dir/__/Automata/FA.cpp.o -c /home/zsh/Desktop/GeCSA/Regular/DFA_analysis/Automata/FA.cpp

Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/__/Automata/FA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Parser.dir/__/Automata/FA.cpp.i"
	cd /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis/Parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zsh/Desktop/GeCSA/Regular/DFA_analysis/Automata/FA.cpp > CMakeFiles/Parser.dir/__/Automata/FA.cpp.i

Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/__/Automata/FA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Parser.dir/__/Automata/FA.cpp.s"
	cd /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis/Parser && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zsh/Desktop/GeCSA/Regular/DFA_analysis/Automata/FA.cpp -o CMakeFiles/Parser.dir/__/Automata/FA.cpp.s

# Object files for target Parser
Parser_OBJECTS = \
"CMakeFiles/Parser.dir/BREParser.cpp.o" \
"CMakeFiles/Parser.dir/__/Automata/FA.cpp.o"

# External object files for target Parser
Parser_EXTERNAL_OBJECTS =

Regular/DFA_analysis/Parser/libParser.a: Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/BREParser.cpp.o
Regular/DFA_analysis/Parser/libParser.a: Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/__/Automata/FA.cpp.o
Regular/DFA_analysis/Parser/libParser.a: Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/build.make
Regular/DFA_analysis/Parser/libParser.a: Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libParser.a"
	cd /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis/Parser && $(CMAKE_COMMAND) -P CMakeFiles/Parser.dir/cmake_clean_target.cmake
	cd /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis/Parser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/build: Regular/DFA_analysis/Parser/libParser.a
.PHONY : Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/build

Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/clean:
	cd /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis/Parser && $(CMAKE_COMMAND) -P CMakeFiles/Parser.dir/cmake_clean.cmake
.PHONY : Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/clean

Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/depend:
	cd /home/zsh/Desktop/GeCSA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zsh/Desktop/GeCSA /home/zsh/Desktop/GeCSA/Regular/DFA_analysis/Parser /home/zsh/Desktop/GeCSA/build /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis/Parser /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Regular/DFA_analysis/Parser/CMakeFiles/Parser.dir/depend

