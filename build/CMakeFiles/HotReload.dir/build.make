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
CMAKE_SOURCE_DIR = /home/luis/Coding/HotReload

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/luis/Coding/HotReload/build

# Include any dependencies generated for this target.
include CMakeFiles/HotReload.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/HotReload.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/HotReload.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HotReload.dir/flags.make

CMakeFiles/HotReload.dir/src/main.cpp.o: CMakeFiles/HotReload.dir/flags.make
CMakeFiles/HotReload.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/HotReload.dir/src/main.cpp.o: CMakeFiles/HotReload.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/luis/Coding/HotReload/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HotReload.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/HotReload.dir/src/main.cpp.o -MF CMakeFiles/HotReload.dir/src/main.cpp.o.d -o CMakeFiles/HotReload.dir/src/main.cpp.o -c /home/luis/Coding/HotReload/src/main.cpp

CMakeFiles/HotReload.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HotReload.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/luis/Coding/HotReload/src/main.cpp > CMakeFiles/HotReload.dir/src/main.cpp.i

CMakeFiles/HotReload.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HotReload.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/luis/Coding/HotReload/src/main.cpp -o CMakeFiles/HotReload.dir/src/main.cpp.s

# Object files for target HotReload
HotReload_OBJECTS = \
"CMakeFiles/HotReload.dir/src/main.cpp.o"

# External object files for target HotReload
HotReload_EXTERNAL_OBJECTS =

HotReload: CMakeFiles/HotReload.dir/src/main.cpp.o
HotReload: CMakeFiles/HotReload.dir/build.make
HotReload: /usr/lib/x86_64-linux-gnu/libcurses.so
HotReload: /usr/lib/x86_64-linux-gnu/libform.so
HotReload: CMakeFiles/HotReload.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/luis/Coding/HotReload/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable HotReload"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HotReload.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HotReload.dir/build: HotReload
.PHONY : CMakeFiles/HotReload.dir/build

CMakeFiles/HotReload.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HotReload.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HotReload.dir/clean

CMakeFiles/HotReload.dir/depend:
	cd /home/luis/Coding/HotReload/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/luis/Coding/HotReload /home/luis/Coding/HotReload /home/luis/Coding/HotReload/build /home/luis/Coding/HotReload/build /home/luis/Coding/HotReload/build/CMakeFiles/HotReload.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HotReload.dir/depend

