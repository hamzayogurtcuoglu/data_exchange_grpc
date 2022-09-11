#include <iostream>
#include <fstream>
#include <memory>
#include <string>

#include <grpcpp/ext/proto_server_reflection_plugin.h>
#include <grpcpp/grpcpp.h>
#include <grpcpp/health_check_service_interface.h>

#ifdef BAZEL_BUILD
#include "examples/protos/datashare.grpc.pb.h"
#else
#include "datashare.grpc.pb.h"
#endif

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using datashare::DataShare;
using datashare::ServerReply;
using datashare::ClientRequest;

class Service final : public DataShare::Service {
  Status SendData(ServerContext* context, const ClientRequest* request,
                  ServerReply* reply) override {
    std::ifstream myfile;
    myfile.open(request->filename());
    std::string mystring;
    if ( myfile.is_open() ) { 
      myfile >> mystring; 
    }
    reply->set_message("Hello my name is Hamza");
    reply->set_number(44);
    reply->set_file(mystring);
    myfile.close();
    return Status::OK;
  }
};

void RunServer() {
  std::string server_address("0.0.0.0:50051");
  Service service;
  grpc::EnableDefaultHealthCheckService(true);
  grpc::reflection::InitProtoReflectionServerBuilderPlugin();
  ServerBuilder builder;
  builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
   builder.RegisterService(&service);
  std::unique_ptr<Server> server(builder.BuildAndStart());
  std::cout << "Server listening on " << server_address << std::endl;
  server->Wait();
}

int main(int argc, char** argv) {
  RunServer();
  return 0;
}
