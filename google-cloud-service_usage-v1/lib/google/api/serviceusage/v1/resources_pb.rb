# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/serviceusage/v1/resources.proto

require 'google/protobuf'

require 'google/api/auth_pb'
require 'google/api/documentation_pb'
require 'google/api/endpoint_pb'
require 'google/api/monitored_resource_pb'
require 'google/api/monitoring_pb'
require 'google/api/quota_pb'
require 'google/api/resource_pb'
require 'google/api/usage_pb'
require 'google/protobuf/api_pb'


descriptor_data = "\n*google/api/serviceusage/v1/resources.proto\x12\x1agoogle.api.serviceusage.v1\x1a\x15google/api/auth.proto\x1a\x1egoogle/api/documentation.proto\x1a\x19google/api/endpoint.proto\x1a#google/api/monitored_resource.proto\x1a\x1bgoogle/api/monitoring.proto\x1a\x16google/api/quota.proto\x1a\x19google/api/resource.proto\x1a\x16google/api/usage.proto\x1a\x19google/protobuf/api.proto\"\xbd\x02\n\x07Service\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0e\n\x06parent\x18\x05 \x01(\t\x12\x39\n\x06\x63onfig\x18\x02 \x01(\x0b\x32).google.api.serviceusage.v1.ServiceConfig\x12\x30\n\x05state\x18\x04 \x01(\x0e\x32!.google.api.serviceusage.v1.State:\xa6\x01\xea\x41\xa2\x01\n#serviceusage.googleapis.com/Service\x12%projects/{project}/services/{service}\x12#folders/{folder}/services/{service}\x12/organizations/{organization}/services/{service}\"\x95\x03\n\rServiceConfig\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\r\n\x05title\x18\x02 \x01(\t\x12\"\n\x04\x61pis\x18\x03 \x03(\x0b\x32\x14.google.protobuf.Api\x12\x30\n\rdocumentation\x18\x06 \x01(\x0b\x32\x19.google.api.Documentation\x12 \n\x05quota\x18\n \x01(\x0b\x32\x11.google.api.Quota\x12\x32\n\x0e\x61uthentication\x18\x0b \x01(\x0b\x32\x1a.google.api.Authentication\x12 \n\x05usage\x18\x0f \x01(\x0b\x32\x11.google.api.Usage\x12\'\n\tendpoints\x18\x12 \x03(\x0b\x32\x14.google.api.Endpoint\x12\x44\n\x13monitored_resources\x18\x19 \x03(\x0b\x32\'.google.api.MonitoredResourceDescriptor\x12*\n\nmonitoring\x18\x1c \x01(\x0b\x32\x16.google.api.Monitoring\"+\n\x11OperationMetadata\x12\x16\n\x0eresource_names\x18\x02 \x03(\t*9\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44ISABLED\x10\x01\x12\x0b\n\x07\x45NABLED\x10\x02\x42\xd8\x01\n\x1e\x63om.google.api.serviceusage.v1B\x0eResourcesProtoP\x01ZDcloud.google.com/go/serviceusage/apiv1/serviceusagepb;serviceusagepb\xaa\x02\x1cGoogle.Cloud.ServiceUsage.V1\xca\x02\x1cGoogle\\Cloud\\ServiceUsage\\V1\xea\x02\x1fGoogle::Cloud::ServiceUsage::V1b\x06proto3"

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
    ["google.protobuf.Api", "google/protobuf/api.proto"],
    ["google.api.Documentation", "google/api/documentation.proto"],
    ["google.api.Quota", "google/api/quota.proto"],
    ["google.api.Authentication", "google/api/auth.proto"],
    ["google.api.Usage", "google/api/usage.proto"],
    ["google.api.Endpoint", "google/api/endpoint.proto"],
    ["google.api.MonitoredResourceDescriptor", "google/api/monitored_resource.proto"],
    ["google.api.Monitoring", "google/api/monitoring.proto"],
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
    module ServiceUsage
      module V1
        Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.serviceusage.v1.Service").msgclass
        ServiceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.serviceusage.v1.ServiceConfig").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.serviceusage.v1.OperationMetadata").msgclass
        State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.serviceusage.v1.State").enummodule
      end
    end
  end
end
