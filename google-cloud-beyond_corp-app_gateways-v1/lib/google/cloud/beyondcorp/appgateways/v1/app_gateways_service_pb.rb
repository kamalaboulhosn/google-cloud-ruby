# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/beyondcorp/appgateways/v1/app_gateways_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\nAgoogle/cloud/beyondcorp/appgateways/v1/app_gateways_service.proto\x12&google.cloud.beyondcorp.appgateways.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xb3\x01\n\x16ListAppGatewaysRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$beyondcorp.googleapis.com/AppGateway\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x91\x01\n\x17ListAppGatewaysResponse\x12H\n\x0c\x61pp_gateways\x18\x01 \x03(\x0b\x32\x32.google.cloud.beyondcorp.appgateways.v1.AppGateway\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"R\n\x14GetAppGatewayRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$beyondcorp.googleapis.com/AppGateway\"\xf7\x01\n\x17\x43reateAppGatewayRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\x12$beyondcorp.googleapis.com/AppGateway\x12\x1b\n\x0e\x61pp_gateway_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12L\n\x0b\x61pp_gateway\x18\x03 \x01(\x0b\x32\x32.google.cloud.beyondcorp.appgateways.v1.AppGatewayB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"\x8a\x01\n\x17\x44\x65leteAppGatewayRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$beyondcorp.googleapis.com/AppGateway\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\"\xaa\x08\n\nAppGateway\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12S\n\x06labels\x18\x04 \x03(\x0b\x32>.google.cloud.beyondcorp.appgateways.v1.AppGateway.LabelsEntryB\x03\xe0\x41\x01\x12\x19\n\x0c\x64isplay_name\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x10\n\x03uid\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12J\n\x04type\x18\x07 \x01(\x0e\x32\x37.google.cloud.beyondcorp.appgateways.v1.AppGateway.TypeB\x03\xe0\x41\x02\x12L\n\x05state\x18\x08 \x01(\x0e\x32\x38.google.cloud.beyondcorp.appgateways.v1.AppGateway.StateB\x03\xe0\x41\x03\x12\x10\n\x03uri\x18\t \x01(\tB\x03\xe0\x41\x03\x12j\n\x15\x61llocated_connections\x18\n \x03(\x0b\x32\x46.google.cloud.beyondcorp.appgateways.v1.AppGateway.AllocatedConnectionB\x03\xe0\x41\x03\x12S\n\thost_type\x18\x0b \x01(\x0e\x32;.google.cloud.beyondcorp.appgateways.v1.AppGateway.HostTypeB\x03\xe0\x41\x02\x1a\x46\n\x13\x41llocatedConnection\x12\x14\n\x07psc_uri\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x19\n\x0cingress_port\x18\x02 \x01(\x05\x42\x03\xe0\x41\x02\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"+\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\r\n\tTCP_PROXY\x10\x01\"_\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\x0b\n\x07\x43REATED\x10\x02\x12\x0c\n\x08UPDATING\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\x08\n\x04\x44OWN\x10\x05\";\n\x08HostType\x12\x19\n\x15HOST_TYPE_UNSPECIFIED\x10\x00\x12\x14\n\x10GCP_REGIONAL_MIG\x10\x01:l\xea\x41i\n$beyondcorp.googleapis.com/AppGateway\x12\x41projects/{project}/locations/{location}/appGateways/{app_gateway}\"\x8a\x02\n\x1b\x41ppGatewayOperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\x32\xf6\x07\n\x12\x41ppGatewaysService\x12\xd4\x01\n\x0fListAppGateways\x12>.google.cloud.beyondcorp.appgateways.v1.ListAppGatewaysRequest\x1a?.google.cloud.beyondcorp.appgateways.v1.ListAppGatewaysResponse\"@\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x31\x12//v1/{parent=projects/*/locations/*}/appGateways\x12\xc1\x01\n\rGetAppGateway\x12<.google.cloud.beyondcorp.appgateways.v1.GetAppGatewayRequest\x1a\x32.google.cloud.beyondcorp.appgateways.v1.AppGateway\">\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\x12//v1/{name=projects/*/locations/*/appGateways/*}\x12\x89\x02\n\x10\x43reateAppGateway\x12?.google.cloud.beyondcorp.appgateways.v1.CreateAppGatewayRequest\x1a\x1d.google.longrunning.Operation\"\x94\x01\xca\x41)\n\nAppGateway\x12\x1b\x41ppGatewayOperationMetadata\xda\x41!parent,app_gateway,app_gateway_id\x82\xd3\xe4\x93\x02>\"//v1/{parent=projects/*/locations/*}/appGateways:\x0b\x61pp_gateway\x12\xe9\x01\n\x10\x44\x65leteAppGateway\x12?.google.cloud.beyondcorp.appgateways.v1.DeleteAppGatewayRequest\x1a\x1d.google.longrunning.Operation\"u\xca\x41\x34\n\x15google.protobuf.Empty\x12\x1b\x41ppGatewayOperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31*//v1/{name=projects/*/locations/*/appGateways/*}\x1aM\xca\x41\x19\x62\x65yondcorp.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x94\x02\n*com.google.cloud.beyondcorp.appgateways.v1B\x17\x41ppGatewaysServiceProtoP\x01ZLcloud.google.com/go/beyondcorp/appgateways/apiv1/appgatewayspb;appgatewayspb\xaa\x02&Google.Cloud.BeyondCorp.AppGateways.V1\xca\x02&Google\\Cloud\\BeyondCorp\\AppGateways\\V1\xea\x02*Google::Cloud::BeyondCorp::AppGateways::V1b\x06proto3"

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
    module BeyondCorp
      module AppGateways
        module V1
          ListAppGatewaysRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.appgateways.v1.ListAppGatewaysRequest").msgclass
          ListAppGatewaysResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.appgateways.v1.ListAppGatewaysResponse").msgclass
          GetAppGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.appgateways.v1.GetAppGatewayRequest").msgclass
          CreateAppGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.appgateways.v1.CreateAppGatewayRequest").msgclass
          DeleteAppGatewayRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.appgateways.v1.DeleteAppGatewayRequest").msgclass
          AppGateway = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.appgateways.v1.AppGateway").msgclass
          AppGateway::AllocatedConnection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.appgateways.v1.AppGateway.AllocatedConnection").msgclass
          AppGateway::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.appgateways.v1.AppGateway.Type").enummodule
          AppGateway::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.appgateways.v1.AppGateway.State").enummodule
          AppGateway::HostType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.appgateways.v1.AppGateway.HostType").enummodule
          AppGatewayOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.beyondcorp.appgateways.v1.AppGatewayOperationMetadata").msgclass
        end
      end
    end
  end
end
