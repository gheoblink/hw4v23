# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\geobl\CLionProjects\HW4OpenMP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\geobl\CLionProjects\HW4OpenMP\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/HW4OpenMP.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HW4OpenMP.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HW4OpenMP.dir/flags.make

CMakeFiles/HW4OpenMP.dir/main.cpp.obj: CMakeFiles/HW4OpenMP.dir/flags.make
CMakeFiles/HW4OpenMP.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\geobl\CLionProjects\HW4OpenMP\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/HW4OpenMP.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\HW4OpenMP.dir\main.cpp.obj -c C:\Users\geobl\CLionProjects\HW4OpenMP\main.cpp

CMakeFiles/HW4OpenMP.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HW4OpenMP.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\geobl\CLionProjects\HW4OpenMP\main.cpp > CMakeFiles\HW4OpenMP.dir\main.cpp.i

CMakeFiles/HW4OpenMP.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HW4OpenMP.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\geobl\CLionProjects\HW4OpenMP\main.cpp -o CMakeFiles\HW4OpenMP.dir\main.cpp.s

# Object files for target HW4OpenMP
HW4OpenMP_OBJECTS = \
"CMakeFiles/HW4OpenMP.dir/main.cpp.obj"

# External object files for target HW4OpenMP
HW4OpenMP_EXTERNAL_OBJECTS =

HW4OpenMP.exe: CMakeFiles/HW4OpenMP.dir/main.cpp.obj
HW4OpenMP.exe: CMakeFiles/HW4OpenMP.dir/build.make
HW4OpenMP.exe: CMakeFiles/HW4OpenMP.dir/linklibs.rsp
HW4OpenMP.exe: CMakeFiles/HW4OpenMP.dir/objects1.rsp
HW4OpenMP.exe: CMakeFiles/HW4OpenMP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\geobl\CLionProjects\HW4OpenMP\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable HW4OpenMP.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\HW4OpenMP.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HW4OpenMP.dir/build: HW4OpenMP.exe

.PHONY : CMakeFiles/HW4OpenMP.dir/build

CMakeFiles/HW4OpenMP.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\HW4OpenMP.dir\cmake_clean.cmake
.PHONY : CMakeFiles/HW4OpenMP.dir/clean

CMakeFiles/HW4OpenMP.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\geobl\CLionProjects\HW4OpenMP C:\Users\geobl\CLionProjects\HW4OpenMP C:\Users\geobl\CLionProjects\HW4OpenMP\cmake-build-debug C:\Users\geobl\CLionProjects\HW4OpenMP\cmake-build-debug C:\Users\geobl\CLionProjects\HW4OpenMP\cmake-build-debug\CMakeFiles\HW4OpenMP.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HW4OpenMP.dir/depend

