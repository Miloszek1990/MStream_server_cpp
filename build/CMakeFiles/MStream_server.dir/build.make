# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mimi/Pulpit/learn_networking/sockets/build

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mimi/Pulpit/learn_networking/sockets/build

# Include any dependencies generated for this target.
include CMakeFiles/MStream_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MStream_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MStream_server.dir/flags.make

CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/main.cpp.o: CMakeFiles/MStream_server.dir/flags.make
CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/main.cpp.o: /home/mimi/Pulpit/learn_networking/sockets/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mimi/Pulpit/learn_networking/sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/main.cpp.o -c /home/mimi/Pulpit/learn_networking/sockets/main.cpp

CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mimi/Pulpit/learn_networking/sockets/main.cpp > CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/main.cpp.i

CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mimi/Pulpit/learn_networking/sockets/main.cpp -o CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/main.cpp.s

CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp.o: CMakeFiles/MStream_server.dir/flags.make
CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp.o: /home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mimi/Pulpit/learn_networking/sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp.o -c /home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp

CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp > CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp.i

CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp -o CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp.s

# Object files for target MStream_server
MStream_server_OBJECTS = \
"CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/main.cpp.o" \
"CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp.o"

# External object files for target MStream_server
MStream_server_EXTERNAL_OBJECTS =

MStream_server: CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/main.cpp.o
MStream_server: CMakeFiles/MStream_server.dir/home/mimi/Pulpit/learn_networking/sockets/source/Server.cpp.o
MStream_server: CMakeFiles/MStream_server.dir/build.make
MStream_server: CMakeFiles/MStream_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mimi/Pulpit/learn_networking/sockets/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable MStream_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MStream_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MStream_server.dir/build: MStream_server

.PHONY : CMakeFiles/MStream_server.dir/build

CMakeFiles/MStream_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MStream_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MStream_server.dir/clean

CMakeFiles/MStream_server.dir/depend:
	cd /home/mimi/Pulpit/learn_networking/sockets/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mimi/Pulpit/learn_networking/sockets/build /home/mimi/Pulpit/learn_networking/sockets/build /home/mimi/Pulpit/learn_networking/sockets/build /home/mimi/Pulpit/learn_networking/sockets/build /home/mimi/Pulpit/learn_networking/sockets/build/CMakeFiles/MStream_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MStream_server.dir/depend

