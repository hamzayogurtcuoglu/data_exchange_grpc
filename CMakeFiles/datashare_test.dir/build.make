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
include CMakeFiles/datashare_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/datashare_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/datashare_test.dir/flags.make

CMakeFiles/datashare_test.dir/datashare_test.cc.o: CMakeFiles/datashare_test.dir/flags.make
CMakeFiles/datashare_test.dir/datashare_test.cc.o: datashare_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/datashare_test.dir/datashare_test.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/datashare_test.dir/datashare_test.cc.o -c /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/datashare_test.cc

CMakeFiles/datashare_test.dir/datashare_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/datashare_test.dir/datashare_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/datashare_test.cc > CMakeFiles/datashare_test.dir/datashare_test.cc.i

CMakeFiles/datashare_test.dir/datashare_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/datashare_test.dir/datashare_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/datashare_test.cc -o CMakeFiles/datashare_test.dir/datashare_test.cc.s

# Object files for target datashare_test
datashare_test_OBJECTS = \
"CMakeFiles/datashare_test.dir/datashare_test.cc.o"

# External object files for target datashare_test
datashare_test_EXTERNAL_OBJECTS =

datashare_test: CMakeFiles/datashare_test.dir/datashare_test.cc.o
datashare_test: CMakeFiles/datashare_test.dir/build.make
datashare_test: libds_grpc_proto.a
datashare_test: /home/hamza/.local/lib/libgrpc++_reflection.a
datashare_test: /home/hamza/.local/lib/libgrpc++.a
datashare_test: /home/hamza/.local/lib/libprotobuf.a
datashare_test: /home/hamza/.local/lib/libgrpc.a
datashare_test: /home/hamza/.local/lib/libz.a
datashare_test: /home/hamza/.local/lib/libcares.a
datashare_test: /home/hamza/.local/lib/libaddress_sorting.a
datashare_test: /home/hamza/.local/lib/libre2.a
datashare_test: /home/hamza/.local/lib/libupb.a
datashare_test: /home/hamza/.local/lib/libabsl_hash.a
datashare_test: /home/hamza/.local/lib/libabsl_city.a
datashare_test: /home/hamza/.local/lib/libabsl_raw_hash_set.a
datashare_test: /home/hamza/.local/lib/libabsl_hashtablez_sampler.a
datashare_test: /home/hamza/.local/lib/libabsl_exponential_biased.a
datashare_test: /home/hamza/.local/lib/libabsl_statusor.a
datashare_test: /home/hamza/.local/lib/libabsl_bad_variant_access.a
datashare_test: /home/hamza/.local/lib/libgpr.a
datashare_test: /home/hamza/.local/lib/libabsl_status.a
datashare_test: /home/hamza/.local/lib/libabsl_cord.a
datashare_test: /home/hamza/.local/lib/libabsl_str_format_internal.a
datashare_test: /home/hamza/.local/lib/libabsl_synchronization.a
datashare_test: /home/hamza/.local/lib/libabsl_stacktrace.a
datashare_test: /home/hamza/.local/lib/libabsl_symbolize.a
datashare_test: /home/hamza/.local/lib/libabsl_debugging_internal.a
datashare_test: /home/hamza/.local/lib/libabsl_demangle_internal.a
datashare_test: /home/hamza/.local/lib/libabsl_graphcycles_internal.a
datashare_test: /home/hamza/.local/lib/libabsl_malloc_internal.a
datashare_test: /home/hamza/.local/lib/libabsl_time.a
datashare_test: /home/hamza/.local/lib/libabsl_strings.a
datashare_test: /home/hamza/.local/lib/libabsl_throw_delegate.a
datashare_test: /home/hamza/.local/lib/libabsl_strings_internal.a
datashare_test: /home/hamza/.local/lib/libabsl_base.a
datashare_test: /home/hamza/.local/lib/libabsl_spinlock_wait.a
datashare_test: /home/hamza/.local/lib/libabsl_int128.a
datashare_test: /home/hamza/.local/lib/libabsl_civil_time.a
datashare_test: /home/hamza/.local/lib/libabsl_time_zone.a
datashare_test: /home/hamza/.local/lib/libabsl_bad_optional_access.a
datashare_test: /home/hamza/.local/lib/libabsl_raw_logging_internal.a
datashare_test: /home/hamza/.local/lib/libabsl_log_severity.a
datashare_test: /usr/lib/x86_64-linux-gnu/libssl.so
datashare_test: /usr/lib/x86_64-linux-gnu/libcrypto.so
datashare_test: CMakeFiles/datashare_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable datashare_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/datashare_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/datashare_test.dir/build: datashare_test

.PHONY : CMakeFiles/datashare_test.dir/build

CMakeFiles/datashare_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/datashare_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/datashare_test.dir/clean

CMakeFiles/datashare_test.dir/depend:
	cd /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share /home/hamza/Desktop/grpc-cpp/grpc/examples/cpp/data_share/CMakeFiles/datashare_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/datashare_test.dir/depend
