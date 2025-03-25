# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/endpoint_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/endpoint_pb'
require 'google/cloud/aiplatform/v1/operation_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n1google/cloud/aiplatform/v1/endpoint_service.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a)google/cloud/aiplatform/v1/endpoint.proto\x1a*google/cloud/aiplatform/v1/operation.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xa9\x01\n\x15\x43reateEndpointRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12;\n\x08\x65ndpoint\x18\x02 \x01(\x0b\x32$.google.cloud.aiplatform.v1.EndpointB\x03\xe0\x41\x02\x12\x18\n\x0b\x65ndpoint_id\x18\x04 \x01(\tB\x03\xe0\x41\x05\"q\n\x1f\x43reateEndpointOperationMetadata\x12N\n\x10generic_metadata\x18\x01 \x01(\x0b\x32\x34.google.cloud.aiplatform.v1.GenericOperationMetadata\"N\n\x12GetEndpointRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\"\xdd\x01\n\x14ListEndpointsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x13\n\x06\x66ilter\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x16\n\tpage_size\x18\x03 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x32\n\tread_mask\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12\x10\n\x08order_by\x18\x06 \x01(\t\"i\n\x15ListEndpointsResponse\x12\x37\n\tendpoints\x18\x01 \x03(\x0b\x32$.google.cloud.aiplatform.v1.Endpoint\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x8a\x01\n\x15UpdateEndpointRequest\x12;\n\x08\x65ndpoint\x18\x01 \x01(\x0b\x32$.google.cloud.aiplatform.v1.EndpointB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"_\n UpdateEndpointLongRunningRequest\x12;\n\x08\x65ndpoint\x18\x01 \x01(\x0b\x32$.google.cloud.aiplatform.v1.EndpointB\x03\xe0\x41\x02\"q\n\x1fUpdateEndpointOperationMetadata\x12N\n\x10generic_metadata\x18\x01 \x01(\x0b\x32\x34.google.cloud.aiplatform.v1.GenericOperationMetadata\"Q\n\x15\x44\x65leteEndpointRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\"\xa8\x02\n\x12\x44\x65ployModelRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\x46\n\x0e\x64\x65ployed_model\x18\x02 \x01(\x0b\x32).google.cloud.aiplatform.v1.DeployedModelB\x03\xe0\x41\x02\x12W\n\rtraffic_split\x18\x03 \x03(\x0b\x32@.google.cloud.aiplatform.v1.DeployModelRequest.TrafficSplitEntry\x1a\x33\n\x11TrafficSplitEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x05:\x02\x38\x01\"X\n\x13\x44\x65ployModelResponse\x12\x41\n\x0e\x64\x65ployed_model\x18\x01 \x01(\x0b\x32).google.cloud.aiplatform.v1.DeployedModel\"n\n\x1c\x44\x65ployModelOperationMetadata\x12N\n\x10generic_metadata\x18\x01 \x01(\x0b\x32\x34.google.cloud.aiplatform.v1.GenericOperationMetadata\"\x84\x02\n\x14UndeployModelRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\x1e\n\x11\x64\x65ployed_model_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12Y\n\rtraffic_split\x18\x03 \x03(\x0b\x32\x42.google.cloud.aiplatform.v1.UndeployModelRequest.TrafficSplitEntry\x1a\x33\n\x11TrafficSplitEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\x05:\x02\x38\x01\"\x17\n\x15UndeployModelResponse\"p\n\x1eUndeployModelOperationMetadata\x12N\n\x10generic_metadata\x18\x01 \x01(\x0b\x32\x34.google.cloud.aiplatform.v1.GenericOperationMetadata\"\xd8\x01\n\x1aMutateDeployedModelRequest\x12<\n\x08\x65ndpoint\x18\x01 \x01(\tB*\xe0\x41\x02\xfa\x41$\n\"aiplatform.googleapis.com/Endpoint\x12\x46\n\x0e\x64\x65ployed_model\x18\x02 \x01(\x0b\x32).google.cloud.aiplatform.v1.DeployedModelB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"`\n\x1bMutateDeployedModelResponse\x12\x41\n\x0e\x64\x65ployed_model\x18\x01 \x01(\x0b\x32).google.cloud.aiplatform.v1.DeployedModel\"v\n$MutateDeployedModelOperationMetadata\x12N\n\x10generic_metadata\x18\x01 \x01(\x0b\x32\x34.google.cloud.aiplatform.v1.GenericOperationMetadata2\xad\x11\n\x0f\x45ndpointService\x12\x82\x02\n\x0e\x43reateEndpoint\x12\x31.google.cloud.aiplatform.v1.CreateEndpointRequest\x1a\x1d.google.longrunning.Operation\"\x9d\x01\xca\x41+\n\x08\x45ndpoint\x12\x1f\x43reateEndpointOperationMetadata\xda\x41\x0fparent,endpoint\xda\x41\x1bparent,endpoint,endpoint_id\x82\xd3\xe4\x93\x02\x39\"-/v1/{parent=projects/*/locations/*}/endpoints:\x08\x65ndpoint\x12\xa1\x01\n\x0bGetEndpoint\x12..google.cloud.aiplatform.v1.GetEndpointRequest\x1a$.google.cloud.aiplatform.v1.Endpoint\"<\xda\x41\x04name\x82\xd3\xe4\x93\x02/\x12-/v1/{name=projects/*/locations/*/endpoints/*}\x12\xb4\x01\n\rListEndpoints\x12\x30.google.cloud.aiplatform.v1.ListEndpointsRequest\x1a\x31.google.cloud.aiplatform.v1.ListEndpointsResponse\">\xda\x41\x06parent\x82\xd3\xe4\x93\x02/\x12-/v1/{parent=projects/*/locations/*}/endpoints\x12\xca\x01\n\x0eUpdateEndpoint\x12\x31.google.cloud.aiplatform.v1.UpdateEndpointRequest\x1a$.google.cloud.aiplatform.v1.Endpoint\"_\xda\x41\x14\x65ndpoint,update_mask\x82\xd3\xe4\x93\x02\x42\x32\x36/v1/{endpoint.name=projects/*/locations/*/endpoints/*}:\x08\x65ndpoint\x12\xfc\x01\n\x19UpdateEndpointLongRunning\x12<.google.cloud.aiplatform.v1.UpdateEndpointLongRunningRequest\x1a\x1d.google.longrunning.Operation\"\x81\x01\xca\x41+\n\x08\x45ndpoint\x12\x1fUpdateEndpointOperationMetadata\xda\x41\x08\x65ndpoint\x82\xd3\xe4\x93\x02\x42\"=/v1/{endpoint.name=projects/*/locations/*/endpoints/*}:update:\x01*\x12\xd3\x01\n\x0e\x44\x65leteEndpoint\x12\x31.google.cloud.aiplatform.v1.DeleteEndpointRequest\x1a\x1d.google.longrunning.Operation\"o\xca\x41\x30\n\x15google.protobuf.Empty\x12\x17\x44\x65leteOperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02/*-/v1/{name=projects/*/locations/*/endpoints/*}\x12\x85\x02\n\x0b\x44\x65ployModel\x12..google.cloud.aiplatform.v1.DeployModelRequest\x1a\x1d.google.longrunning.Operation\"\xa6\x01\xca\x41\x33\n\x13\x44\x65ployModelResponse\x12\x1c\x44\x65ployModelOperationMetadata\xda\x41%endpoint,deployed_model,traffic_split\x82\xd3\xe4\x93\x02\x42\"=/v1/{endpoint=projects/*/locations/*/endpoints/*}:deployModel:\x01*\x12\x92\x02\n\rUndeployModel\x12\x30.google.cloud.aiplatform.v1.UndeployModelRequest\x1a\x1d.google.longrunning.Operation\"\xaf\x01\xca\x41\x37\n\x15UndeployModelResponse\x12\x1eUndeployModelOperationMetadata\xda\x41(endpoint,deployed_model_id,traffic_split\x82\xd3\xe4\x93\x02\x44\"?/v1/{endpoint=projects/*/locations/*/endpoints/*}:undeployModel:\x01*\x12\xab\x02\n\x13MutateDeployedModel\x12\x36.google.cloud.aiplatform.v1.MutateDeployedModelRequest\x1a\x1d.google.longrunning.Operation\"\xbc\x01\xca\x41\x43\n\x1bMutateDeployedModelResponse\x12$MutateDeployedModelOperationMetadata\xda\x41#endpoint,deployed_model,update_mask\x82\xd3\xe4\x93\x02J\"E/v1/{endpoint=projects/*/locations/*/endpoints/*}:mutateDeployedModel:\x01*\x1aM\xca\x41\x19\x61iplatform.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xd2\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x14\x45ndpointServiceProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.cloud.aiplatform.v1.Endpoint", "google/cloud/aiplatform/v1/endpoint.proto"],
    ["google.cloud.aiplatform.v1.GenericOperationMetadata", "google/cloud/aiplatform/v1/operation.proto"],
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
    module AIPlatform
      module V1
        CreateEndpointRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateEndpointRequest").msgclass
        CreateEndpointOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.CreateEndpointOperationMetadata").msgclass
        GetEndpointRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.GetEndpointRequest").msgclass
        ListEndpointsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListEndpointsRequest").msgclass
        ListEndpointsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.ListEndpointsResponse").msgclass
        UpdateEndpointRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateEndpointRequest").msgclass
        UpdateEndpointLongRunningRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateEndpointLongRunningRequest").msgclass
        UpdateEndpointOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UpdateEndpointOperationMetadata").msgclass
        DeleteEndpointRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeleteEndpointRequest").msgclass
        DeployModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeployModelRequest").msgclass
        DeployModelResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeployModelResponse").msgclass
        DeployModelOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.DeployModelOperationMetadata").msgclass
        UndeployModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UndeployModelRequest").msgclass
        UndeployModelResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UndeployModelResponse").msgclass
        UndeployModelOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.UndeployModelOperationMetadata").msgclass
        MutateDeployedModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.MutateDeployedModelRequest").msgclass
        MutateDeployedModelResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.MutateDeployedModelResponse").msgclass
        MutateDeployedModelOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.MutateDeployedModelOperationMetadata").msgclass
      end
    end
  end
end
