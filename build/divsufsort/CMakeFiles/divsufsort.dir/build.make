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
include divsufsort/CMakeFiles/divsufsort.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include divsufsort/CMakeFiles/divsufsort.dir/compiler_depend.make

# Include the progress variables for this target.
include divsufsort/CMakeFiles/divsufsort.dir/progress.make

# Include the compile flags for this target's objects.
include divsufsort/CMakeFiles/divsufsort.dir/flags.make

divsufsort/CMakeFiles/divsufsort.dir/divsufsort.c.o: divsufsort/CMakeFiles/divsufsort.dir/flags.make
divsufsort/CMakeFiles/divsufsort.dir/divsufsort.c.o: ../divsufsort/divsufsort.c
divsufsort/CMakeFiles/divsufsort.dir/divsufsort.c.o: divsufsort/CMakeFiles/divsufsort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object divsufsort/CMakeFiles/divsufsort.dir/divsufsort.c.o"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT divsufsort/CMakeFiles/divsufsort.dir/divsufsort.c.o -MF CMakeFiles/divsufsort.dir/divsufsort.c.o.d -o CMakeFiles/divsufsort.dir/divsufsort.c.o -c /home/zsh/Desktop/GeCSA/divsufsort/divsufsort.c

divsufsort/CMakeFiles/divsufsort.dir/divsufsort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/divsufsort.dir/divsufsort.c.i"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zsh/Desktop/GeCSA/divsufsort/divsufsort.c > CMakeFiles/divsufsort.dir/divsufsort.c.i

divsufsort/CMakeFiles/divsufsort.dir/divsufsort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/divsufsort.dir/divsufsort.c.s"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zsh/Desktop/GeCSA/divsufsort/divsufsort.c -o CMakeFiles/divsufsort.dir/divsufsort.c.s

divsufsort/CMakeFiles/divsufsort.dir/sssort.c.o: divsufsort/CMakeFiles/divsufsort.dir/flags.make
divsufsort/CMakeFiles/divsufsort.dir/sssort.c.o: ../divsufsort/sssort.c
divsufsort/CMakeFiles/divsufsort.dir/sssort.c.o: divsufsort/CMakeFiles/divsufsort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object divsufsort/CMakeFiles/divsufsort.dir/sssort.c.o"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT divsufsort/CMakeFiles/divsufsort.dir/sssort.c.o -MF CMakeFiles/divsufsort.dir/sssort.c.o.d -o CMakeFiles/divsufsort.dir/sssort.c.o -c /home/zsh/Desktop/GeCSA/divsufsort/sssort.c

divsufsort/CMakeFiles/divsufsort.dir/sssort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/divsufsort.dir/sssort.c.i"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zsh/Desktop/GeCSA/divsufsort/sssort.c > CMakeFiles/divsufsort.dir/sssort.c.i

divsufsort/CMakeFiles/divsufsort.dir/sssort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/divsufsort.dir/sssort.c.s"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zsh/Desktop/GeCSA/divsufsort/sssort.c -o CMakeFiles/divsufsort.dir/sssort.c.s

divsufsort/CMakeFiles/divsufsort.dir/trsort.c.o: divsufsort/CMakeFiles/divsufsort.dir/flags.make
divsufsort/CMakeFiles/divsufsort.dir/trsort.c.o: ../divsufsort/trsort.c
divsufsort/CMakeFiles/divsufsort.dir/trsort.c.o: divsufsort/CMakeFiles/divsufsort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object divsufsort/CMakeFiles/divsufsort.dir/trsort.c.o"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT divsufsort/CMakeFiles/divsufsort.dir/trsort.c.o -MF CMakeFiles/divsufsort.dir/trsort.c.o.d -o CMakeFiles/divsufsort.dir/trsort.c.o -c /home/zsh/Desktop/GeCSA/divsufsort/trsort.c

divsufsort/CMakeFiles/divsufsort.dir/trsort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/divsufsort.dir/trsort.c.i"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zsh/Desktop/GeCSA/divsufsort/trsort.c > CMakeFiles/divsufsort.dir/trsort.c.i

divsufsort/CMakeFiles/divsufsort.dir/trsort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/divsufsort.dir/trsort.c.s"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zsh/Desktop/GeCSA/divsufsort/trsort.c -o CMakeFiles/divsufsort.dir/trsort.c.s

divsufsort/CMakeFiles/divsufsort.dir/utils.c.o: divsufsort/CMakeFiles/divsufsort.dir/flags.make
divsufsort/CMakeFiles/divsufsort.dir/utils.c.o: ../divsufsort/utils.c
divsufsort/CMakeFiles/divsufsort.dir/utils.c.o: divsufsort/CMakeFiles/divsufsort.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object divsufsort/CMakeFiles/divsufsort.dir/utils.c.o"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT divsufsort/CMakeFiles/divsufsort.dir/utils.c.o -MF CMakeFiles/divsufsort.dir/utils.c.o.d -o CMakeFiles/divsufsort.dir/utils.c.o -c /home/zsh/Desktop/GeCSA/divsufsort/utils.c

divsufsort/CMakeFiles/divsufsort.dir/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/divsufsort.dir/utils.c.i"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zsh/Desktop/GeCSA/divsufsort/utils.c > CMakeFiles/divsufsort.dir/utils.c.i

divsufsort/CMakeFiles/divsufsort.dir/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/divsufsort.dir/utils.c.s"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zsh/Desktop/GeCSA/divsufsort/utils.c -o CMakeFiles/divsufsort.dir/utils.c.s

# Object files for target divsufsort
divsufsort_OBJECTS = \
"CMakeFiles/divsufsort.dir/divsufsort.c.o" \
"CMakeFiles/divsufsort.dir/sssort.c.o" \
"CMakeFiles/divsufsort.dir/trsort.c.o" \
"CMakeFiles/divsufsort.dir/utils.c.o"

# External object files for target divsufsort
divsufsort_EXTERNAL_OBJECTS =

divsufsort/libdivsufsort.a: divsufsort/CMakeFiles/divsufsort.dir/divsufsort.c.o
divsufsort/libdivsufsort.a: divsufsort/CMakeFiles/divsufsort.dir/sssort.c.o
divsufsort/libdivsufsort.a: divsufsort/CMakeFiles/divsufsort.dir/trsort.c.o
divsufsort/libdivsufsort.a: divsufsort/CMakeFiles/divsufsort.dir/utils.c.o
divsufsort/libdivsufsort.a: divsufsort/CMakeFiles/divsufsort.dir/build.make
divsufsort/libdivsufsort.a: divsufsort/CMakeFiles/divsufsort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libdivsufsort.a"
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && $(CMAKE_COMMAND) -P CMakeFiles/divsufsort.dir/cmake_clean_target.cmake
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/divsufsort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
divsufsort/CMakeFiles/divsufsort.dir/build: divsufsort/libdivsufsort.a
.PHONY : divsufsort/CMakeFiles/divsufsort.dir/build

divsufsort/CMakeFiles/divsufsort.dir/clean:
	cd /home/zsh/Desktop/GeCSA/build/divsufsort && $(CMAKE_COMMAND) -P CMakeFiles/divsufsort.dir/cmake_clean.cmake
.PHONY : divsufsort/CMakeFiles/divsufsort.dir/clean

divsufsort/CMakeFiles/divsufsort.dir/depend:
	cd /home/zsh/Desktop/GeCSA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zsh/Desktop/GeCSA /home/zsh/Desktop/GeCSA/divsufsort /home/zsh/Desktop/GeCSA/build /home/zsh/Desktop/GeCSA/build/divsufsort /home/zsh/Desktop/GeCSA/build/divsufsort/CMakeFiles/divsufsort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : divsufsort/CMakeFiles/divsufsort.dir/depend

