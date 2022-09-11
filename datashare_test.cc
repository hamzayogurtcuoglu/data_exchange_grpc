#include <iostream>
#include <fstream>
#include <memory>
#include <string>
#include<sys/stat.h>
#include<sys/types.h>
#include <grpcpp/ext/proto_server_reflection_plugin.h>
#include <grpcpp/grpcpp.h>
#include <grpcpp/health_check_service_interface.h>
#include <thread>

#include "datashare.grpc.pb.h"


using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using grpc::Channel;
using grpc::ClientContext;
using datashare::DataShare;
using datashare::ServerReply;
using datashare::ClientRequest;
std::unique_ptr<Server> * serverRef;
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
    reply->set_number(5);
    reply->set_file(mystring);
    myfile.close();
    return Status::OK;
  }
};

class Client {
 public:
  Client(std::shared_ptr<Channel> channel)
      : stub_(DataShare::NewStub(channel)) {}
    std::string SendData(const std::string& user) {
    std::string savefilepath = "clientFolder/exchangeFile.txt";
    ClientRequest request;
    request.set_filename(user);
    ServerReply reply;
    ClientContext context;
    Status status = stub_->SendData(&context, request, &reply);
    if (status.ok()) {
      std::cout << "Number: " << reply.number() << std::endl;
      std::cout << "String : " << reply.message() << std::endl;
      mkdir("clientFolder",0777);
      std::ofstream MyFile(savefilepath);
      MyFile << reply.file();
      MyFile.close();
      std::cout << "File saved : " <<  savefilepath << std::endl;
      return "OK";
    } else {
      std::cout << status.error_code() << ": " << status.error_message()
                << std::endl;
      return "RPC failed";
    }
  }

 private:
  std::unique_ptr<DataShare::Stub> stub_;
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
  serverRef = &server;
  std::cout << "Server listening on " << server_address << std::endl;
  server->Wait();
}

void RunClient(){
  std::string target_str;
  target_str = "localhost:50051";
  Client client(
      grpc::CreateChannel(target_str, grpc::InsecureChannelCredentials()));
  std::string filename("file1.txt");
  std::string res = client.SendData(filename);
  std::ofstream MyFile("TestResult.txt");
  
  if (res != "OK")
  {
    MyFile << "Test Fail";
  }
  MyFile << "Test Passed";
  (*serverRef)->Shutdown();
  MyFile.close();
}

int main(int argc, char** argv) {
  std::thread th1(RunServer);
  std::thread th2(RunClient);
  th1.join();
  th2.join();
  exit(0);
  return 0;
}
