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
CMAKE_SOURCE_DIR = /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share

# Include any dependencies generated for this target.
include CMakeFiles/ds_grpc_proto.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ds_grpc_proto.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ds_grpc_proto.dir/flags.make

datashare.pb.cc: datashare.proto
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating datashare.pb.cc, datashare.pb.h, datashare.grpc.pb.cc, datashare.grpc.pb.h, ds_mock_grpc_hdrs"
	/home/hamza/.local/bin/protoc-3.15.2.0 --grpc_out=generate_mock_code=true:"/home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share" --cpp_out /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share -I /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share --plugin=protoc-gen-grpc="/home/hamza/.local/bin/grpc_cpp_plugin" /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/datashare.proto

datashare.pb.h: datashare.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate datashare.pb.h

datashare.grpc.pb.cc: datashare.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate datashare.grpc.pb.cc

datashare.grpc.pb.h: datashare.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate datashare.grpc.pb.h

ds_mock_grpc_hdrs: datashare.pb.cc
	@$(CMAKE_COMMAND) -E touch_nocreate ds_mock_grpc_hdrs

CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.o: CMakeFiles/ds_grpc_proto.dir/flags.make
CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.o: datashare.grpc.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.o -c /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/datashare.grpc.pb.cc

CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/datashare.grpc.pb.cc > CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.i

CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/datashare.grpc.pb.cc -o CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.s

CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.o: CMakeFiles/ds_grpc_proto.dir/flags.make
CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.o: datashare.pb.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.o -c /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/datashare.pb.cc

CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/datashare.pb.cc > CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.i

CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/datashare.pb.cc -o CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.s

# Object files for target ds_grpc_proto
ds_grpc_proto_OBJECTS = \
"CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.o" \
"CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.o"

# External object files for target ds_grpc_proto
ds_grpc_proto_EXTERNAL_OBJECTS =

libds_grpc_proto.a: CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.o
libds_grpc_proto.a: CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.o
libds_grpc_proto.a: CMakeFiles/ds_grpc_proto.dir/build.make
libds_grpc_proto.a: CMakeFiles/ds_grpc_proto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libds_grpc_proto.a"
	$(CMAKE_COMMAND) -P CMakeFiles/ds_grpc_proto.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ds_grpc_proto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ds_grpc_proto.dir/build: libds_grpc_proto.a

.PHONY : CMakeFiles/ds_grpc_proto.dir/build

CMakeFiles/ds_grpc_proto.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ds_grpc_proto.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ds_grpc_proto.dir/clean

CMakeFiles/ds_grpc_proto.dir/depend: datashare.pb.cc
CMakeFiles/ds_grpc_proto.dir/depend: datashare.pb.h
CMakeFiles/ds_grpc_proto.dir/depend: datashare.grpc.pb.cc
CMakeFiles/ds_grpc_proto.dir/depend: datashare.grpc.pb.h
CMakeFiles/ds_grpc_proto.dir/depend: ds_mock_grpc_hdrs
	cd /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/CMakeFiles/ds_grpc_proto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ds_grpc_proto.dir/depend

