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
include CMakeFiles/gencsa.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/gencsa.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/gencsa.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gencsa.dir/flags.make

CMakeFiles/gencsa.dir/Gen_CSA.cpp.o: CMakeFiles/gencsa.dir/flags.make
CMakeFiles/gencsa.dir/Gen_CSA.cpp.o: ../Gen_CSA.cpp
CMakeFiles/gencsa.dir/Gen_CSA.cpp.o: CMakeFiles/gencsa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gencsa.dir/Gen_CSA.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gencsa.dir/Gen_CSA.cpp.o -MF CMakeFiles/gencsa.dir/Gen_CSA.cpp.o.d -o CMakeFiles/gencsa.dir/Gen_CSA.cpp.o -c /home/zsh/Desktop/GeCSA/Gen_CSA.cpp

CMakeFiles/gencsa.dir/Gen_CSA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gencsa.dir/Gen_CSA.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zsh/Desktop/GeCSA/Gen_CSA.cpp > CMakeFiles/gencsa.dir/Gen_CSA.cpp.i

CMakeFiles/gencsa.dir/Gen_CSA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gencsa.dir/Gen_CSA.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zsh/Desktop/GeCSA/Gen_CSA.cpp -o CMakeFiles/gencsa.dir/Gen_CSA.cpp.s

CMakeFiles/gencsa.dir/src/CSA.cpp.o: CMakeFiles/gencsa.dir/flags.make
CMakeFiles/gencsa.dir/src/CSA.cpp.o: ../src/CSA.cpp
CMakeFiles/gencsa.dir/src/CSA.cpp.o: CMakeFiles/gencsa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gencsa.dir/src/CSA.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gencsa.dir/src/CSA.cpp.o -MF CMakeFiles/gencsa.dir/src/CSA.cpp.o.d -o CMakeFiles/gencsa.dir/src/CSA.cpp.o -c /home/zsh/Desktop/GeCSA/src/CSA.cpp

CMakeFiles/gencsa.dir/src/CSA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gencsa.dir/src/CSA.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zsh/Desktop/GeCSA/src/CSA.cpp > CMakeFiles/gencsa.dir/src/CSA.cpp.i

CMakeFiles/gencsa.dir/src/CSA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gencsa.dir/src/CSA.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zsh/Desktop/GeCSA/src/CSA.cpp -o CMakeFiles/gencsa.dir/src/CSA.cpp.s

CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.o: CMakeFiles/gencsa.dir/flags.make
CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.o: ../src/CSA_Regular.cpp
CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.o: CMakeFiles/gencsa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.o -MF CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.o.d -o CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.o -c /home/zsh/Desktop/GeCSA/src/CSA_Regular.cpp

CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zsh/Desktop/GeCSA/src/CSA_Regular.cpp > CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.i

CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zsh/Desktop/GeCSA/src/CSA_Regular.cpp -o CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.s

CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.o: CMakeFiles/gencsa.dir/flags.make
CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.o: ../src/Gen_Phi.cpp
CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.o: CMakeFiles/gencsa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.o -MF CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.o.d -o CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.o -c /home/zsh/Desktop/GeCSA/src/Gen_Phi.cpp

CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zsh/Desktop/GeCSA/src/Gen_Phi.cpp > CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.i

CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zsh/Desktop/GeCSA/src/Gen_Phi.cpp -o CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.s

CMakeFiles/gencsa.dir/src/InArray.cpp.o: CMakeFiles/gencsa.dir/flags.make
CMakeFiles/gencsa.dir/src/InArray.cpp.o: ../src/InArray.cpp
CMakeFiles/gencsa.dir/src/InArray.cpp.o: CMakeFiles/gencsa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/gencsa.dir/src/InArray.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gencsa.dir/src/InArray.cpp.o -MF CMakeFiles/gencsa.dir/src/InArray.cpp.o.d -o CMakeFiles/gencsa.dir/src/InArray.cpp.o -c /home/zsh/Desktop/GeCSA/src/InArray.cpp

CMakeFiles/gencsa.dir/src/InArray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gencsa.dir/src/InArray.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zsh/Desktop/GeCSA/src/InArray.cpp > CMakeFiles/gencsa.dir/src/InArray.cpp.i

CMakeFiles/gencsa.dir/src/InArray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gencsa.dir/src/InArray.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zsh/Desktop/GeCSA/src/InArray.cpp -o CMakeFiles/gencsa.dir/src/InArray.cpp.s

CMakeFiles/gencsa.dir/src/Phi.cpp.o: CMakeFiles/gencsa.dir/flags.make
CMakeFiles/gencsa.dir/src/Phi.cpp.o: ../src/Phi.cpp
CMakeFiles/gencsa.dir/src/Phi.cpp.o: CMakeFiles/gencsa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/gencsa.dir/src/Phi.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gencsa.dir/src/Phi.cpp.o -MF CMakeFiles/gencsa.dir/src/Phi.cpp.o.d -o CMakeFiles/gencsa.dir/src/Phi.cpp.o -c /home/zsh/Desktop/GeCSA/src/Phi.cpp

CMakeFiles/gencsa.dir/src/Phi.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gencsa.dir/src/Phi.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zsh/Desktop/GeCSA/src/Phi.cpp > CMakeFiles/gencsa.dir/src/Phi.cpp.i

CMakeFiles/gencsa.dir/src/Phi.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gencsa.dir/src/Phi.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zsh/Desktop/GeCSA/src/Phi.cpp -o CMakeFiles/gencsa.dir/src/Phi.cpp.s

CMakeFiles/gencsa.dir/src/loadkit.cpp.o: CMakeFiles/gencsa.dir/flags.make
CMakeFiles/gencsa.dir/src/loadkit.cpp.o: ../src/loadkit.cpp
CMakeFiles/gencsa.dir/src/loadkit.cpp.o: CMakeFiles/gencsa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/gencsa.dir/src/loadkit.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gencsa.dir/src/loadkit.cpp.o -MF CMakeFiles/gencsa.dir/src/loadkit.cpp.o.d -o CMakeFiles/gencsa.dir/src/loadkit.cpp.o -c /home/zsh/Desktop/GeCSA/src/loadkit.cpp

CMakeFiles/gencsa.dir/src/loadkit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gencsa.dir/src/loadkit.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zsh/Desktop/GeCSA/src/loadkit.cpp > CMakeFiles/gencsa.dir/src/loadkit.cpp.i

CMakeFiles/gencsa.dir/src/loadkit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gencsa.dir/src/loadkit.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zsh/Desktop/GeCSA/src/loadkit.cpp -o CMakeFiles/gencsa.dir/src/loadkit.cpp.s

CMakeFiles/gencsa.dir/src/savekit.cpp.o: CMakeFiles/gencsa.dir/flags.make
CMakeFiles/gencsa.dir/src/savekit.cpp.o: ../src/savekit.cpp
CMakeFiles/gencsa.dir/src/savekit.cpp.o: CMakeFiles/gencsa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/gencsa.dir/src/savekit.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gencsa.dir/src/savekit.cpp.o -MF CMakeFiles/gencsa.dir/src/savekit.cpp.o.d -o CMakeFiles/gencsa.dir/src/savekit.cpp.o -c /home/zsh/Desktop/GeCSA/src/savekit.cpp

CMakeFiles/gencsa.dir/src/savekit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gencsa.dir/src/savekit.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zsh/Desktop/GeCSA/src/savekit.cpp > CMakeFiles/gencsa.dir/src/savekit.cpp.i

CMakeFiles/gencsa.dir/src/savekit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gencsa.dir/src/savekit.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zsh/Desktop/GeCSA/src/savekit.cpp -o CMakeFiles/gencsa.dir/src/savekit.cpp.s

# Object files for target gencsa
gencsa_OBJECTS = \
"CMakeFiles/gencsa.dir/Gen_CSA.cpp.o" \
"CMakeFiles/gencsa.dir/src/CSA.cpp.o" \
"CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.o" \
"CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.o" \
"CMakeFiles/gencsa.dir/src/InArray.cpp.o" \
"CMakeFiles/gencsa.dir/src/Phi.cpp.o" \
"CMakeFiles/gencsa.dir/src/loadkit.cpp.o" \
"CMakeFiles/gencsa.dir/src/savekit.cpp.o"

# External object files for target gencsa
gencsa_EXTERNAL_OBJECTS =

gencsa: CMakeFiles/gencsa.dir/Gen_CSA.cpp.o
gencsa: CMakeFiles/gencsa.dir/src/CSA.cpp.o
gencsa: CMakeFiles/gencsa.dir/src/CSA_Regular.cpp.o
gencsa: CMakeFiles/gencsa.dir/src/Gen_Phi.cpp.o
gencsa: CMakeFiles/gencsa.dir/src/InArray.cpp.o
gencsa: CMakeFiles/gencsa.dir/src/Phi.cpp.o
gencsa: CMakeFiles/gencsa.dir/src/loadkit.cpp.o
gencsa: CMakeFiles/gencsa.dir/src/savekit.cpp.o
gencsa: CMakeFiles/gencsa.dir/build.make
gencsa: divsufsort/libdivsufsort.a
gencsa: Regular/libRegular.a
gencsa: simd/libsimd.a
gencsa: Regular/DFA_analysis/libDFA_analysis.a
gencsa: Regular/DFA_analysis/Parser/libParser.a
gencsa: CMakeFiles/gencsa.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zsh/Desktop/GeCSA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable gencsa"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gencsa.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gencsa.dir/build: gencsa
.PHONY : CMakeFiles/gencsa.dir/build

CMakeFiles/gencsa.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gencsa.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gencsa.dir/clean

CMakeFiles/gencsa.dir/depend:
	cd /home/zsh/Desktop/GeCSA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zsh/Desktop/GeCSA /home/zsh/Desktop/GeCSA /home/zsh/Desktop/GeCSA/build /home/zsh/Desktop/GeCSA/build /home/zsh/Desktop/GeCSA/build/CMakeFiles/gencsa.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gencsa.dir/depend

