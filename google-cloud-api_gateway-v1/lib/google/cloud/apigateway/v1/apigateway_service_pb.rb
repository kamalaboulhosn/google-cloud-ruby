# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/apigateway/v1/apigateway_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/cloud/apigateway/v1/apigateway_pb'
require 'google/longrunning/operations_pb'


descriptor_data = "\n3google/cloud/apigateway/v1/apigateway_service.proto\x12\x1agoogle.cloud.apigateway.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a+google/cloud/apigateway/v1/apigateway.proto\x1a#google/longrunning/operations.proto2\xe0\x17\n\x11\x41piGatewayService\x12\xb0\x01\n\x0cListGateways\x12/.google.cloud.apigateway.v1.ListGatewaysRequest\x1a\x30.google.cloud.apigateway.v1.ListGatewaysResponse\"=\xda\x41\x06parent\x82\xd3\xe4\x93\x02.\x12,/v1/{parent=projects/*/locations/*}/gateways\x12\x9d\x01\n\nGetGateway\x12-.google.cloud.apigateway.v1.GetGatewayRequest\x1a#.google.cloud.apigateway.v1.Gateway\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v1/{name=projects/*/locations/*/gateways/*}\x12\xda\x01\n\rCreateGateway\x12\x30.google.cloud.apigateway.v1.CreateGatewayRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41\x1c\n\x07Gateway\x12\x11OperationMetadata\xda\x41\x19parent,gateway,gateway_id\x82\xd3\xe4\x93\x02\x37\",/v1/{parent=projects/*/locations/*}/gateways:\x07gateway\x12\xdc\x01\n\rUpdateGateway\x12\x30.google.cloud.apigateway.v1.UpdateGatewayRequest\x1a\x1d.google.longrunning.Operation\"z\xca\x41\x1c\n\x07Gateway\x12\x11OperationMetadata\xda\x41\x13gateway,update_mask\x82\xd3\xe4\x93\x02?24/v1/{gateway.name=projects/*/locations/*/gateways/*}:\x07gateway\x12\xca\x01\n\rDeleteGateway\x12\x30.google.cloud.apigateway.v1.DeleteGatewayRequest\x1a\x1d.google.longrunning.Operation\"h\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02.*,/v1/{name=projects/*/locations/*/gateways/*}\x12\xa0\x01\n\x08ListApis\x12+.google.cloud.apigateway.v1.ListApisRequest\x1a,.google.cloud.apigateway.v1.ListApisResponse\"9\xda\x41\x06parent\x82\xd3\xe4\x93\x02*\x12(/v1/{parent=projects/*/locations/*}/apis\x12\x8d\x01\n\x06GetApi\x12).google.cloud.apigateway.v1.GetApiRequest\x1a\x1f.google.cloud.apigateway.v1.Api\"7\xda\x41\x04name\x82\xd3\xe4\x93\x02*\x12(/v1/{name=projects/*/locations/*/apis/*}\x12\xbe\x01\n\tCreateApi\x12,.google.cloud.apigateway.v1.CreateApiRequest\x1a\x1d.google.longrunning.Operation\"d\xca\x41\x18\n\x03\x41pi\x12\x11OperationMetadata\xda\x41\x11parent,api,api_id\x82\xd3\xe4\x93\x02/\"(/v1/{parent=projects/*/locations/*}/apis:\x03\x61pi\x12\xc0\x01\n\tUpdateApi\x12,.google.cloud.apigateway.v1.UpdateApiRequest\x1a\x1d.google.longrunning.Operation\"f\xca\x41\x18\n\x03\x41pi\x12\x11OperationMetadata\xda\x41\x0f\x61pi,update_mask\x82\xd3\xe4\x93\x02\x33\x32,/v1/{api.name=projects/*/locations/*/apis/*}:\x03\x61pi\x12\xbe\x01\n\tDeleteApi\x12,.google.cloud.apigateway.v1.DeleteApiRequest\x1a\x1d.google.longrunning.Operation\"d\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02**(/v1/{name=projects/*/locations/*/apis/*}\x12\xbc\x01\n\x0eListApiConfigs\x12\x31.google.cloud.apigateway.v1.ListApiConfigsRequest\x1a\x32.google.cloud.apigateway.v1.ListApiConfigsResponse\"C\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x34\x12\x32/v1/{parent=projects/*/locations/*/apis/*}/configs\x12\xa9\x01\n\x0cGetApiConfig\x12/.google.cloud.apigateway.v1.GetApiConfigRequest\x1a%.google.cloud.apigateway.v1.ApiConfig\"A\xda\x41\x04name\x82\xd3\xe4\x93\x02\x34\x12\x32/v1/{name=projects/*/locations/*/apis/*/configs/*}\x12\xf0\x01\n\x0f\x43reateApiConfig\x12\x32.google.cloud.apigateway.v1.CreateApiConfigRequest\x1a\x1d.google.longrunning.Operation\"\x89\x01\xca\x41\x1e\n\tApiConfig\x12\x11OperationMetadata\xda\x41\x1fparent,api_config,api_config_id\x82\xd3\xe4\x93\x02@\"2/v1/{parent=projects/*/locations/*/apis/*}/configs:\napi_config\x12\xf2\x01\n\x0fUpdateApiConfig\x12\x32.google.cloud.apigateway.v1.UpdateApiConfigRequest\x1a\x1d.google.longrunning.Operation\"\x8b\x01\xca\x41\x1e\n\tApiConfig\x12\x11OperationMetadata\xda\x41\x16\x61pi_config,update_mask\x82\xd3\xe4\x93\x02K2=/v1/{api_config.name=projects/*/locations/*/apis/*/configs/*}:\napi_config\x12\xd4\x01\n\x0f\x44\x65leteApiConfig\x12\x32.google.cloud.apigateway.v1.DeleteApiConfigRequest\x1a\x1d.google.longrunning.Operation\"n\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x34*2/v1/{name=projects/*/locations/*/apis/*/configs/*}\x1aM\xca\x41\x19\x61pigateway.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xbc\x01\n\x1e\x63om.google.cloud.apigateway.v1P\x01Z>cloud.google.com/go/apigateway/apiv1/apigatewaypb;apigatewaypb\xaa\x02\x1aGoogle.Cloud.ApiGateway.V1\xca\x02\x1aGoogle\\Cloud\\ApiGateway\\V1\xea\x02\x1dGoogle::Cloud::ApiGateway::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module ApiGateway
      module V1
      end
    end
  end
end
