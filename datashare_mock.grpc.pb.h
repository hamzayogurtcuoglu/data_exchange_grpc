// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: datashare.proto

#include "datashare.pb.h"
#include "datashare.grpc.pb.h"

#include <grpcpp/impl/codegen/async_stream.h>
#include <grpcpp/impl/codegen/sync_stream.h>
#include <gmock/gmock.h>
namespace datashare {

class MockDataShareStub : public DataShare::StubInterface {
 public:
  MOCK_METHOD3(SendData, ::grpc::Status(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::datashare::ServerReply* response));
  MOCK_METHOD3(AsyncSendDataRaw, ::grpc::ClientAsyncResponseReaderInterface< ::datashare::ServerReply>*(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::grpc::CompletionQueue* cq));
  MOCK_METHOD3(PrepareAsyncSendDataRaw, ::grpc::ClientAsyncResponseReaderInterface< ::datashare::ServerReply>*(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::grpc::CompletionQueue* cq));
};

} // namespace datashare

