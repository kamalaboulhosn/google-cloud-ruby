# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/apigateway/v1/apigateway.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n+google/cloud/apigateway/v1/apigateway.proto\x12\x1agoogle.cloud.apigateway.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xd6\x04\n\x03\x41pi\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12@\n\x06labels\x18\x04 \x03(\x0b\x32+.google.cloud.apigateway.v1.Api.LabelsEntryB\x03\xe0\x41\x01\x12\x19\n\x0c\x64isplay_name\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12S\n\x0fmanaged_service\x18\x07 \x01(\tB:\xe0\x41\x05\xe0\x41\x01\xfa\x41\x31\n/servicemanagement.googleapis.com/ManagedService\x12\x39\n\x05state\x18\x0c \x01(\x0e\x32%.google.cloud.apigateway.v1.Api.StateB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"`\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\x0c\n\x08UPDATING\x10\x05:R\xea\x41O\n\x1d\x61pigateway.googleapis.com/Api\x12.projects/{project}/locations/global/apis/{api}\"\xfb\t\n\tApiConfig\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x46\n\x06labels\x18\x04 \x03(\x0b\x32\x31.google.cloud.apigateway.v1.ApiConfig.LabelsEntryB\x03\xe0\x41\x01\x12\x19\n\x0c\x64isplay_name\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12J\n\x17gateway_service_account\x18\x0e \x01(\tB)\xe0\x41\x05\xfa\x41#\n!iam.googleapis.com/ServiceAccount\x12K\n\x11service_config_id\x18\x0c \x01(\tB0\xe0\x41\x03\xfa\x41*\n(servicemanagement.googleapis.com/Service\x12?\n\x05state\x18\x08 \x01(\x0e\x32+.google.cloud.apigateway.v1.ApiConfig.StateB\x03\xe0\x41\x03\x12U\n\x11openapi_documents\x18\t \x03(\x0b\x32\x35.google.cloud.apigateway.v1.ApiConfig.OpenApiDocumentB\x03\xe0\x41\x01\x12W\n\rgrpc_services\x18\n \x03(\x0b\x32;.google.cloud.apigateway.v1.ApiConfig.GrpcServiceDefinitionB\x03\xe0\x41\x01\x12P\n\x17managed_service_configs\x18\x0b \x03(\x0b\x32*.google.cloud.apigateway.v1.ApiConfig.FileB\x03\xe0\x41\x01\x1a&\n\x04\x46ile\x12\x0c\n\x04path\x18\x01 \x01(\t\x12\x10\n\x08\x63ontents\x18\x02 \x01(\x0c\x1aO\n\x0fOpenApiDocument\x12<\n\x08\x64ocument\x18\x01 \x01(\x0b\x32*.google.cloud.apigateway.v1.ApiConfig.File\x1a\xa6\x01\n\x15GrpcServiceDefinition\x12L\n\x13\x66ile_descriptor_set\x18\x01 \x01(\x0b\x32*.google.cloud.apigateway.v1.ApiConfig.FileB\x03\xe0\x41\x04\x12?\n\x06source\x18\x02 \x03(\x0b\x32*.google.cloud.apigateway.v1.ApiConfig.FileB\x03\xe0\x41\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"p\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\x0c\n\x08UPDATING\x10\x05\x12\x0e\n\nACTIVATING\x10\x06:m\xea\x41j\n#apigateway.googleapis.com/ApiConfig\x12\x43projects/{project}/locations/global/apis/{api}/configs/{api_config}\"\xfd\x04\n\x07Gateway\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x44\n\x06labels\x18\x04 \x03(\x0b\x32/.google.cloud.apigateway.v1.Gateway.LabelsEntryB\x03\xe0\x41\x01\x12\x19\n\x0c\x64isplay_name\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12?\n\napi_config\x18\x06 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#apigateway.googleapis.com/ApiConfig\x12=\n\x05state\x18\x07 \x01(\x0e\x32).google.cloud.apigateway.v1.Gateway.StateB\x03\xe0\x41\x03\x12\x1d\n\x10\x64\x65\x66\x61ult_hostname\x18\t \x01(\tB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"`\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\x0c\n\x08UPDATING\x10\x05:b\xea\x41_\n!apigateway.googleapis.com/Gateway\x12:projects/{project}/locations/{location}/gateways/{gateway}\"\x99\x01\n\x13ListGatewaysRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"\x85\x01\n\x14ListGatewaysResponse\x12\x35\n\x08gateways\x18\x01 \x03(\x0b\x32#.google.cloud.apigateway.v1.Gateway\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x1d\n\x15unreachable_locations\x18\x03 \x03(\t\"L\n\x11GetGatewayRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!apigateway.googleapis.com/Gateway\"\xa5\x01\n\x14\x43reateGatewayRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x17\n\ngateway_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x39\n\x07gateway\x18\x03 \x01(\x0b\x32#.google.cloud.apigateway.v1.GatewayB\x03\xe0\x41\x02\"\x82\x01\n\x14UpdateGatewayRequest\x12/\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x39\n\x07gateway\x18\x02 \x01(\x0b\x32#.google.cloud.apigateway.v1.GatewayB\x03\xe0\x41\x02\"O\n\x14\x44\x65leteGatewayRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!apigateway.googleapis.com/Gateway\"\x95\x01\n\x0fListApisRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"y\n\x10ListApisResponse\x12-\n\x04\x61pis\x18\x01 \x03(\x0b\x32\x1f.google.cloud.apigateway.v1.Api\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x1d\n\x15unreachable_locations\x18\x03 \x03(\t\"D\n\rGetApiRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x61pigateway.googleapis.com/Api\"\x95\x01\n\x10\x43reateApiRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x13\n\x06\x61pi_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x31\n\x03\x61pi\x18\x03 \x01(\x0b\x32\x1f.google.cloud.apigateway.v1.ApiB\x03\xe0\x41\x02\"v\n\x10UpdateApiRequest\x12/\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12\x31\n\x03\x61pi\x18\x02 \x01(\x0b\x32\x1f.google.cloud.apigateway.v1.ApiB\x03\xe0\x41\x02\"G\n\x10\x44\x65leteApiRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x61pigateway.googleapis.com/Api\"\x97\x01\n\x15ListApiConfigsRequest\x12\x35\n\x06parent\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x61pigateway.googleapis.com/Api\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"\x8c\x01\n\x16ListApiConfigsResponse\x12:\n\x0b\x61pi_configs\x18\x01 \x03(\x0b\x32%.google.cloud.apigateway.v1.ApiConfig\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x1d\n\x15unreachable_locations\x18\x03 \x03(\t\"\xda\x01\n\x13GetApiConfigRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#apigateway.googleapis.com/ApiConfig\x12H\n\x04view\x18\x03 \x01(\x0e\x32:.google.cloud.apigateway.v1.GetApiConfigRequest.ConfigView\">\n\nConfigView\x12\x1b\n\x17\x43ONFIG_VIEW_UNSPECIFIED\x10\x00\x12\t\n\x05\x42\x41SIC\x10\x01\x12\x08\n\x04\x46ULL\x10\x02\"\xab\x01\n\x16\x43reateApiConfigRequest\x12\x35\n\x06parent\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x61pigateway.googleapis.com/Api\x12\x1a\n\rapi_config_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12>\n\napi_config\x18\x03 \x01(\x0b\x32%.google.cloud.apigateway.v1.ApiConfigB\x03\xe0\x41\x02\"\x89\x01\n\x16UpdateApiConfigRequest\x12/\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12>\n\napi_config\x18\x02 \x01(\x0b\x32%.google.cloud.apigateway.v1.ApiConfigB\x03\xe0\x41\x02\"S\n\x16\x44\x65leteApiConfigRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#apigateway.googleapis.com/ApiConfig\"\x85\x03\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\x12R\n\x0b\x64iagnostics\x18\x08 \x03(\x0b\x32\x38.google.cloud.apigateway.v1.OperationMetadata.DiagnosticB\x03\xe0\x41\x03\x1a/\n\nDiagnostic\x12\x10\n\x08location\x18\x01 \x01(\t\x12\x0f\n\x07message\x18\x02 \x01(\tB\xb2\x03\n\x1e\x63om.google.cloud.apigateway.v1P\x01Z>cloud.google.com/go/apigateway/apiv1/apigatewaypb;apigatewaypb\xaa\x02\x1aGoogle.Cloud.ApiGateway.V1\xca\x02\x1aGoogle\\Cloud\\ApiGateway\\V1\xea\x02\x1dGoogle::Cloud::ApiGateway::V1\xea\x41Y\n!iam.googleapis.com/ServiceAccount\x12\x34projects/{project}/serviceAccounts/{service_account}\xea\x41\x45\n/servicemanagement.googleapis.com/ManagedService\x12\x12services/{service}\xea\x41O\n(servicemanagement.googleapis.com/Service\x12#services/{service}/configs/{config}b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
        Api = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.Api").msgclass
        Api::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.Api.State").enummodule
        ApiConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.ApiConfig").msgclass
        ApiConfig::File = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.ApiConfig.File").msgclass
        ApiConfig::OpenApiDocument = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.ApiConfig.OpenApiDocument").msgclass
        ApiConfig::GrpcServiceDefinition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.ApiConfig.GrpcServiceDefinition").msgclass
        ApiConfig::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.ApiConfig.State").enummodule
        Gateway = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.Gateway").msgclass
        Gateway::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.Gateway.State").enummodule
        ListGatewaysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.ListGatewaysRequest").msgclass
        ListGatewaysResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.ListGatewaysResponse").msgclass
        GetGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.GetGatewayRequest").msgclass
        CreateGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.CreateGatewayRequest").msgclass
        UpdateGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.UpdateGatewayRequest").msgclass
        DeleteGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.DeleteGatewayRequest").msgclass
        ListApisRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.ListApisRequest").msgclass
        ListApisResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.ListApisResponse").msgclass
        GetApiRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.GetApiRequest").msgclass
        CreateApiRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.CreateApiRequest").msgclass
        UpdateApiRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.UpdateApiRequest").msgclass
        DeleteApiRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.DeleteApiRequest").msgclass
        ListApiConfigsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.ListApiConfigsRequest").msgclass
        ListApiConfigsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.ListApiConfigsResponse").msgclass
        GetApiConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.GetApiConfigRequest").msgclass
        GetApiConfigRequest::ConfigView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.GetApiConfigRequest.ConfigView").enummodule
        CreateApiConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.CreateApiConfigRequest").msgclass
        UpdateApiConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.UpdateApiConfigRequest").msgclass
        DeleteApiConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.DeleteApiConfigRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.OperationMetadata").msgclass
        OperationMetadata::Diagnostic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apigateway.v1.OperationMetadata.Diagnostic").msgclass
      end
    end
  end
end
