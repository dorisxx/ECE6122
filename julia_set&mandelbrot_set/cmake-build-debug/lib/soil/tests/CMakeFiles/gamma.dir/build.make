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
include lib/soil/tests/CMakeFiles/gamma.dir/depend.make

# Include the progress variables for this target.
include lib/soil/tests/CMakeFiles/gamma.dir/progress.make

# Include the compile flags for this target's objects.
include lib/soil/tests/CMakeFiles/gamma.dir/flags.make

lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj: lib/soil/tests/CMakeFiles/gamma.dir/flags.make
lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj: lib/soil/tests/CMakeFiles/gamma.dir/includes_C.rsp
lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj: ../lib/glfw/tests/gamma.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\P31\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj"
	cd /d C:\P31\cmake-build-debug\lib\soil\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\gamma.dir\gamma.c.obj   -c C:\P31\lib\glfw\tests\gamma.c

lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gamma.dir/gamma.c.i"
	cd /d C:\P31\cmake-build-debug\lib\soil\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\P31\lib\glfw\tests\gamma.c > CMakeFiles\gamma.dir\gamma.c.i

lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gamma.dir/gamma.c.s"
	cd /d C:\P31\cmake-build-debug\lib\soil\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\P31\lib\glfw\tests\gamma.c -o CMakeFiles\gamma.dir\gamma.c.s

lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj.requires:

.PHONY : lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj.requires

lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj.provides: lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj.requires
	$(MAKE) -f lib\soil\tests\CMakeFiles\gamma.dir\build.make lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj.provides.build
.PHONY : lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj.provides

lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj.provides.build: lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj


lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj: lib/soil/tests/CMakeFiles/gamma.dir/flags.make
lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj: lib/soil/tests/CMakeFiles/gamma.dir/includes_C.rsp
lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj: ../lib/glfw/deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\P31\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj"
	cd /d C:\P31\cmake-build-debug\lib\soil\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\gamma.dir\__\deps\getopt.c.obj   -c C:\P31\lib\glfw\deps\getopt.c

lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gamma.dir/__/deps/getopt.c.i"
	cd /d C:\P31\cmake-build-debug\lib\soil\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\P31\lib\glfw\deps\getopt.c > CMakeFiles\gamma.dir\__\deps\getopt.c.i

lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gamma.dir/__/deps/getopt.c.s"
	cd /d C:\P31\cmake-build-debug\lib\soil\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\P31\lib\glfw\deps\getopt.c -o CMakeFiles\gamma.dir\__\deps\getopt.c.s

lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj.requires:

.PHONY : lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj.requires

lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj.provides: lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj.requires
	$(MAKE) -f lib\soil\tests\CMakeFiles\gamma.dir\build.make lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj.provides.build
.PHONY : lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj.provides

lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj.provides.build: lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj


lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj: lib/soil/tests/CMakeFiles/gamma.dir/flags.make
lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj: lib/soil/tests/CMakeFiles/gamma.dir/includes_C.rsp
lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj: ../lib/glfw/deps/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\P31\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj"
	cd /d C:\P31\cmake-build-debug\lib\soil\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\gamma.dir\__\deps\glad.c.obj   -c C:\P31\lib\glfw\deps\glad.c

lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gamma.dir/__/deps/glad.c.i"
	cd /d C:\P31\cmake-build-debug\lib\soil\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\P31\lib\glfw\deps\glad.c > CMakeFiles\gamma.dir\__\deps\glad.c.i

lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gamma.dir/__/deps/glad.c.s"
	cd /d C:\P31\cmake-build-debug\lib\soil\tests && C:\mingw-w64\i686-7.3.0-posix-dwarf-rt_v5-rev0\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\P31\lib\glfw\deps\glad.c -o CMakeFiles\gamma.dir\__\deps\glad.c.s

lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj.requires:

.PHONY : lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj.requires

lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj.provides: lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj.requires
	$(MAKE) -f lib\soil\tests\CMakeFiles\gamma.dir\build.make lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj.provides.build
.PHONY : lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj.provides

lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj.provides.build: lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj


# Object files for target gamma
gamma_OBJECTS = \
"CMakeFiles/gamma.dir/gamma.c.obj" \
"CMakeFiles/gamma.dir/__/deps/getopt.c.obj" \
"CMakeFiles/gamma.dir/__/deps/glad.c.obj"

# External object files for target gamma
gamma_EXTERNAL_OBJECTS =

lib/soil/tests/gamma.exe: lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj
lib/soil/tests/gamma.exe: lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj
lib/soil/tests/gamma.exe: lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj
lib/soil/tests/gamma.exe: lib/soil/tests/CMakeFiles/gamma.dir/build.make
lib/soil/tests/gamma.exe: lib/soil/src/libglfw3.a
lib/soil/tests/gamma.exe: lib/soil/tests/CMakeFiles/gamma.dir/linklibs.rsp
lib/soil/tests/gamma.exe: lib/soil/tests/CMakeFiles/gamma.dir/objects1.rsp
lib/soil/tests/gamma.exe: lib/soil/tests/CMakeFiles/gamma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\P31\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable gamma.exe"
	cd /d C:\P31\cmake-build-debug\lib\soil\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\gamma.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/soil/tests/CMakeFiles/gamma.dir/build: lib/soil/tests/gamma.exe

.PHONY : lib/soil/tests/CMakeFiles/gamma.dir/build

lib/soil/tests/CMakeFiles/gamma.dir/requires: lib/soil/tests/CMakeFiles/gamma.dir/gamma.c.obj.requires
lib/soil/tests/CMakeFiles/gamma.dir/requires: lib/soil/tests/CMakeFiles/gamma.dir/__/deps/getopt.c.obj.requires
lib/soil/tests/CMakeFiles/gamma.dir/requires: lib/soil/tests/CMakeFiles/gamma.dir/__/deps/glad.c.obj.requires

.PHONY : lib/soil/tests/CMakeFiles/gamma.dir/requires

lib/soil/tests/CMakeFiles/gamma.dir/clean:
	cd /d C:\P31\cmake-build-debug\lib\soil\tests && $(CMAKE_COMMAND) -P CMakeFiles\gamma.dir\cmake_clean.cmake
.PHONY : lib/soil/tests/CMakeFiles/gamma.dir/clean

lib/soil/tests/CMakeFiles/gamma.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\P31 C:\P31\lib\glfw\tests C:\P31\cmake-build-debug C:\P31\cmake-build-debug\lib\soil\tests C:\P31\cmake-build-debug\lib\soil\tests\CMakeFiles\gamma.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : lib/soil/tests/CMakeFiles/gamma.dir/depend

