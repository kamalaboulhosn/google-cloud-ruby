# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/managedkafka/v1/managed_kafka.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/field_info_pb'
require 'google/api/resource_pb'
require 'google/cloud/managedkafka/v1/resources_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n0google/cloud/managedkafka/v1/managed_kafka.proto\x12\x1cgoogle.cloud.managedkafka.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1bgoogle/api/field_info.proto\x1a\x19google/api/resource.proto\x1a,google/cloud/managedkafka/v1/resources.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xaf\x01\n\x13ListClustersRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#managedkafka.googleapis.com/Cluster\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"}\n\x14ListClustersResponse\x12\x37\n\x08\x63lusters\x18\x01 \x03(\x0b\x32%.google.cloud.managedkafka.v1.Cluster\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"N\n\x11GetClusterRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#managedkafka.googleapis.com/Cluster\"\xca\x01\n\x14\x43reateClusterRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#managedkafka.googleapis.com/Cluster\x12\x17\n\ncluster_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12;\n\x07\x63luster\x18\x03 \x01(\x0b\x32%.google.cloud.managedkafka.v1.ClusterB\x03\xe0\x41\x02\x12\x1f\n\nrequest_id\x18\x04 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"\xaa\x01\n\x14UpdateClusterRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12;\n\x07\x63luster\x18\x02 \x01(\x0b\x32%.google.cloud.managedkafka.v1.ClusterB\x03\xe0\x41\x02\x12\x1f\n\nrequest_id\x18\x03 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"r\n\x14\x44\x65leteClusterRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#managedkafka.googleapis.com/Cluster\x12\x1f\n\nrequest_id\x18\x02 \x01(\tB\x0b\xe0\x41\x01\xe2\x8c\xcf\xd7\x08\x02\x08\x01\"\x7f\n\x11ListTopicsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\x12!managedkafka.googleapis.com/Topic\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"b\n\x12ListTopicsResponse\x12\x33\n\x06topics\x18\x01 \x03(\x0b\x32#.google.cloud.managedkafka.v1.Topic\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"J\n\x0fGetTopicRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!managedkafka.googleapis.com/Topic\"\x9f\x01\n\x12\x43reateTopicRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\x12!managedkafka.googleapis.com/Topic\x12\x15\n\x08topic_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x37\n\x05topic\x18\x03 \x01(\x0b\x32#.google.cloud.managedkafka.v1.TopicB\x03\xe0\x41\x02\"\x83\x01\n\x12UpdateTopicRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x37\n\x05topic\x18\x02 \x01(\x0b\x32#.google.cloud.managedkafka.v1.TopicB\x03\xe0\x41\x02\"M\n\x12\x44\x65leteTopicRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!managedkafka.googleapis.com/Topic\"\x8f\x01\n\x19ListConsumerGroupsRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\x12)managedkafka.googleapis.com/ConsumerGroup\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"{\n\x1aListConsumerGroupsResponse\x12\x44\n\x0f\x63onsumer_groups\x18\x01 \x03(\x0b\x32+.google.cloud.managedkafka.v1.ConsumerGroup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"Z\n\x17GetConsumerGroupRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)managedkafka.googleapis.com/ConsumerGroup\"\x9c\x01\n\x1aUpdateConsumerGroupRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12H\n\x0e\x63onsumer_group\x18\x02 \x01(\x0b\x32+.google.cloud.managedkafka.v1.ConsumerGroupB\x03\xe0\x41\x02\"]\n\x1a\x44\x65leteConsumerGroupRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)managedkafka.googleapis.com/ConsumerGroup2\xb5\x16\n\x0cManagedKafka\x12\xb4\x01\n\x0cListClusters\x12\x31.google.cloud.managedkafka.v1.ListClustersRequest\x1a\x32.google.cloud.managedkafka.v1.ListClustersResponse\"=\xda\x41\x06parent\x82\xd3\xe4\x93\x02.\x12,/v1/{parent=projects/*/locations/*}/clusters\x12\xa1\x01\n\nGetCluster\x12/.google.cloud.managedkafka.v1.GetClusterRequest\x1a%.google.cloud.managedkafka.v1.Cluster\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v1/{name=projects/*/locations/*/clusters/*}\x12\xdc\x01\n\rCreateCluster\x12\x32.google.cloud.managedkafka.v1.CreateClusterRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x19parent,cluster,cluster_id\x82\xd3\xe4\x93\x02\x37\",/v1/{parent=projects/*/locations/*}/clusters:\x07\x63luster\x12\xde\x01\n\rUpdateCluster\x12\x32.google.cloud.managedkafka.v1.UpdateClusterRequest\x1a\x1d.google.longrunning.Operation\"z\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x13\x63luster,update_mask\x82\xd3\xe4\x93\x02?24/v1/{cluster.name=projects/*/locations/*/clusters/*}:\x07\x63luster\x12\xcc\x01\n\rDeleteCluster\x12\x32.google.cloud.managedkafka.v1.DeleteClusterRequest\x1a\x1d.google.longrunning.Operation\"h\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02.*,/v1/{name=projects/*/locations/*/clusters/*}\x12\xb7\x01\n\nListTopics\x12/.google.cloud.managedkafka.v1.ListTopicsRequest\x1a\x30.google.cloud.managedkafka.v1.ListTopicsResponse\"F\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x37\x12\x35/v1/{parent=projects/*/locations/*/clusters/*}/topics\x12\xa4\x01\n\x08GetTopic\x12-.google.cloud.managedkafka.v1.GetTopicRequest\x1a#.google.cloud.managedkafka.v1.Topic\"D\xda\x41\x04name\x82\xd3\xe4\x93\x02\x37\x12\x35/v1/{name=projects/*/locations/*/clusters/*/topics/*}\x12\xc2\x01\n\x0b\x43reateTopic\x12\x30.google.cloud.managedkafka.v1.CreateTopicRequest\x1a#.google.cloud.managedkafka.v1.Topic\"\\\xda\x41\x15parent,topic,topic_id\x82\xd3\xe4\x93\x02>\"5/v1/{parent=projects/*/locations/*/clusters/*}/topics:\x05topic\x12\xc4\x01\n\x0bUpdateTopic\x12\x30.google.cloud.managedkafka.v1.UpdateTopicRequest\x1a#.google.cloud.managedkafka.v1.Topic\"^\xda\x41\x11topic,update_mask\x82\xd3\xe4\x93\x02\x44\x32;/v1/{topic.name=projects/*/locations/*/clusters/*/topics/*}:\x05topic\x12\x9d\x01\n\x0b\x44\x65leteTopic\x12\x30.google.cloud.managedkafka.v1.DeleteTopicRequest\x1a\x16.google.protobuf.Empty\"D\xda\x41\x04name\x82\xd3\xe4\x93\x02\x37*5/v1/{name=projects/*/locations/*/clusters/*/topics/*}\x12\xd7\x01\n\x12ListConsumerGroups\x12\x37.google.cloud.managedkafka.v1.ListConsumerGroupsRequest\x1a\x38.google.cloud.managedkafka.v1.ListConsumerGroupsResponse\"N\xda\x41\x06parent\x82\xd3\xe4\x93\x02?\x12=/v1/{parent=projects/*/locations/*/clusters/*}/consumerGroups\x12\xc5\x01\n\x10GetConsumerGroup\x12\x35.google.cloud.managedkafka.v1.GetConsumerGroupRequest\x1a+.google.cloud.managedkafka.v1.ConsumerGroup\"M\xda\x41\x04name\x82\xd3\xe4\x93\x02@\x12>/v1/{name=projects/*/locations/*/clusters/*/consumerGroups/**}\x12\x81\x02\n\x13UpdateConsumerGroup\x12\x38.google.cloud.managedkafka.v1.UpdateConsumerGroupRequest\x1a+.google.cloud.managedkafka.v1.ConsumerGroup\"\x82\x01\xda\x41\x1a\x63onsumer_group,update_mask\x82\xd3\xe4\x93\x02_2M/v1/{consumer_group.name=projects/*/locations/*/clusters/*/consumerGroups/**}:\x0e\x63onsumer_group\x12\xb6\x01\n\x13\x44\x65leteConsumerGroup\x12\x38.google.cloud.managedkafka.v1.DeleteConsumerGroupRequest\x1a\x16.google.protobuf.Empty\"M\xda\x41\x04name\x82\xd3\xe4\x93\x02@*>/v1/{name=projects/*/locations/*/clusters/*/consumerGroups/**}\x1aO\xca\x41\x1bmanagedkafka.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xdd\x01\n com.google.cloud.managedkafka.v1B\x11ManagedKafkaProtoP\x01ZDcloud.google.com/go/managedkafka/apiv1/managedkafkapb;managedkafkapb\xaa\x02\x1cGoogle.Cloud.ManagedKafka.V1\xca\x02\x1cGoogle\\Cloud\\ManagedKafka\\V1\xea\x02\x1fGoogle::Cloud::ManagedKafka::V1b\x06proto3"

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
    ["google.cloud.managedkafka.v1.Cluster", "google/cloud/managedkafka/v1/resources.proto"],
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
    module ManagedKafka
      module V1
        ListClustersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.ListClustersRequest").msgclass
        ListClustersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.ListClustersResponse").msgclass
        GetClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.GetClusterRequest").msgclass
        CreateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.CreateClusterRequest").msgclass
        UpdateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.UpdateClusterRequest").msgclass
        DeleteClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.DeleteClusterRequest").msgclass
        ListTopicsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.ListTopicsRequest").msgclass
        ListTopicsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.ListTopicsResponse").msgclass
        GetTopicRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.GetTopicRequest").msgclass
        CreateTopicRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.CreateTopicRequest").msgclass
        UpdateTopicRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.UpdateTopicRequest").msgclass
        DeleteTopicRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.DeleteTopicRequest").msgclass
        ListConsumerGroupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.ListConsumerGroupsRequest").msgclass
        ListConsumerGroupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.ListConsumerGroupsResponse").msgclass
        GetConsumerGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.GetConsumerGroupRequest").msgclass
        UpdateConsumerGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.UpdateConsumerGroupRequest").msgclass
        DeleteConsumerGroupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedkafka.v1.DeleteConsumerGroupRequest").msgclass
      end
    end
  end
end
