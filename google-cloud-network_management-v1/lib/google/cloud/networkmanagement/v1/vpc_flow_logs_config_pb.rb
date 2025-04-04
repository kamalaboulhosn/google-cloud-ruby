# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networkmanagement/v1/vpc_flow_logs_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n<google/cloud/networkmanagement/v1/vpc_flow_logs_config.proto\x12!google.cloud.networkmanagement.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x88\r\n\x11VpcFlowLogsConfig\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x1d\n\x0b\x64\x65scription\x18\x02 \x01(\tB\x03\xe0\x41\x01H\x01\x88\x01\x01\x12S\n\x05state\x18\x03 \x01(\x0e\x32:.google.cloud.networkmanagement.v1.VpcFlowLogsConfig.StateB\x03\xe0\x41\x01H\x02\x88\x01\x01\x12p\n\x14\x61ggregation_interval\x18\x04 \x01(\x0e\x32H.google.cloud.networkmanagement.v1.VpcFlowLogsConfig.AggregationIntervalB\x03\xe0\x41\x01H\x03\x88\x01\x01\x12\x1f\n\rflow_sampling\x18\x05 \x01(\x02\x42\x03\xe0\x41\x01H\x04\x88\x01\x01\x12Y\n\x08metadata\x18\x06 \x01(\x0e\x32=.google.cloud.networkmanagement.v1.VpcFlowLogsConfig.MetadataB\x03\xe0\x41\x01H\x05\x88\x01\x01\x12\x1c\n\x0fmetadata_fields\x18\x07 \x03(\tB\x03\xe0\x41\x01\x12\x1d\n\x0b\x66ilter_expr\x18\x08 \x01(\tB\x03\xe0\x41\x01H\x06\x88\x01\x01\x12q\n\x15target_resource_state\x18\x0c \x01(\x0e\x32H.google.cloud.networkmanagement.v1.VpcFlowLogsConfig.TargetResourceStateB\x03\xe0\x41\x03H\x07\x88\x01\x01\x12!\n\x17interconnect_attachment\x18\x66 \x01(\tH\x00\x12\x14\n\nvpn_tunnel\x18g \x01(\tH\x00\x12U\n\x06labels\x18\x0b \x03(\x0b\x32@.google.cloud.networkmanagement.v1.VpcFlowLogsConfig.LabelsEntryB\x03\xe0\x41\x01\x12\x34\n\x0b\x63reate_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\n \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"9\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x45NABLED\x10\x01\x12\x0c\n\x08\x44ISABLED\x10\x02\"\xb6\x01\n\x13\x41ggregationInterval\x12$\n AGGREGATION_INTERVAL_UNSPECIFIED\x10\x00\x12\x12\n\x0eINTERVAL_5_SEC\x10\x01\x12\x13\n\x0fINTERVAL_30_SEC\x10\x02\x12\x12\n\x0eINTERVAL_1_MIN\x10\x03\x12\x12\n\x0eINTERVAL_5_MIN\x10\x04\x12\x13\n\x0fINTERVAL_10_MIN\x10\x05\x12\x13\n\x0fINTERVAL_15_MIN\x10\x06\"m\n\x08Metadata\x12\x18\n\x14METADATA_UNSPECIFIED\x10\x00\x12\x18\n\x14INCLUDE_ALL_METADATA\x10\x01\x12\x18\n\x14\x45XCLUDE_ALL_METADATA\x10\x02\x12\x13\n\x0f\x43USTOM_METADATA\x10\x03\"|\n\x13TargetResourceState\x12%\n!TARGET_RESOURCE_STATE_UNSPECIFIED\x10\x00\x12\x1a\n\x16TARGET_RESOURCE_EXISTS\x10\x01\x12\"\n\x1eTARGET_RESOURCE_DOES_NOT_EXIST\x10\x02:\xb2\x01\xea\x41\xae\x01\n2networkmanagement.googleapis.com/VpcFlowLogsConfig\x12Qprojects/{project}/locations/{location}/vpcFlowLogsConfigs/{vpc_flow_logs_config}*\x12vpcFlowLogsConfigs2\x11vpcFlowLogsConfigB\x11\n\x0ftarget_resourceB\x0e\n\x0c_descriptionB\x08\n\x06_stateB\x17\n\x15_aggregation_intervalB\x10\n\x0e_flow_samplingB\x0b\n\t_metadataB\x0e\n\x0c_filter_exprB\x18\n\x16_target_resource_stateB\x85\x02\n%com.google.cloud.networkmanagement.v1B\x16VpcFlowLogsConfigProtoP\x01ZScloud.google.com/go/networkmanagement/apiv1/networkmanagementpb;networkmanagementpb\xaa\x02!Google.Cloud.NetworkManagement.V1\xca\x02!Google\\Cloud\\NetworkManagement\\V1\xea\x02$Google::Cloud::NetworkManagement::V1b\x06proto3"

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
    module NetworkManagement
      module V1
        VpcFlowLogsConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.VpcFlowLogsConfig").msgclass
        VpcFlowLogsConfig::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.VpcFlowLogsConfig.State").enummodule
        VpcFlowLogsConfig::AggregationInterval = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.VpcFlowLogsConfig.AggregationInterval").enummodule
        VpcFlowLogsConfig::Metadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.VpcFlowLogsConfig.Metadata").enummodule
        VpcFlowLogsConfig::TargetResourceState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networkmanagement.v1.VpcFlowLogsConfig.TargetResourceState").enummodule
      end
    end
  end
end
