# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/erik/CLion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/erik/CLion/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/erik/CLionProjects/c_HanoiTower

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/erik/CLionProjects/c_HanoiTower/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/c_HanoiTower.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/c_HanoiTower.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/c_HanoiTower.dir/flags.make

CMakeFiles/c_HanoiTower.dir/main.c.o: CMakeFiles/c_HanoiTower.dir/flags.make
CMakeFiles/c_HanoiTower.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/c_HanoiTower.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_HanoiTower.dir/main.c.o   -c /home/erik/CLionProjects/c_HanoiTower/main.c

CMakeFiles/c_HanoiTower.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_HanoiTower.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/erik/CLionProjects/c_HanoiTower/main.c > CMakeFiles/c_HanoiTower.dir/main.c.i

CMakeFiles/c_HanoiTower.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_HanoiTower.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/erik/CLionProjects/c_HanoiTower/main.c -o CMakeFiles/c_HanoiTower.dir/main.c.s

CMakeFiles/c_HanoiTower.dir/structs/tower.c.o: CMakeFiles/c_HanoiTower.dir/flags.make
CMakeFiles/c_HanoiTower.dir/structs/tower.c.o: ../structs/tower.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/c_HanoiTower.dir/structs/tower.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_HanoiTower.dir/structs/tower.c.o   -c /home/erik/CLionProjects/c_HanoiTower/structs/tower.c

CMakeFiles/c_HanoiTower.dir/structs/tower.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_HanoiTower.dir/structs/tower.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/erik/CLionProjects/c_HanoiTower/structs/tower.c > CMakeFiles/c_HanoiTower.dir/structs/tower.c.i

CMakeFiles/c_HanoiTower.dir/structs/tower.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_HanoiTower.dir/structs/tower.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/erik/CLionProjects/c_HanoiTower/structs/tower.c -o CMakeFiles/c_HanoiTower.dir/structs/tower.c.s

CMakeFiles/c_HanoiTower.dir/structs/towersArray.c.o: CMakeFiles/c_HanoiTower.dir/flags.make
CMakeFiles/c_HanoiTower.dir/structs/towersArray.c.o: ../structs/towersArray.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/c_HanoiTower.dir/structs/towersArray.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_HanoiTower.dir/structs/towersArray.c.o   -c /home/erik/CLionProjects/c_HanoiTower/structs/towersArray.c

CMakeFiles/c_HanoiTower.dir/structs/towersArray.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_HanoiTower.dir/structs/towersArray.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/erik/CLionProjects/c_HanoiTower/structs/towersArray.c > CMakeFiles/c_HanoiTower.dir/structs/towersArray.c.i

CMakeFiles/c_HanoiTower.dir/structs/towersArray.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_HanoiTower.dir/structs/towersArray.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/erik/CLionProjects/c_HanoiTower/structs/towersArray.c -o CMakeFiles/c_HanoiTower.dir/structs/towersArray.c.s

CMakeFiles/c_HanoiTower.dir/structs/util/src/creatorHelper.c.o: CMakeFiles/c_HanoiTower.dir/flags.make
CMakeFiles/c_HanoiTower.dir/structs/util/src/creatorHelper.c.o: ../structs/util/src/creatorHelper.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/c_HanoiTower.dir/structs/util/src/creatorHelper.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_HanoiTower.dir/structs/util/src/creatorHelper.c.o   -c /home/erik/CLionProjects/c_HanoiTower/structs/util/src/creatorHelper.c

CMakeFiles/c_HanoiTower.dir/structs/util/src/creatorHelper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_HanoiTower.dir/structs/util/src/creatorHelper.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/erik/CLionProjects/c_HanoiTower/structs/util/src/creatorHelper.c > CMakeFiles/c_HanoiTower.dir/structs/util/src/creatorHelper.c.i

CMakeFiles/c_HanoiTower.dir/structs/util/src/creatorHelper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_HanoiTower.dir/structs/util/src/creatorHelper.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/erik/CLionProjects/c_HanoiTower/structs/util/src/creatorHelper.c -o CMakeFiles/c_HanoiTower.dir/structs/util/src/creatorHelper.c.s

CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/initTower.c.o: CMakeFiles/c_HanoiTower.dir/flags.make
CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/initTower.c.o: ../hanoiUtils/src/initTower.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/initTower.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/initTower.c.o   -c /home/erik/CLionProjects/c_HanoiTower/hanoiUtils/src/initTower.c

CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/initTower.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/initTower.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/erik/CLionProjects/c_HanoiTower/hanoiUtils/src/initTower.c > CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/initTower.c.i

CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/initTower.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/initTower.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/erik/CLionProjects/c_HanoiTower/hanoiUtils/src/initTower.c -o CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/initTower.c.s

CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/printer.c.o: CMakeFiles/c_HanoiTower.dir/flags.make
CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/printer.c.o: ../hanoiUtils/src/printer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/printer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/printer.c.o   -c /home/erik/CLionProjects/c_HanoiTower/hanoiUtils/src/printer.c

CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/printer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/printer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/erik/CLionProjects/c_HanoiTower/hanoiUtils/src/printer.c > CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/printer.c.i

CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/printer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/printer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/erik/CLionProjects/c_HanoiTower/hanoiUtils/src/printer.c -o CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/printer.c.s

CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/gameLogics.c.o: CMakeFiles/c_HanoiTower.dir/flags.make
CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/gameLogics.c.o: ../hanoiUtils/src/gameLogics.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/gameLogics.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/gameLogics.c.o   -c /home/erik/CLionProjects/c_HanoiTower/hanoiUtils/src/gameLogics.c

CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/gameLogics.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/gameLogics.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/erik/CLionProjects/c_HanoiTower/hanoiUtils/src/gameLogics.c > CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/gameLogics.c.i

CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/gameLogics.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/gameLogics.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/erik/CLionProjects/c_HanoiTower/hanoiUtils/src/gameLogics.c -o CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/gameLogics.c.s

CMakeFiles/c_HanoiTower.dir/menus/lang/src/languages.c.o: CMakeFiles/c_HanoiTower.dir/flags.make
CMakeFiles/c_HanoiTower.dir/menus/lang/src/languages.c.o: ../menus/lang/src/languages.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/c_HanoiTower.dir/menus/lang/src/languages.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_HanoiTower.dir/menus/lang/src/languages.c.o   -c /home/erik/CLionProjects/c_HanoiTower/menus/lang/src/languages.c

CMakeFiles/c_HanoiTower.dir/menus/lang/src/languages.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_HanoiTower.dir/menus/lang/src/languages.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/erik/CLionProjects/c_HanoiTower/menus/lang/src/languages.c > CMakeFiles/c_HanoiTower.dir/menus/lang/src/languages.c.i

CMakeFiles/c_HanoiTower.dir/menus/lang/src/languages.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_HanoiTower.dir/menus/lang/src/languages.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/erik/CLionProjects/c_HanoiTower/menus/lang/src/languages.c -o CMakeFiles/c_HanoiTower.dir/menus/lang/src/languages.c.s

CMakeFiles/c_HanoiTower.dir/menus/src/menuHelper.c.o: CMakeFiles/c_HanoiTower.dir/flags.make
CMakeFiles/c_HanoiTower.dir/menus/src/menuHelper.c.o: ../menus/src/menuHelper.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/c_HanoiTower.dir/menus/src/menuHelper.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_HanoiTower.dir/menus/src/menuHelper.c.o   -c /home/erik/CLionProjects/c_HanoiTower/menus/src/menuHelper.c

CMakeFiles/c_HanoiTower.dir/menus/src/menuHelper.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_HanoiTower.dir/menus/src/menuHelper.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/erik/CLionProjects/c_HanoiTower/menus/src/menuHelper.c > CMakeFiles/c_HanoiTower.dir/menus/src/menuHelper.c.i

CMakeFiles/c_HanoiTower.dir/menus/src/menuHelper.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_HanoiTower.dir/menus/src/menuHelper.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/erik/CLionProjects/c_HanoiTower/menus/src/menuHelper.c -o CMakeFiles/c_HanoiTower.dir/menus/src/menuHelper.c.s

CMakeFiles/c_HanoiTower.dir/menus/src/menu.c.o: CMakeFiles/c_HanoiTower.dir/flags.make
CMakeFiles/c_HanoiTower.dir/menus/src/menu.c.o: ../menus/src/menu.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/c_HanoiTower.dir/menus/src/menu.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_HanoiTower.dir/menus/src/menu.c.o   -c /home/erik/CLionProjects/c_HanoiTower/menus/src/menu.c

CMakeFiles/c_HanoiTower.dir/menus/src/menu.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_HanoiTower.dir/menus/src/menu.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/erik/CLionProjects/c_HanoiTower/menus/src/menu.c > CMakeFiles/c_HanoiTower.dir/menus/src/menu.c.i

CMakeFiles/c_HanoiTower.dir/menus/src/menu.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_HanoiTower.dir/menus/src/menu.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/erik/CLionProjects/c_HanoiTower/menus/src/menu.c -o CMakeFiles/c_HanoiTower.dir/menus/src/menu.c.s

CMakeFiles/c_HanoiTower.dir/structs/styles.c.o: CMakeFiles/c_HanoiTower.dir/flags.make
CMakeFiles/c_HanoiTower.dir/structs/styles.c.o: ../structs/styles.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/c_HanoiTower.dir/structs/styles.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_HanoiTower.dir/structs/styles.c.o   -c /home/erik/CLionProjects/c_HanoiTower/structs/styles.c

CMakeFiles/c_HanoiTower.dir/structs/styles.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_HanoiTower.dir/structs/styles.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/erik/CLionProjects/c_HanoiTower/structs/styles.c > CMakeFiles/c_HanoiTower.dir/structs/styles.c.i

CMakeFiles/c_HanoiTower.dir/structs/styles.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_HanoiTower.dir/structs/styles.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/erik/CLionProjects/c_HanoiTower/structs/styles.c -o CMakeFiles/c_HanoiTower.dir/structs/styles.c.s

# Object files for target c_HanoiTower
c_HanoiTower_OBJECTS = \
"CMakeFiles/c_HanoiTower.dir/main.c.o" \
"CMakeFiles/c_HanoiTower.dir/structs/tower.c.o" \
"CMakeFiles/c_HanoiTower.dir/structs/towersArray.c.o" \
"CMakeFiles/c_HanoiTower.dir/structs/util/src/creatorHelper.c.o" \
"CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/initTower.c.o" \
"CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/printer.c.o" \
"CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/gameLogics.c.o" \
"CMakeFiles/c_HanoiTower.dir/menus/lang/src/languages.c.o" \
"CMakeFiles/c_HanoiTower.dir/menus/src/menuHelper.c.o" \
"CMakeFiles/c_HanoiTower.dir/menus/src/menu.c.o" \
"CMakeFiles/c_HanoiTower.dir/structs/styles.c.o"

# External object files for target c_HanoiTower
c_HanoiTower_EXTERNAL_OBJECTS =

c_HanoiTower: CMakeFiles/c_HanoiTower.dir/main.c.o
c_HanoiTower: CMakeFiles/c_HanoiTower.dir/structs/tower.c.o
c_HanoiTower: CMakeFiles/c_HanoiTower.dir/structs/towersArray.c.o
c_HanoiTower: CMakeFiles/c_HanoiTower.dir/structs/util/src/creatorHelper.c.o
c_HanoiTower: CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/initTower.c.o
c_HanoiTower: CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/printer.c.o
c_HanoiTower: CMakeFiles/c_HanoiTower.dir/hanoiUtils/src/gameLogics.c.o
c_HanoiTower: CMakeFiles/c_HanoiTower.dir/menus/lang/src/languages.c.o
c_HanoiTower: CMakeFiles/c_HanoiTower.dir/menus/src/menuHelper.c.o
c_HanoiTower: CMakeFiles/c_HanoiTower.dir/menus/src/menu.c.o
c_HanoiTower: CMakeFiles/c_HanoiTower.dir/structs/styles.c.o
c_HanoiTower: CMakeFiles/c_HanoiTower.dir/build.make
c_HanoiTower: CMakeFiles/c_HanoiTower.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking C executable c_HanoiTower"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c_HanoiTower.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/c_HanoiTower.dir/build: c_HanoiTower

.PHONY : CMakeFiles/c_HanoiTower.dir/build

CMakeFiles/c_HanoiTower.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/c_HanoiTower.dir/cmake_clean.cmake
.PHONY : CMakeFiles/c_HanoiTower.dir/clean

CMakeFiles/c_HanoiTower.dir/depend:
	cd /home/erik/CLionProjects/c_HanoiTower/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/erik/CLionProjects/c_HanoiTower /home/erik/CLionProjects/c_HanoiTower /home/erik/CLionProjects/c_HanoiTower/cmake-build-debug /home/erik/CLionProjects/c_HanoiTower/cmake-build-debug /home/erik/CLionProjects/c_HanoiTower/cmake-build-debug/CMakeFiles/c_HanoiTower.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/c_HanoiTower.dir/depend

