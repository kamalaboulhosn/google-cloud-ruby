# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networkservices/v1/grpc_route.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n0google/cloud/networkservices/v1/grpc_route.proto\x12\x1fgoogle.cloud.networkservices.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x8c\x13\n\tGrpcRoute\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\tself_link\x18\x0c \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12K\n\x06labels\x18\x04 \x03(\x0b\x32\x36.google.cloud.networkservices.v1.GrpcRoute.LabelsEntryB\x03\xe0\x41\x01\x12\x18\n\x0b\x64\x65scription\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x16\n\thostnames\x18\x06 \x03(\tB\x03\xe0\x41\x02\x12;\n\x06meshes\x18\t \x03(\tB+\xe0\x41\x01\xfa\x41%\n#networkservices.googleapis.com/Mesh\x12@\n\x08gateways\x18\n \x03(\tB.\xe0\x41\x01\xfa\x41(\n&networkservices.googleapis.com/Gateway\x12H\n\x05rules\x18\x07 \x03(\x0b\x32\x34.google.cloud.networkservices.v1.GrpcRoute.RouteRuleB\x03\xe0\x41\x02\x1a\x88\x02\n\x0bMethodMatch\x12N\n\x04type\x18\x01 \x01(\x0e\x32;.google.cloud.networkservices.v1.GrpcRoute.MethodMatch.TypeB\x03\xe0\x41\x01\x12\x19\n\x0cgrpc_service\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0bgrpc_method\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12 \n\x0e\x63\x61se_sensitive\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01H\x00\x88\x01\x01\"?\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05\x45XACT\x10\x01\x12\x16\n\x12REGULAR_EXPRESSION\x10\x02\x42\x11\n\x0f_case_sensitive\x1a\xc4\x01\n\x0bHeaderMatch\x12N\n\x04type\x18\x01 \x01(\x0e\x32;.google.cloud.networkservices.v1.GrpcRoute.HeaderMatch.TypeB\x03\xe0\x41\x01\x12\x10\n\x03key\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\x05value\x18\x03 \x01(\tB\x03\xe0\x41\x02\"?\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05\x45XACT\x10\x01\x12\x16\n\x12REGULAR_EXPRESSION\x10\x02\x1a\xb7\x01\n\nRouteMatch\x12P\n\x06method\x18\x01 \x01(\x0b\x32\x36.google.cloud.networkservices.v1.GrpcRoute.MethodMatchB\x03\xe0\x41\x01H\x00\x88\x01\x01\x12L\n\x07headers\x18\x02 \x03(\x0b\x32\x36.google.cloud.networkservices.v1.GrpcRoute.HeaderMatchB\x03\xe0\x41\x01\x42\t\n\x07_method\x1a\x8d\x01\n\x0b\x44\x65stination\x12\x45\n\x0cservice_name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%compute.googleapis.com/BackendServiceH\x00\x12\x18\n\x06weight\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01H\x01\x88\x01\x01\x42\x12\n\x10\x64\x65stination_typeB\t\n\x07_weight\x1a\xb1\x03\n\x14\x46\x61ultInjectionPolicy\x12Y\n\x05\x64\x65lay\x18\x01 \x01(\x0b\x32\x45.google.cloud.networkservices.v1.GrpcRoute.FaultInjectionPolicy.DelayH\x00\x88\x01\x01\x12Y\n\x05\x61\x62ort\x18\x02 \x01(\x0b\x32\x45.google.cloud.networkservices.v1.GrpcRoute.FaultInjectionPolicy.AbortH\x01\x88\x01\x01\x1at\n\x05\x44\x65lay\x12\x33\n\x0b\x66ixed_delay\x18\x01 \x01(\x0b\x32\x19.google.protobuf.DurationH\x00\x88\x01\x01\x12\x17\n\npercentage\x18\x02 \x01(\x05H\x01\x88\x01\x01\x42\x0e\n\x0c_fixed_delayB\r\n\x0b_percentage\x1aY\n\x05\x41\x62ort\x12\x18\n\x0bhttp_status\x18\x01 \x01(\x05H\x00\x88\x01\x01\x12\x17\n\npercentage\x18\x02 \x01(\x05H\x01\x88\x01\x01\x42\x0e\n\x0c_http_statusB\r\n\x0b_percentageB\x08\n\x06_delayB\x08\n\x06_abort\x1a<\n\x0bRetryPolicy\x12\x18\n\x10retry_conditions\x18\x01 \x03(\t\x12\x13\n\x0bnum_retries\x18\x02 \x01(\r\x1a\xca\x02\n\x0bRouteAction\x12Q\n\x0c\x64\x65stinations\x18\x01 \x03(\x0b\x32\x36.google.cloud.networkservices.v1.GrpcRoute.DestinationB\x03\xe0\x41\x01\x12\x64\n\x16\x66\x61ult_injection_policy\x18\x03 \x01(\x0b\x32?.google.cloud.networkservices.v1.GrpcRoute.FaultInjectionPolicyB\x03\xe0\x41\x01\x12/\n\x07timeout\x18\x07 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\x12Q\n\x0cretry_policy\x18\x08 \x01(\x0b\x32\x36.google.cloud.networkservices.v1.GrpcRoute.RetryPolicyB\x03\xe0\x41\x01\x1a\xa5\x01\n\tRouteRule\x12K\n\x07matches\x18\x01 \x03(\x0b\x32\x35.google.cloud.networkservices.v1.GrpcRoute.RouteMatchB\x03\xe0\x41\x01\x12K\n\x06\x61\x63tion\x18\x02 \x01(\x0b\x32\x36.google.cloud.networkservices.v1.GrpcRoute.RouteActionB\x03\xe0\x41\x02\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:n\xea\x41k\n(networkservices.googleapis.com/GrpcRoute\x12?projects/{project}/locations/{location}/grpcRoutes/{grpc_route}\"\x80\x01\n\x15ListGrpcRoutesRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(networkservices.googleapis.com/GrpcRoute\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"r\n\x16ListGrpcRoutesResponse\x12?\n\x0bgrpc_routes\x18\x01 \x03(\x0b\x32*.google.cloud.networkservices.v1.GrpcRoute\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"U\n\x13GetGrpcRouteRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(networkservices.googleapis.com/GrpcRoute\"\xbb\x01\n\x16\x43reateGrpcRouteRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\x12(networkservices.googleapis.com/GrpcRoute\x12\x1a\n\rgrpc_route_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x43\n\ngrpc_route\x18\x03 \x01(\x0b\x32*.google.cloud.networkservices.v1.GrpcRouteB\x03\xe0\x41\x02\"\x93\x01\n\x16UpdateGrpcRouteRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12\x43\n\ngrpc_route\x18\x02 \x01(\x0b\x32*.google.cloud.networkservices.v1.GrpcRouteB\x03\xe0\x41\x02\"X\n\x16\x44\x65leteGrpcRouteRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(networkservices.googleapis.com/GrpcRouteB\xef\x01\n#com.google.cloud.networkservices.v1B\x0eGrpcRouteProtoP\x01ZMcloud.google.com/go/networkservices/apiv1/networkservicespb;networkservicespb\xaa\x02\x1fGoogle.Cloud.NetworkServices.V1\xca\x02\x1fGoogle\\Cloud\\NetworkServices\\V1\xea\x02\"Google::Cloud::NetworkServices::V1b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module NetworkServices
      module V1
        GrpcRoute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute").msgclass
        GrpcRoute::MethodMatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute.MethodMatch").msgclass
        GrpcRoute::MethodMatch::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute.MethodMatch.Type").enummodule
        GrpcRoute::HeaderMatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute.HeaderMatch").msgclass
        GrpcRoute::HeaderMatch::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute.HeaderMatch.Type").enummodule
        GrpcRoute::RouteMatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute.RouteMatch").msgclass
        GrpcRoute::Destination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute.Destination").msgclass
        GrpcRoute::FaultInjectionPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute.FaultInjectionPolicy").msgclass
        GrpcRoute::FaultInjectionPolicy::Delay = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute.FaultInjectionPolicy.Delay").msgclass
        GrpcRoute::FaultInjectionPolicy::Abort = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute.FaultInjectionPolicy.Abort").msgclass
        GrpcRoute::RetryPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute.RetryPolicy").msgclass
        GrpcRoute::RouteAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute.RouteAction").msgclass
        GrpcRoute::RouteRule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GrpcRoute.RouteRule").msgclass
        ListGrpcRoutesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.ListGrpcRoutesRequest").msgclass
        ListGrpcRoutesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.ListGrpcRoutesResponse").msgclass
        GetGrpcRouteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.GetGrpcRouteRequest").msgclass
        CreateGrpcRouteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.CreateGrpcRouteRequest").msgclass
        UpdateGrpcRouteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.UpdateGrpcRouteRequest").msgclass
        DeleteGrpcRouteRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkservices.v1.DeleteGrpcRouteRequest").msgclass
      end
    end
  end
end
