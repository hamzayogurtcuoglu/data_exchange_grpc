
cmake_minimum_required(VERSION 3.5.1)

project(DataShare C CXX)

include(../cmake/common.cmake)

# Proto file
get_filename_component(ds_proto "datashare.proto" ABSOLUTE)
get_filename_component(ds_proto_path "${ds_proto}" PATH)

# Generated sources
set(ds_proto_srcs "${CMAKE_CURRENT_BINARY_DIR}/datashare.pb.cc")
set(ds_proto_hdrs "${CMAKE_CURRENT_BINARY_DIR}/datashare.pb.h")
set(ds_grpc_srcs "${CMAKE_CURRENT_BINARY_DIR}/datashare.grpc.pb.cc")
set(ds_grpc_hdrs "${CMAKE_CURRENT_BINARY_DIR}/datashare.grpc.pb.h")
set(ds_mock_grpc_hdrs "${CMAKE_CURRENT_BINARY_DIR}/datashare.grpc.pb.h")

add_custom_command(
      OUTPUT "${ds_proto_srcs}" "${ds_proto_hdrs}" "${ds_grpc_srcs}" "${ds_grpc_hdrs}" "ds_mock_grpc_hdrs"
      COMMAND ${_PROTOBUF_PROTOC}
      ARGS --grpc_out=generate_mock_code=true:"${CMAKE_CURRENT_BINARY_DIR}" 
        --cpp_out "${CMAKE_CURRENT_BINARY_DIR}"
        -I "${ds_proto_path}"
        --plugin=protoc-gen-grpc="${_GRPC_CPP_PLUGIN_EXECUTABLE}"
        "${ds_proto}"
      DEPENDS "${ds_proto}")

# Include generated *.pb.h files
include_directories("${CMAKE_CURRENT_BINARY_DIR}")
find_package(Threads REQUIRED)

# ds_grpc_proto
add_library(ds_grpc_proto
  ${ds_grpc_srcs}
  ${ds_grpc_hdrs}
  ${ds_proto_srcs}
  ${ds_proto_hdrs}
  ${ds_mock_grpc_hdrs})
target_link_libraries(ds_grpc_proto
  ${_REFLECTION}
  ${_GRPC_GRPCPP}
  ${_PROTOBUF_LIBPROTOBUF}
  ${CMAKE_THREAD_LIBS_INIT})

# Targets datashare_[async_](client|server)
foreach(_target
  datashare_client datashare_server datashare_test)
  add_executable(${_target} "${_target}.cc")
  target_link_libraries(${_target}
    ds_grpc_proto
    ${_REFLECTION}
    ${_GRPC_GRPCPP}
    ${_PROTOBUF_LIBPROTOBUF}
    ${CMAKE_THREAD_LIBS_INIT})
endforeach()
