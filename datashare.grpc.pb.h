// Generated by the gRPC C++ plugin.
// If you make any local change, they will be lost.
// source: datashare.proto
#ifndef GRPC_datashare_2eproto__INCLUDED
#define GRPC_datashare_2eproto__INCLUDED

#include "datashare.pb.h"

#include <functional>
#include <grpc/impl/codegen/port_platform.h>
#include <grpcpp/impl/codegen/async_generic_service.h>
#include <grpcpp/impl/codegen/async_stream.h>
#include <grpcpp/impl/codegen/async_unary_call.h>
#include <grpcpp/impl/codegen/client_callback.h>
#include <grpcpp/impl/codegen/client_context.h>
#include <grpcpp/impl/codegen/completion_queue.h>
#include <grpcpp/impl/codegen/message_allocator.h>
#include <grpcpp/impl/codegen/method_handler.h>
#include <grpcpp/impl/codegen/proto_utils.h>
#include <grpcpp/impl/codegen/rpc_method.h>
#include <grpcpp/impl/codegen/server_callback.h>
#include <grpcpp/impl/codegen/server_callback_handlers.h>
#include <grpcpp/impl/codegen/server_context.h>
#include <grpcpp/impl/codegen/service_type.h>
#include <grpcpp/impl/codegen/status.h>
#include <grpcpp/impl/codegen/stub_options.h>
#include <grpcpp/impl/codegen/sync_stream.h>

namespace datashare {

class DataShare final {
 public:
  static constexpr char const* service_full_name() {
    return "datashare.DataShare";
  }
  class StubInterface {
   public:
    virtual ~StubInterface() {}
    virtual ::grpc::Status SendData(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::datashare::ServerReply* response) = 0;
    std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::datashare::ServerReply>> AsyncSendData(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::datashare::ServerReply>>(AsyncSendDataRaw(context, request, cq));
    }
    std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::datashare::ServerReply>> PrepareAsyncSendData(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReaderInterface< ::datashare::ServerReply>>(PrepareAsyncSendDataRaw(context, request, cq));
    }
    class experimental_async_interface {
     public:
      virtual ~experimental_async_interface() {}
      virtual void SendData(::grpc::ClientContext* context, const ::datashare::ClientRequest* request, ::datashare::ServerReply* response, std::function<void(::grpc::Status)>) = 0;
      #ifdef GRPC_CALLBACK_API_NONEXPERIMENTAL
      virtual void SendData(::grpc::ClientContext* context, const ::datashare::ClientRequest* request, ::datashare::ServerReply* response, ::grpc::ClientUnaryReactor* reactor) = 0;
      #else
      virtual void SendData(::grpc::ClientContext* context, const ::datashare::ClientRequest* request, ::datashare::ServerReply* response, ::grpc::experimental::ClientUnaryReactor* reactor) = 0;
      #endif
    };
    #ifdef GRPC_CALLBACK_API_NONEXPERIMENTAL
    typedef class experimental_async_interface async_interface;
    #endif
    #ifdef GRPC_CALLBACK_API_NONEXPERIMENTAL
    async_interface* async() { return experimental_async(); }
    #endif
    virtual class experimental_async_interface* experimental_async() { return nullptr; }
  private:
    virtual ::grpc::ClientAsyncResponseReaderInterface< ::datashare::ServerReply>* AsyncSendDataRaw(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::grpc::CompletionQueue* cq) = 0;
    virtual ::grpc::ClientAsyncResponseReaderInterface< ::datashare::ServerReply>* PrepareAsyncSendDataRaw(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::grpc::CompletionQueue* cq) = 0;
  };
  class Stub final : public StubInterface {
   public:
    Stub(const std::shared_ptr< ::grpc::ChannelInterface>& channel);
    ::grpc::Status SendData(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::datashare::ServerReply* response) override;
    std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::datashare::ServerReply>> AsyncSendData(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::datashare::ServerReply>>(AsyncSendDataRaw(context, request, cq));
    }
    std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::datashare::ServerReply>> PrepareAsyncSendData(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::grpc::CompletionQueue* cq) {
      return std::unique_ptr< ::grpc::ClientAsyncResponseReader< ::datashare::ServerReply>>(PrepareAsyncSendDataRaw(context, request, cq));
    }
    class experimental_async final :
      public StubInterface::experimental_async_interface {
     public:
      void SendData(::grpc::ClientContext* context, const ::datashare::ClientRequest* request, ::datashare::ServerReply* response, std::function<void(::grpc::Status)>) override;
      #ifdef GRPC_CALLBACK_API_NONEXPERIMENTAL
      void SendData(::grpc::ClientContext* context, const ::datashare::ClientRequest* request, ::datashare::ServerReply* response, ::grpc::ClientUnaryReactor* reactor) override;
      #else
      void SendData(::grpc::ClientContext* context, const ::datashare::ClientRequest* request, ::datashare::ServerReply* response, ::grpc::experimental::ClientUnaryReactor* reactor) override;
      #endif
     private:
      friend class Stub;
      explicit experimental_async(Stub* stub): stub_(stub) { }
      Stub* stub() { return stub_; }
      Stub* stub_;
    };
    class experimental_async_interface* experimental_async() override { return &async_stub_; }

   private:
    std::shared_ptr< ::grpc::ChannelInterface> channel_;
    class experimental_async async_stub_{this};
    ::grpc::ClientAsyncResponseReader< ::datashare::ServerReply>* AsyncSendDataRaw(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::grpc::CompletionQueue* cq) override;
    ::grpc::ClientAsyncResponseReader< ::datashare::ServerReply>* PrepareAsyncSendDataRaw(::grpc::ClientContext* context, const ::datashare::ClientRequest& request, ::grpc::CompletionQueue* cq) override;
    const ::grpc::internal::RpcMethod rpcmethod_SendData_;
  };
  static std::unique_ptr<Stub> NewStub(const std::shared_ptr< ::grpc::ChannelInterface>& channel, const ::grpc::StubOptions& options = ::grpc::StubOptions());

  class Service : public ::grpc::Service {
   public:
    Service();
    virtual ~Service();
    virtual ::grpc::Status SendData(::grpc::ServerContext* context, const ::datashare::ClientRequest* request, ::datashare::ServerReply* response);
  };
  template <class BaseClass>
  class WithAsyncMethod_SendData : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithAsyncMethod_SendData() {
      ::grpc::Service::MarkMethodAsync(0);
    }
    ~WithAsyncMethod_SendData() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status SendData(::grpc::ServerContext* /*context*/, const ::datashare::ClientRequest* /*request*/, ::datashare::ServerReply* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    void RequestSendData(::grpc::ServerContext* context, ::datashare::ClientRequest* request, ::grpc::ServerAsyncResponseWriter< ::datashare::ServerReply>* response, ::grpc::CompletionQueue* new_call_cq, ::grpc::ServerCompletionQueue* notification_cq, void *tag) {
      ::grpc::Service::RequestAsyncUnary(0, context, request, response, new_call_cq, notification_cq, tag);
    }
  };
  typedef WithAsyncMethod_SendData<Service > AsyncService;
  template <class BaseClass>
  class ExperimentalWithCallbackMethod_SendData : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    ExperimentalWithCallbackMethod_SendData() {
    #ifdef GRPC_CALLBACK_API_NONEXPERIMENTAL
      ::grpc::Service::
    #else
      ::grpc::Service::experimental().
    #endif
        MarkMethodCallback(0,
          new ::grpc::internal::CallbackUnaryHandler< ::datashare::ClientRequest, ::datashare::ServerReply>(
            [this](
    #ifdef GRPC_CALLBACK_API_NONEXPERIMENTAL
                   ::grpc::CallbackServerContext*
    #else
                   ::grpc::experimental::CallbackServerContext*
    #endif
                     context, const ::datashare::ClientRequest* request, ::datashare::ServerReply* response) { return this->SendData(context, request, response); }));}
    void SetMessageAllocatorFor_SendData(
        ::grpc::experimental::MessageAllocator< ::datashare::ClientRequest, ::datashare::ServerReply>* allocator) {
    #ifdef GRPC_CALLBACK_API_NONEXPERIMENTAL
      ::grpc::internal::MethodHandler* const handler = ::grpc::Service::GetHandler(0);
    #else
      ::grpc::internal::MethodHandler* const handler = ::grpc::Service::experimental().GetHandler(0);
    #endif
      static_cast<::grpc::internal::CallbackUnaryHandler< ::datashare::ClientRequest, ::datashare::ServerReply>*>(handler)
              ->SetMessageAllocator(allocator);
    }
    ~ExperimentalWithCallbackMethod_SendData() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status SendData(::grpc::ServerContext* /*context*/, const ::datashare::ClientRequest* /*request*/, ::datashare::ServerReply* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    #ifdef GRPC_CALLBACK_API_NONEXPERIMENTAL
    virtual ::grpc::ServerUnaryReactor* SendData(
      ::grpc::CallbackServerContext* /*context*/, const ::datashare::ClientRequest* /*request*/, ::datashare::ServerReply* /*response*/)
    #else
    virtual ::grpc::experimental::ServerUnaryReactor* SendData(
      ::grpc::experimental::CallbackServerContext* /*context*/, const ::datashare::ClientRequest* /*request*/, ::datashare::ServerReply* /*response*/)
    #endif
      { return nullptr; }
  };
  #ifdef GRPC_CALLBACK_API_NONEXPERIMENTAL
  typedef ExperimentalWithCallbackMethod_SendData<Service > CallbackService;
  #endif

  typedef ExperimentalWithCallbackMethod_SendData<Service > ExperimentalCallbackService;
  template <class BaseClass>
  class WithGenericMethod_SendData : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithGenericMethod_SendData() {
      ::grpc::Service::MarkMethodGeneric(0);
    }
    ~WithGenericMethod_SendData() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status SendData(::grpc::ServerContext* /*context*/, const ::datashare::ClientRequest* /*request*/, ::datashare::ServerReply* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
  };
  template <class BaseClass>
  class WithRawMethod_SendData : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithRawMethod_SendData() {
      ::grpc::Service::MarkMethodRaw(0);
    }
    ~WithRawMethod_SendData() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status SendData(::grpc::ServerContext* /*context*/, const ::datashare::ClientRequest* /*request*/, ::datashare::ServerReply* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    void RequestSendData(::grpc::ServerContext* context, ::grpc::ByteBuffer* request, ::grpc::ServerAsyncResponseWriter< ::grpc::ByteBuffer>* response, ::grpc::CompletionQueue* new_call_cq, ::grpc::ServerCompletionQueue* notification_cq, void *tag) {
      ::grpc::Service::RequestAsyncUnary(0, context, request, response, new_call_cq, notification_cq, tag);
    }
  };
  template <class BaseClass>
  class ExperimentalWithRawCallbackMethod_SendData : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    ExperimentalWithRawCallbackMethod_SendData() {
    #ifdef GRPC_CALLBACK_API_NONEXPERIMENTAL
      ::grpc::Service::
    #else
      ::grpc::Service::experimental().
    #endif
        MarkMethodRawCallback(0,
          new ::grpc::internal::CallbackUnaryHandler< ::grpc::ByteBuffer, ::grpc::ByteBuffer>(
            [this](
    #ifdef GRPC_CALLBACK_API_NONEXPERIMENTAL
                   ::grpc::CallbackServerContext*
    #else
                   ::grpc::experimental::CallbackServerContext*
    #endif
                     context, const ::grpc::ByteBuffer* request, ::grpc::ByteBuffer* response) { return this->SendData(context, request, response); }));
    }
    ~ExperimentalWithRawCallbackMethod_SendData() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable synchronous version of this method
    ::grpc::Status SendData(::grpc::ServerContext* /*context*/, const ::datashare::ClientRequest* /*request*/, ::datashare::ServerReply* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    #ifdef GRPC_CALLBACK_API_NONEXPERIMENTAL
    virtual ::grpc::ServerUnaryReactor* SendData(
      ::grpc::CallbackServerContext* /*context*/, const ::grpc::ByteBuffer* /*request*/, ::grpc::ByteBuffer* /*response*/)
    #else
    virtual ::grpc::experimental::ServerUnaryReactor* SendData(
      ::grpc::experimental::CallbackServerContext* /*context*/, const ::grpc::ByteBuffer* /*request*/, ::grpc::ByteBuffer* /*response*/)
    #endif
      { return nullptr; }
  };
  template <class BaseClass>
  class WithStreamedUnaryMethod_SendData : public BaseClass {
   private:
    void BaseClassMustBeDerivedFromService(const Service* /*service*/) {}
   public:
    WithStreamedUnaryMethod_SendData() {
      ::grpc::Service::MarkMethodStreamed(0,
        new ::grpc::internal::StreamedUnaryHandler<
          ::datashare::ClientRequest, ::datashare::ServerReply>(
            [this](::grpc::ServerContext* context,
                   ::grpc::ServerUnaryStreamer<
                     ::datashare::ClientRequest, ::datashare::ServerReply>* streamer) {
                       return this->StreamedSendData(context,
                         streamer);
                  }));
    }
    ~WithStreamedUnaryMethod_SendData() override {
      BaseClassMustBeDerivedFromService(this);
    }
    // disable regular version of this method
    ::grpc::Status SendData(::grpc::ServerContext* /*context*/, const ::datashare::ClientRequest* /*request*/, ::datashare::ServerReply* /*response*/) override {
      abort();
      return ::grpc::Status(::grpc::StatusCode::UNIMPLEMENTED, "");
    }
    // replace default version of method with streamed unary
    virtual ::grpc::Status StreamedSendData(::grpc::ServerContext* context, ::grpc::ServerUnaryStreamer< ::datashare::ClientRequest,::datashare::ServerReply>* server_unary_streamer) = 0;
  };
  typedef WithStreamedUnaryMethod_SendData<Service > StreamedUnaryService;
  typedef Service SplitStreamedService;
  typedef WithStreamedUnaryMethod_SendData<Service > StreamedService;
};

}  // namespace datashare


#endif  // GRPC_datashare_2eproto__INCLUDED