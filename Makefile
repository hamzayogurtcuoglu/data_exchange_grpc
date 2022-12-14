# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/CMakeFiles /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named datashare_test

# Build rule for target.
datashare_test: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 datashare_test
.PHONY : datashare_test

# fast build rule for target.
datashare_test/fast:
	$(MAKE) -f CMakeFiles/datashare_test.dir/build.make CMakeFiles/datashare_test.dir/build
.PHONY : datashare_test/fast

#=============================================================================
# Target rules for targets named datashare_server

# Build rule for target.
datashare_server: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 datashare_server
.PHONY : datashare_server

# fast build rule for target.
datashare_server/fast:
	$(MAKE) -f CMakeFiles/datashare_server.dir/build.make CMakeFiles/datashare_server.dir/build
.PHONY : datashare_server/fast

#=============================================================================
# Target rules for targets named datashare_client

# Build rule for target.
datashare_client: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 datashare_client
.PHONY : datashare_client

# fast build rule for target.
datashare_client/fast:
	$(MAKE) -f CMakeFiles/datashare_client.dir/build.make CMakeFiles/datashare_client.dir/build
.PHONY : datashare_client/fast

#=============================================================================
# Target rules for targets named ds_grpc_proto

# Build rule for target.
ds_grpc_proto: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ds_grpc_proto
.PHONY : ds_grpc_proto

# fast build rule for target.
ds_grpc_proto/fast:
	$(MAKE) -f CMakeFiles/ds_grpc_proto.dir/build.make CMakeFiles/ds_grpc_proto.dir/build
.PHONY : ds_grpc_proto/fast

datashare.grpc.pb.o: datashare.grpc.pb.cc.o

.PHONY : datashare.grpc.pb.o

# target to build an object file
datashare.grpc.pb.cc.o:
	$(MAKE) -f CMakeFiles/ds_grpc_proto.dir/build.make CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.o
.PHONY : datashare.grpc.pb.cc.o

datashare.grpc.pb.i: datashare.grpc.pb.cc.i

.PHONY : datashare.grpc.pb.i

# target to preprocess a source file
datashare.grpc.pb.cc.i:
	$(MAKE) -f CMakeFiles/ds_grpc_proto.dir/build.make CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.i
.PHONY : datashare.grpc.pb.cc.i

datashare.grpc.pb.s: datashare.grpc.pb.cc.s

.PHONY : datashare.grpc.pb.s

# target to generate assembly for a file
datashare.grpc.pb.cc.s:
	$(MAKE) -f CMakeFiles/ds_grpc_proto.dir/build.make CMakeFiles/ds_grpc_proto.dir/datashare.grpc.pb.cc.s
.PHONY : datashare.grpc.pb.cc.s

datashare.pb.o: datashare.pb.cc.o

.PHONY : datashare.pb.o

# target to build an object file
datashare.pb.cc.o:
	$(MAKE) -f CMakeFiles/ds_grpc_proto.dir/build.make CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.o
.PHONY : datashare.pb.cc.o

datashare.pb.i: datashare.pb.cc.i

.PHONY : datashare.pb.i

# target to preprocess a source file
datashare.pb.cc.i:
	$(MAKE) -f CMakeFiles/ds_grpc_proto.dir/build.make CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.i
.PHONY : datashare.pb.cc.i

datashare.pb.s: datashare.pb.cc.s

.PHONY : datashare.pb.s

# target to generate assembly for a file
datashare.pb.cc.s:
	$(MAKE) -f CMakeFiles/ds_grpc_proto.dir/build.make CMakeFiles/ds_grpc_proto.dir/datashare.pb.cc.s
.PHONY : datashare.pb.cc.s

datashare_client.o: datashare_client.cc.o

.PHONY : datashare_client.o

# target to build an object file
datashare_client.cc.o:
	$(MAKE) -f CMakeFiles/datashare_client.dir/build.make CMakeFiles/datashare_client.dir/datashare_client.cc.o
.PHONY : datashare_client.cc.o

datashare_client.i: datashare_client.cc.i

.PHONY : datashare_client.i

# target to preprocess a source file
datashare_client.cc.i:
	$(MAKE) -f CMakeFiles/datashare_client.dir/build.make CMakeFiles/datashare_client.dir/datashare_client.cc.i
.PHONY : datashare_client.cc.i

datashare_client.s: datashare_client.cc.s

.PHONY : datashare_client.s

# target to generate assembly for a file
datashare_client.cc.s:
	$(MAKE) -f CMakeFiles/datashare_client.dir/build.make CMakeFiles/datashare_client.dir/datashare_client.cc.s
.PHONY : datashare_client.cc.s

datashare_server.o: datashare_server.cc.o

.PHONY : datashare_server.o

# target to build an object file
datashare_server.cc.o:
	$(MAKE) -f CMakeFiles/datashare_server.dir/build.make CMakeFiles/datashare_server.dir/datashare_server.cc.o
.PHONY : datashare_server.cc.o

datashare_server.i: datashare_server.cc.i

.PHONY : datashare_server.i

# target to preprocess a source file
datashare_server.cc.i:
	$(MAKE) -f CMakeFiles/datashare_server.dir/build.make CMakeFiles/datashare_server.dir/datashare_server.cc.i
.PHONY : datashare_server.cc.i

datashare_server.s: datashare_server.cc.s

.PHONY : datashare_server.s

# target to generate assembly for a file
datashare_server.cc.s:
	$(MAKE) -f CMakeFiles/datashare_server.dir/build.make CMakeFiles/datashare_server.dir/datashare_server.cc.s
.PHONY : datashare_server.cc.s

datashare_test.o: datashare_test.cc.o

.PHONY : datashare_test.o

# target to build an object file
datashare_test.cc.o:
	$(MAKE) -f CMakeFiles/datashare_test.dir/build.make CMakeFiles/datashare_test.dir/datashare_test.cc.o
.PHONY : datashare_test.cc.o

datashare_test.i: datashare_test.cc.i

.PHONY : datashare_test.i

# target to preprocess a source file
datashare_test.cc.i:
	$(MAKE) -f CMakeFiles/datashare_test.dir/build.make CMakeFiles/datashare_test.dir/datashare_test.cc.i
.PHONY : datashare_test.cc.i

datashare_test.s: datashare_test.cc.s

.PHONY : datashare_test.s

# target to generate assembly for a file
datashare_test.cc.s:
	$(MAKE) -f CMakeFiles/datashare_test.dir/build.make CMakeFiles/datashare_test.dir/datashare_test.cc.s
.PHONY : datashare_test.cc.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... datashare_test"
	@echo "... datashare_server"
	@echo "... datashare_client"
	@echo "... ds_grpc_proto"
	@echo "... datashare.grpc.pb.o"
	@echo "... datashare.grpc.pb.i"
	@echo "... datashare.grpc.pb.s"
	@echo "... datashare.pb.o"
	@echo "... datashare.pb.i"
	@echo "... datashare.pb.s"
	@echo "... datashare_client.o"
	@echo "... datashare_client.i"
	@echo "... datashare_client.s"
	@echo "... datashare_server.o"
	@echo "... datashare_server.i"
	@echo "... datashare_server.s"
	@echo "... datashare_test.o"
	@echo "... datashare_test.i"
	@echo "... datashare_test.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

