# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2017.3.1\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2017.3.1\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\P31

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\P31\cmake-build-debug

# Include any dependencies generated for this target.
include lib/glfw/tests/CMakeFiles/sharing.dir/depend.make

# Include the progress variables for this target.
include lib/glfw/tests/CMakeFiles/sharing.dir/progress.make

# Include the compile flags for this target's objects.
include lib/glfw/tests/CMakeFiles/sharing.dir/flags.make

lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj: lib/glfw/tests/CMakeFiles/sharing.dir/flags.make
lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj: lib/glfw/tests/CMakeFiles/sharing.dir/includes_C.rsp
lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj: ../lib/glfw/tests/sharing.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\P31\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj"
	cd /d C:\P31\cmake-build-debug\lib\glfw\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\sharing.dir\sharing.c.obj   -c C:\P31\lib\glfw\tests\sharing.c

lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sharing.dir/sharing.c.i"
	cd /d C:\P31\cmake-build-debug\lib\glfw\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\P31\lib\glfw\tests\sharing.c > CMakeFiles\sharing.dir\sharing.c.i

lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sharing.dir/sharing.c.s"
	cd /d C:\P31\cmake-build-debug\lib\glfw\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\P31\lib\glfw\tests\sharing.c -o CMakeFiles\sharing.dir\sharing.c.s

lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj.requires:

.PHONY : lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj.requires

lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj.provides: lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj.requires
	$(MAKE) -f lib\glfw\tests\CMakeFiles\sharing.dir\build.make lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj.provides.build
.PHONY : lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj.provides

lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj.provides.build: lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj


lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj: lib/glfw/tests/CMakeFiles/sharing.dir/flags.make
lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj: lib/glfw/tests/CMakeFiles/sharing.dir/includes_C.rsp
lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj: ../lib/glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\P31\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj"
	cd /d C:\P31\cmake-build-debug\lib\glfw\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\sharing.dir\__\deps\glad.c.obj   -c C:\P31\lib\glfw\deps\glad.c

lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sharing.dir/__/deps/glad.c.i"
	cd /d C:\P31\cmake-build-debug\lib\glfw\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\P31\lib\glfw\deps\glad.c > CMakeFiles\sharing.dir\__\deps\glad.c.i

lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sharing.dir/__/deps/glad.c.s"
	cd /d C:\P31\cmake-build-debug\lib\glfw\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\P31\lib\glfw\deps\glad.c -o CMakeFiles\sharing.dir\__\deps\glad.c.s

lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj.requires:

.PHONY : lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj.requires

lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj.provides: lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj.requires
	$(MAKE) -f lib\glfw\tests\CMakeFiles\sharing.dir\build.make lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj.provides.build
.PHONY : lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj.provides

lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj.provides.build: lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj


# Object files for target sharing
sharing_OBJECTS = \
"CMakeFiles/sharing.dir/sharing.c.obj" \
"CMakeFiles/sharing.dir/__/deps/glad.c.obj"

# External object files for target sharing
sharing_EXTERNAL_OBJECTS =

lib/glfw/tests/sharing.exe: lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj
lib/glfw/tests/sharing.exe: lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj
lib/glfw/tests/sharing.exe: lib/glfw/tests/CMakeFiles/sharing.dir/build.make
lib/glfw/tests/sharing.exe: lib/glfw/src/libglfw3.a
lib/glfw/tests/sharing.exe: lib/glfw/tests/CMakeFiles/sharing.dir/linklibs.rsp
lib/glfw/tests/sharing.exe: lib/glfw/tests/CMakeFiles/sharing.dir/objects1.rsp
lib/glfw/tests/sharing.exe: lib/glfw/tests/CMakeFiles/sharing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\P31\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable sharing.exe"
	cd /d C:\P31\cmake-build-debug\lib\glfw\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\sharing.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/glfw/tests/CMakeFiles/sharing.dir/build: lib/glfw/tests/sharing.exe

.PHONY : lib/glfw/tests/CMakeFiles/sharing.dir/build

lib/glfw/tests/CMakeFiles/sharing.dir/requires: lib/glfw/tests/CMakeFiles/sharing.dir/sharing.c.obj.requires
lib/glfw/tests/CMakeFiles/sharing.dir/requires: lib/glfw/tests/CMakeFiles/sharing.dir/__/deps/glad.c.obj.requires

.PHONY : lib/glfw/tests/CMakeFiles/sharing.dir/requires

lib/glfw/tests/CMakeFiles/sharing.dir/clean:
	cd /d C:\P31\cmake-build-debug\lib\glfw\tests && $(CMAKE_COMMAND) -P CMakeFiles\sharing.dir\cmake_clean.cmake
.PHONY : lib/glfw/tests/CMakeFiles/sharing.dir/clean

lib/glfw/tests/CMakeFiles/sharing.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\P31 C:\P31\lib\glfw\tests C:\P31\cmake-build-debug C:\P31\cmake-build-debug\lib\glfw\tests C:\P31\cmake-build-debug\lib\glfw\tests\CMakeFiles\sharing.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : lib/glfw/tests/CMakeFiles/sharing.dir/depend

