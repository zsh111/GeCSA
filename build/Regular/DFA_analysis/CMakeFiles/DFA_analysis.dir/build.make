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
include Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/compiler_depend.make

# Include the progress variables for this target.
include Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/progress.make

# Include the compile flags for this target's objects.
include Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/flags.make

# Object files for target DFA_analysis
DFA_analysis_OBJECTS =

# External object files for target DFA_analysis
DFA_analysis_EXTERNAL_OBJECTS =

Regular/DFA_analysis/libDFA_analysis.a: Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/build.make
Regular/DFA_analysis/libDFA_analysis.a: Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libDFA_analysis.a"
	cd /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis && $(CMAKE_COMMAND) -P CMakeFiles/DFA_analysis.dir/cmake_clean_target.cmake
	cd /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DFA_analysis.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/build: Regular/DFA_analysis/libDFA_analysis.a
.PHONY : Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/build

Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/clean:
	cd /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis && $(CMAKE_COMMAND) -P CMakeFiles/DFA_analysis.dir/cmake_clean.cmake
.PHONY : Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/clean

Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/depend:
	cd /home/zsh/Desktop/GeCSA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zsh/Desktop/GeCSA /home/zsh/Desktop/GeCSA/Regular/DFA_analysis /home/zsh/Desktop/GeCSA/build /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis /home/zsh/Desktop/GeCSA/build/Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Regular/DFA_analysis/CMakeFiles/DFA_analysis.dir/depend

