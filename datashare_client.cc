
#include <iostream>
#include <fstream>
#include <memory>
#include <string>
#include<sys/stat.h>
#include<sys/types.h>
#include <grpcpp/grpcpp.h>
#include "datashare.grpc.pb.h"

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;
using datashare::DataShare;
using datashare::ServerReply;
using datashare::ClientRequest;

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

void RunClient(){
  std::string target_str;
  target_str = "localhost:50051";
  Client client(
      grpc::CreateChannel(target_str, grpc::InsecureChannelCredentials()));
  std::string filename("file1.txt");
  client.SendData(filename);
}

int main(int argc, char** argv) {
  RunClient();
  return 0;
}
