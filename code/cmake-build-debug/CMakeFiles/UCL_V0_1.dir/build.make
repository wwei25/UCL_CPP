# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files (x86)\JetBrains\CLion 2016.3\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files (x86)\JetBrains\CLion 2016.3\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = G:\UCL\UCL_CPP\code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = G:\UCL\UCL_CPP\code\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/UCL_V0_1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/UCL_V0_1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/UCL_V0_1.dir/flags.make

CMakeFiles/UCL_V0_1.dir/main.cpp.obj: CMakeFiles/UCL_V0_1.dir/flags.make
CMakeFiles/UCL_V0_1.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\UCL\UCL_CPP\code\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/UCL_V0_1.dir/main.cpp.obj"
	D:\MinGW\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\UCL_V0_1.dir\main.cpp.obj -c G:\UCL\UCL_CPP\code\main.cpp

CMakeFiles/UCL_V0_1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UCL_V0_1.dir/main.cpp.i"
	D:\MinGW\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\UCL\UCL_CPP\code\main.cpp > CMakeFiles\UCL_V0_1.dir\main.cpp.i

CMakeFiles/UCL_V0_1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UCL_V0_1.dir/main.cpp.s"
	D:\MinGW\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\UCL\UCL_CPP\code\main.cpp -o CMakeFiles\UCL_V0_1.dir\main.cpp.s

CMakeFiles/UCL_V0_1.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/UCL_V0_1.dir/main.cpp.obj.requires

CMakeFiles/UCL_V0_1.dir/main.cpp.obj.provides: CMakeFiles/UCL_V0_1.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\UCL_V0_1.dir\build.make CMakeFiles/UCL_V0_1.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/UCL_V0_1.dir/main.cpp.obj.provides

CMakeFiles/UCL_V0_1.dir/main.cpp.obj.provides.build: CMakeFiles/UCL_V0_1.dir/main.cpp.obj


CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj: CMakeFiles/UCL_V0_1.dir/flags.make
CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj: ../UCLCode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\UCL\UCL_CPP\code\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj"
	D:\MinGW\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\UCL_V0_1.dir\UCLCode.cpp.obj -c G:\UCL\UCL_CPP\code\UCLCode.cpp

CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.i"
	D:\MinGW\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\UCL\UCL_CPP\code\UCLCode.cpp > CMakeFiles\UCL_V0_1.dir\UCLCode.cpp.i

CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.s"
	D:\MinGW\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\UCL\UCL_CPP\code\UCLCode.cpp -o CMakeFiles\UCL_V0_1.dir\UCLCode.cpp.s

CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj.requires:

.PHONY : CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj.requires

CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj.provides: CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj.requires
	$(MAKE) -f CMakeFiles\UCL_V0_1.dir\build.make CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj.provides.build
.PHONY : CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj.provides

CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj.provides.build: CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj


CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj: CMakeFiles/UCL_V0_1.dir/flags.make
CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj: ../UCLCodeExtension.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=G:\UCL\UCL_CPP\code\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj"
	D:\MinGW\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\UCL_V0_1.dir\UCLCodeExtension.cpp.obj -c G:\UCL\UCL_CPP\code\UCLCodeExtension.cpp

CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.i"
	D:\MinGW\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E G:\UCL\UCL_CPP\code\UCLCodeExtension.cpp > CMakeFiles\UCL_V0_1.dir\UCLCodeExtension.cpp.i

CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.s"
	D:\MinGW\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S G:\UCL\UCL_CPP\code\UCLCodeExtension.cpp -o CMakeFiles\UCL_V0_1.dir\UCLCodeExtension.cpp.s

CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj.requires:

.PHONY : CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj.requires

CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj.provides: CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj.requires
	$(MAKE) -f CMakeFiles\UCL_V0_1.dir\build.make CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj.provides.build
.PHONY : CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj.provides

CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj.provides.build: CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj


# Object files for target UCL_V0_1
UCL_V0_1_OBJECTS = \
"CMakeFiles/UCL_V0_1.dir/main.cpp.obj" \
"CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj" \
"CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj"

# External object files for target UCL_V0_1
UCL_V0_1_EXTERNAL_OBJECTS =

UCL_V0_1.exe: CMakeFiles/UCL_V0_1.dir/main.cpp.obj
UCL_V0_1.exe: CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj
UCL_V0_1.exe: CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj
UCL_V0_1.exe: CMakeFiles/UCL_V0_1.dir/build.make
UCL_V0_1.exe: CMakeFiles/UCL_V0_1.dir/linklibs.rsp
UCL_V0_1.exe: CMakeFiles/UCL_V0_1.dir/objects1.rsp
UCL_V0_1.exe: CMakeFiles/UCL_V0_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=G:\UCL\UCL_CPP\code\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable UCL_V0_1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\UCL_V0_1.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/UCL_V0_1.dir/build: UCL_V0_1.exe

.PHONY : CMakeFiles/UCL_V0_1.dir/build

CMakeFiles/UCL_V0_1.dir/requires: CMakeFiles/UCL_V0_1.dir/main.cpp.obj.requires
CMakeFiles/UCL_V0_1.dir/requires: CMakeFiles/UCL_V0_1.dir/UCLCode.cpp.obj.requires
CMakeFiles/UCL_V0_1.dir/requires: CMakeFiles/UCL_V0_1.dir/UCLCodeExtension.cpp.obj.requires

.PHONY : CMakeFiles/UCL_V0_1.dir/requires

CMakeFiles/UCL_V0_1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\UCL_V0_1.dir\cmake_clean.cmake
.PHONY : CMakeFiles/UCL_V0_1.dir/clean

CMakeFiles/UCL_V0_1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" G:\UCL\UCL_CPP\code G:\UCL\UCL_CPP\code G:\UCL\UCL_CPP\code\cmake-build-debug G:\UCL\UCL_CPP\code\cmake-build-debug G:\UCL\UCL_CPP\code\cmake-build-debug\CMakeFiles\UCL_V0_1.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/UCL_V0_1.dir/depend

