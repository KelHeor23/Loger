# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/kel/MyJob/LogersTests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kel/MyJob/LogersTests/build/Desktop-Debug

# Include any dependencies generated for this target.
include CMakeFiles/LogersTests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/LogersTests.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/LogersTests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LogersTests.dir/flags.make

CMakeFiles/LogersTests.dir/main.cpp.o: CMakeFiles/LogersTests.dir/flags.make
CMakeFiles/LogersTests.dir/main.cpp.o: /home/kel/MyJob/LogersTests/main.cpp
CMakeFiles/LogersTests.dir/main.cpp.o: CMakeFiles/LogersTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/kel/MyJob/LogersTests/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/LogersTests.dir/main.cpp.o"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/LogersTests.dir/main.cpp.o -MF CMakeFiles/LogersTests.dir/main.cpp.o.d -o CMakeFiles/LogersTests.dir/main.cpp.o -c /home/kel/MyJob/LogersTests/main.cpp

CMakeFiles/LogersTests.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/LogersTests.dir/main.cpp.i"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kel/MyJob/LogersTests/main.cpp > CMakeFiles/LogersTests.dir/main.cpp.i

CMakeFiles/LogersTests.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/LogersTests.dir/main.cpp.s"
	/usr/bin/clang++-18 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kel/MyJob/LogersTests/main.cpp -o CMakeFiles/LogersTests.dir/main.cpp.s

# Object files for target LogersTests
LogersTests_OBJECTS = \
"CMakeFiles/LogersTests.dir/main.cpp.o"

# External object files for target LogersTests
LogersTests_EXTERNAL_OBJECTS =

LogersTests: CMakeFiles/LogersTests.dir/main.cpp.o
LogersTests: CMakeFiles/LogersTests.dir/build.make
LogersTests: CMakeFiles/LogersTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/kel/MyJob/LogersTests/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LogersTests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LogersTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LogersTests.dir/build: LogersTests
.PHONY : CMakeFiles/LogersTests.dir/build

CMakeFiles/LogersTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LogersTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LogersTests.dir/clean

CMakeFiles/LogersTests.dir/depend:
	cd /home/kel/MyJob/LogersTests/build/Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kel/MyJob/LogersTests /home/kel/MyJob/LogersTests /home/kel/MyJob/LogersTests/build/Desktop-Debug /home/kel/MyJob/LogersTests/build/Desktop-Debug /home/kel/MyJob/LogersTests/build/Desktop-Debug/CMakeFiles/LogersTests.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/LogersTests.dir/depend

