# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/spanner/admin/instance/v1/spanner_instance_admin.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/spanner/admin/instance/v1/common_pb'


descriptor_data = "\n=google/spanner/admin/instance/v1/spanner_instance_admin.proto\x12 google.spanner.admin.instance.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a-google/spanner/admin/instance/v1/common.proto\"\xda\x01\n\x0bReplicaInfo\x12\x10\n\x08location\x18\x01 \x01(\t\x12G\n\x04type\x18\x02 \x01(\x0e\x32\x39.google.spanner.admin.instance.v1.ReplicaInfo.ReplicaType\x12\x1f\n\x17\x64\x65\x66\x61ult_leader_location\x18\x03 \x01(\x08\"O\n\x0bReplicaType\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x0e\n\nREAD_WRITE\x10\x01\x12\r\n\tREAD_ONLY\x10\x02\x12\x0b\n\x07WITNESS\x10\x03\"\xbe\x06\n\x0eInstanceConfig\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12O\n\x0b\x63onfig_type\x18\x05 \x01(\x0e\x32\x35.google.spanner.admin.instance.v1.InstanceConfig.TypeB\x03\xe0\x41\x03\x12?\n\x08replicas\x18\x03 \x03(\x0b\x32-.google.spanner.admin.instance.v1.ReplicaInfo\x12M\n\x11optional_replicas\x18\x06 \x03(\x0b\x32-.google.spanner.admin.instance.v1.ReplicaInfoB\x03\xe0\x41\x03\x12?\n\x0b\x62\x61se_config\x18\x07 \x01(\tB*\xfa\x41\'\n%spanner.googleapis.com/InstanceConfig\x12L\n\x06labels\x18\x08 \x03(\x0b\x32<.google.spanner.admin.instance.v1.InstanceConfig.LabelsEntry\x12\x0c\n\x04\x65tag\x18\t \x01(\t\x12\x16\n\x0eleader_options\x18\x04 \x03(\t\x12\x18\n\x0breconciling\x18\n \x01(\x08\x42\x03\xe0\x41\x03\x12J\n\x05state\x18\x0b \x01(\x0e\x32\x36.google.spanner.admin.instance.v1.InstanceConfig.StateB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"B\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\x12\n\x0eGOOGLE_MANAGED\x10\x01\x12\x10\n\x0cUSER_MANAGED\x10\x02\"7\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\t\n\x05READY\x10\x02:`\xea\x41]\n%spanner.googleapis.com/InstanceConfig\x12\x34projects/{project}/instanceConfigs/{instance_config}\"\xf3\x03\n\x11\x41utoscalingConfig\x12\x66\n\x12\x61utoscaling_limits\x18\x01 \x01(\x0b\x32\x45.google.spanner.admin.instance.v1.AutoscalingConfig.AutoscalingLimitsB\x03\xe0\x41\x02\x12h\n\x13\x61utoscaling_targets\x18\x02 \x01(\x0b\x32\x46.google.spanner.admin.instance.v1.AutoscalingConfig.AutoscalingTargetsB\x03\xe0\x41\x02\x1a\x97\x01\n\x11\x41utoscalingLimits\x12\x13\n\tmin_nodes\x18\x01 \x01(\x05H\x00\x12\x1e\n\x14min_processing_units\x18\x02 \x01(\x05H\x00\x12\x13\n\tmax_nodes\x18\x03 \x01(\x05H\x01\x12\x1e\n\x14max_processing_units\x18\x04 \x01(\x05H\x01\x42\x0b\n\tmin_limitB\x0b\n\tmax_limit\x1ar\n\x12\x41utoscalingTargets\x12\x32\n%high_priority_cpu_utilization_percent\x18\x01 \x01(\x05\x42\x03\xe0\x41\x02\x12(\n\x1bstorage_utilization_percent\x18\x02 \x01(\x05\x42\x03\xe0\x41\x02\"\xc3\x05\n\x08Instance\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12=\n\x06\x63onfig\x18\x02 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%spanner.googleapis.com/InstanceConfig\x12\x19\n\x0c\x64isplay_name\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x12\n\nnode_count\x18\x05 \x01(\x05\x12\x18\n\x10processing_units\x18\t \x01(\x05\x12T\n\x12\x61utoscaling_config\x18\x11 \x01(\x0b\x32\x33.google.spanner.admin.instance.v1.AutoscalingConfigB\x03\xe0\x41\x01\x12\x44\n\x05state\x18\x06 \x01(\x0e\x32\x30.google.spanner.admin.instance.v1.Instance.StateB\x03\xe0\x41\x03\x12\x46\n\x06labels\x18\x07 \x03(\x0b\x32\x36.google.spanner.admin.instance.v1.Instance.LabelsEntry\x12\x15\n\rendpoint_uris\x18\x08 \x03(\t\x12\x34\n\x0b\x63reate_time\x18\x0b \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x0c \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"7\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\t\n\x05READY\x10\x02:M\xea\x41J\n\x1fspanner.googleapis.com/Instance\x12\'projects/{project}/instances/{instance}\"\x88\x01\n\x1aListInstanceConfigsRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x82\x01\n\x1bListInstanceConfigsResponse\x12J\n\x10instance_configs\x18\x01 \x03(\x0b\x32\x30.google.spanner.admin.instance.v1.InstanceConfig\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"W\n\x18GetInstanceConfigRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%spanner.googleapis.com/InstanceConfig\"\xea\x01\n\x1b\x43reateInstanceConfigRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x1f\n\x12instance_config_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12N\n\x0finstance_config\x18\x03 \x01(\x0b\x32\x30.google.spanner.admin.instance.v1.InstanceConfigB\x03\xe0\x41\x02\x12\x15\n\rvalidate_only\x18\x04 \x01(\x08\"\xba\x01\n\x1bUpdateInstanceConfigRequest\x12N\n\x0finstance_config\x18\x01 \x01(\x0b\x32\x30.google.spanner.admin.instance.v1.InstanceConfigB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x15\n\rvalidate_only\x18\x03 \x01(\x08\"\x7f\n\x1b\x44\x65leteInstanceConfigRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%spanner.googleapis.com/InstanceConfig\x12\x0c\n\x04\x65tag\x18\x02 \x01(\t\x12\x15\n\rvalidate_only\x18\x03 \x01(\x08\"\xa1\x01\n#ListInstanceConfigOperationsRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"r\n$ListInstanceConfigOperationsResponse\x12\x31\n\noperations\x18\x01 \x03(\x0b\x32\x1d.google.longrunning.Operation\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"{\n\x12GetInstanceRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Instance\x12.\n\nfield_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"\xb9\x01\n\x15\x43reateInstanceRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x41\n\x08instance\x18\x03 \x01(\x0b\x32*.google.spanner.admin.instance.v1.InstanceB\x03\xe0\x41\x02\"\xc9\x01\n\x14ListInstancesRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x35\n\x11instance_deadline\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x84\x01\n\x15ListInstancesResponse\x12=\n\tinstances\x18\x01 \x03(\x0b\x32*.google.spanner.admin.instance.v1.Instance\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\x8f\x01\n\x15UpdateInstanceRequest\x12\x41\n\x08instance\x18\x01 \x01(\x0b\x32*.google.spanner.admin.instance.v1.InstanceB\x03\xe0\x41\x02\x12\x33\n\nfield_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"N\n\x15\x44\x65leteInstanceRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Instance\"\xbf\x02\n\x16\x43reateInstanceMetadata\x12<\n\x08instance\x18\x01 \x01(\x0b\x32*.google.spanner.admin.instance.v1.Instance\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x63\x61ncel_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12X\n\x1b\x65xpected_fulfillment_period\x18\x05 \x01(\x0e\x32\x33.google.spanner.admin.instance.v1.FulfillmentPeriod\"\xbf\x02\n\x16UpdateInstanceMetadata\x12<\n\x08instance\x18\x01 \x01(\x0b\x32*.google.spanner.admin.instance.v1.Instance\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x63\x61ncel_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12X\n\x1b\x65xpected_fulfillment_period\x18\x05 \x01(\x0e\x32\x33.google.spanner.admin.instance.v1.FulfillmentPeriod\"\xe1\x01\n\x1c\x43reateInstanceConfigMetadata\x12I\n\x0finstance_config\x18\x01 \x01(\x0b\x32\x30.google.spanner.admin.instance.v1.InstanceConfig\x12\x45\n\x08progress\x18\x02 \x01(\x0b\x32\x33.google.spanner.admin.instance.v1.OperationProgress\x12/\n\x0b\x63\x61ncel_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xe1\x01\n\x1cUpdateInstanceConfigMetadata\x12I\n\x0finstance_config\x18\x01 \x01(\x0b\x32\x30.google.spanner.admin.instance.v1.InstanceConfig\x12\x45\n\x08progress\x18\x02 \x01(\x0b\x32\x33.google.spanner.admin.instance.v1.OperationProgress\x12/\n\x0b\x63\x61ncel_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x8e\x05\n\x11InstancePartition\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12=\n\x06\x63onfig\x18\x02 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%spanner.googleapis.com/InstanceConfig\x12\x19\n\x0c\x64isplay_name\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\nnode_count\x18\x05 \x01(\x05H\x00\x12\x1a\n\x10processing_units\x18\x06 \x01(\x05H\x00\x12M\n\x05state\x18\x07 \x01(\x0e\x32\x39.google.spanner.admin.instance.v1.InstancePartition.StateB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\"\n\x15referencing_databases\x18\n \x03(\tB\x03\xe0\x41\x03\x12 \n\x13referencing_backups\x18\x0b \x03(\tB\x03\xe0\x41\x03\x12\x0c\n\x04\x65tag\x18\x0c \x01(\t\"7\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\t\n\x05READY\x10\x02:~\xea\x41{\n(spanner.googleapis.com/InstancePartition\x12Oprojects/{project}/instances/{instance}/instancePartitions/{instance_partition}B\x12\n\x10\x63ompute_capacity\"\x81\x02\n\x1f\x43reateInstancePartitionMetadata\x12O\n\x12instance_partition\x18\x01 \x01(\x0b\x32\x33.google.spanner.admin.instance.v1.InstancePartition\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x63\x61ncel_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xd3\x01\n\x1e\x43reateInstancePartitionRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Instance\x12\"\n\x15instance_partition_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12T\n\x12instance_partition\x18\x03 \x01(\x0b\x32\x33.google.spanner.admin.instance.v1.InstancePartitionB\x03\xe0\x41\x02\"n\n\x1e\x44\x65leteInstancePartitionRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(spanner.googleapis.com/InstancePartition\x12\x0c\n\x04\x65tag\x18\x02 \x01(\t\"]\n\x1bGetInstancePartitionRequest\x12>\n\x04name\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(spanner.googleapis.com/InstancePartition\"\xab\x01\n\x1eUpdateInstancePartitionRequest\x12T\n\x12instance_partition\x18\x01 \x01(\x0b\x32\x33.google.spanner.admin.instance.v1.InstancePartitionB\x03\xe0\x41\x02\x12\x33\n\nfield_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"\x81\x02\n\x1fUpdateInstancePartitionMetadata\x12O\n\x12instance_partition\x18\x01 \x01(\x0b\x32\x33.google.spanner.admin.instance.v1.InstancePartition\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x63\x61ncel_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xc5\x01\n\x1dListInstancePartitionsRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Instance\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x44\n\x1binstance_partition_deadline\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\"\xa0\x01\n\x1eListInstancePartitionsResponse\x12P\n\x13instance_partitions\x18\x01 \x03(\x0b\x32\x33.google.spanner.admin.instance.v1.InstancePartition\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xed\x01\n&ListInstancePartitionOperationsRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fspanner.googleapis.com/Instance\x12\x13\n\x06\x66ilter\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x16\n\tpage_size\x18\x03 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x44\n\x1binstance_partition_deadline\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\"\x9e\x01\n\'ListInstancePartitionOperationsResponse\x12\x31\n\noperations\x18\x01 \x03(\x0b\x32\x1d.google.longrunning.Operation\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\'\n\x1funreachable_instance_partitions\x18\x03 \x03(\t2\xce%\n\rInstanceAdmin\x12\xcc\x01\n\x13ListInstanceConfigs\x12<.google.spanner.admin.instance.v1.ListInstanceConfigsRequest\x1a=.google.spanner.admin.instance.v1.ListInstanceConfigsResponse\"8\xda\x41\x06parent\x82\xd3\xe4\x93\x02)\x12\'/v1/{parent=projects/*}/instanceConfigs\x12\xb9\x01\n\x11GetInstanceConfig\x12:.google.spanner.admin.instance.v1.GetInstanceConfigRequest\x1a\x30.google.spanner.admin.instance.v1.InstanceConfig\"6\xda\x41\x04name\x82\xd3\xe4\x93\x02)\x12\'/v1/{name=projects/*/instanceConfigs/*}\x12\xc8\x02\n\x14\x43reateInstanceConfig\x12=.google.spanner.admin.instance.v1.CreateInstanceConfigRequest\x1a\x1d.google.longrunning.Operation\"\xd1\x01\xca\x41p\n/google.spanner.admin.instance.v1.InstanceConfig\x12=google.spanner.admin.instance.v1.CreateInstanceConfigMetadata\xda\x41)parent,instance_config,instance_config_id\x82\xd3\xe4\x93\x02,\"\'/v1/{parent=projects/*}/instanceConfigs:\x01*\x12\xca\x02\n\x14UpdateInstanceConfig\x12=.google.spanner.admin.instance.v1.UpdateInstanceConfigRequest\x1a\x1d.google.longrunning.Operation\"\xd3\x01\xca\x41p\n/google.spanner.admin.instance.v1.InstanceConfig\x12=google.spanner.admin.instance.v1.UpdateInstanceConfigMetadata\xda\x41\x1binstance_config,update_mask\x82\xd3\xe4\x93\x02<27/v1/{instance_config.name=projects/*/instanceConfigs/*}:\x01*\x12\xa5\x01\n\x14\x44\x65leteInstanceConfig\x12=.google.spanner.admin.instance.v1.DeleteInstanceConfigRequest\x1a\x16.google.protobuf.Empty\"6\xda\x41\x04name\x82\xd3\xe4\x93\x02)*\'/v1/{name=projects/*/instanceConfigs/*}\x12\xf0\x01\n\x1cListInstanceConfigOperations\x12\x45.google.spanner.admin.instance.v1.ListInstanceConfigOperationsRequest\x1a\x46.google.spanner.admin.instance.v1.ListInstanceConfigOperationsResponse\"A\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{parent=projects/*}/instanceConfigOperations\x12\xb4\x01\n\rListInstances\x12\x36.google.spanner.admin.instance.v1.ListInstancesRequest\x1a\x37.google.spanner.admin.instance.v1.ListInstancesResponse\"2\xda\x41\x06parent\x82\xd3\xe4\x93\x02#\x12!/v1/{parent=projects/*}/instances\x12\xe4\x01\n\x16ListInstancePartitions\x12?.google.spanner.admin.instance.v1.ListInstancePartitionsRequest\x1a@.google.spanner.admin.instance.v1.ListInstancePartitionsResponse\"G\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x38\x12\x36/v1/{parent=projects/*/instances/*}/instancePartitions\x12\xa1\x01\n\x0bGetInstance\x12\x34.google.spanner.admin.instance.v1.GetInstanceRequest\x1a*.google.spanner.admin.instance.v1.Instance\"0\xda\x41\x04name\x82\xd3\xe4\x93\x02#\x12!/v1/{name=projects/*/instances/*}\x12\x9c\x02\n\x0e\x43reateInstance\x12\x37.google.spanner.admin.instance.v1.CreateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\xb1\x01\xca\x41\x64\n)google.spanner.admin.instance.v1.Instance\x12\x37google.spanner.admin.instance.v1.CreateInstanceMetadata\xda\x41\x1bparent,instance_id,instance\x82\xd3\xe4\x93\x02&\"!/v1/{parent=projects/*}/instances:\x01*\x12\x9d\x02\n\x0eUpdateInstance\x12\x37.google.spanner.admin.instance.v1.UpdateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\xb2\x01\xca\x41\x64\n)google.spanner.admin.instance.v1.Instance\x12\x37google.spanner.admin.instance.v1.UpdateInstanceMetadata\xda\x41\x13instance,field_mask\x82\xd3\xe4\x93\x02/2*/v1/{instance.name=projects/*/instances/*}:\x01*\x12\x93\x01\n\x0e\x44\x65leteInstance\x12\x37.google.spanner.admin.instance.v1.DeleteInstanceRequest\x1a\x16.google.protobuf.Empty\"0\xda\x41\x04name\x82\xd3\xe4\x93\x02#*!/v1/{name=projects/*/instances/*}\x12\x9a\x01\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"O\xda\x41\x0fresource,policy\x82\xd3\xe4\x93\x02\x37\"2/v1/{resource=projects/*/instances/*}:setIamPolicy:\x01*\x12\x93\x01\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"H\xda\x41\x08resource\x82\xd3\xe4\x93\x02\x37\"2/v1/{resource=projects/*/instances/*}:getIamPolicy:\x01*\x12\xc5\x01\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"Z\xda\x41\x14resource,permissions\x82\xd3\xe4\x93\x02=\"8/v1/{resource=projects/*/instances/*}:testIamPermissions:\x01*\x12\xd1\x01\n\x14GetInstancePartition\x12=.google.spanner.admin.instance.v1.GetInstancePartitionRequest\x1a\x33.google.spanner.admin.instance.v1.InstancePartition\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38\x12\x36/v1/{name=projects/*/instances/*/instancePartitions/*}\x12\xe9\x02\n\x17\x43reateInstancePartition\x12@.google.spanner.admin.instance.v1.CreateInstancePartitionRequest\x1a\x1d.google.longrunning.Operation\"\xec\x01\xca\x41v\n2google.spanner.admin.instance.v1.InstancePartition\x12@google.spanner.admin.instance.v1.CreateInstancePartitionMetadata\xda\x41/parent,instance_partition,instance_partition_id\x82\xd3\xe4\x93\x02;\"6/v1/{parent=projects/*/instances/*}/instancePartitions:\x01*\x12\xba\x01\n\x17\x44\x65leteInstancePartition\x12@.google.spanner.admin.instance.v1.DeleteInstancePartitionRequest\x1a\x16.google.protobuf.Empty\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38*6/v1/{name=projects/*/instances/*/instancePartitions/*}\x12\xea\x02\n\x17UpdateInstancePartition\x12@.google.spanner.admin.instance.v1.UpdateInstancePartitionRequest\x1a\x1d.google.longrunning.Operation\"\xed\x01\xca\x41v\n2google.spanner.admin.instance.v1.InstancePartition\x12@google.spanner.admin.instance.v1.UpdateInstancePartitionMetadata\xda\x41\x1dinstance_partition,field_mask\x82\xd3\xe4\x93\x02N2I/v1/{instance_partition.name=projects/*/instances/*/instancePartitions/*}:\x01*\x12\x88\x02\n\x1fListInstancePartitionOperations\x12H.google.spanner.admin.instance.v1.ListInstancePartitionOperationsRequest\x1aI.google.spanner.admin.instance.v1.ListInstancePartitionOperationsResponse\"P\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x41\x12?/v1/{parent=projects/*/instances/*}/instancePartitionOperations\x1ax\xca\x41\x16spanner.googleapis.com\xd2\x41\\https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/spanner.adminB\x8b\x02\n$com.google.spanner.admin.instance.v1B\x19SpannerInstanceAdminProtoP\x01ZFcloud.google.com/go/spanner/admin/instance/apiv1/instancepb;instancepb\xaa\x02&Google.Cloud.Spanner.Admin.Instance.V1\xca\x02&Google\\Cloud\\Spanner\\Admin\\Instance\\V1\xea\x02+Google::Cloud::Spanner::Admin::Instance::V1b\x06proto3"

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
    ["google.longrunning.Operation", "google/longrunning/operations.proto"],
    ["google.spanner.admin.instance.v1.OperationProgress", "google/spanner/admin/instance/v1/common.proto"],
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
    module Spanner
      module Admin
        module Instance
          module V1
            ReplicaInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.ReplicaInfo").msgclass
            ReplicaInfo::ReplicaType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.ReplicaInfo.ReplicaType").enummodule
            InstanceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.InstanceConfig").msgclass
            InstanceConfig::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.InstanceConfig.Type").enummodule
            InstanceConfig::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.InstanceConfig.State").enummodule
            AutoscalingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.AutoscalingConfig").msgclass
            AutoscalingConfig::AutoscalingLimits = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.AutoscalingConfig.AutoscalingLimits").msgclass
            AutoscalingConfig::AutoscalingTargets = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.AutoscalingConfig.AutoscalingTargets").msgclass
            Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.Instance").msgclass
            Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.Instance.State").enummodule
            ListInstanceConfigsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.ListInstanceConfigsRequest").msgclass
            ListInstanceConfigsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.ListInstanceConfigsResponse").msgclass
            GetInstanceConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.GetInstanceConfigRequest").msgclass
            CreateInstanceConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.CreateInstanceConfigRequest").msgclass
            UpdateInstanceConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.UpdateInstanceConfigRequest").msgclass
            DeleteInstanceConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.DeleteInstanceConfigRequest").msgclass
            ListInstanceConfigOperationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.ListInstanceConfigOperationsRequest").msgclass
            ListInstanceConfigOperationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.ListInstanceConfigOperationsResponse").msgclass
            GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.GetInstanceRequest").msgclass
            CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.CreateInstanceRequest").msgclass
            ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.ListInstancesRequest").msgclass
            ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.ListInstancesResponse").msgclass
            UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.UpdateInstanceRequest").msgclass
            DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.DeleteInstanceRequest").msgclass
            CreateInstanceMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.CreateInstanceMetadata").msgclass
            UpdateInstanceMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.UpdateInstanceMetadata").msgclass
            CreateInstanceConfigMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.CreateInstanceConfigMetadata").msgclass
            UpdateInstanceConfigMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.UpdateInstanceConfigMetadata").msgclass
            InstancePartition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.InstancePartition").msgclass
            InstancePartition::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.InstancePartition.State").enummodule
            CreateInstancePartitionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.CreateInstancePartitionMetadata").msgclass
            CreateInstancePartitionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.CreateInstancePartitionRequest").msgclass
            DeleteInstancePartitionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.DeleteInstancePartitionRequest").msgclass
            GetInstancePartitionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.GetInstancePartitionRequest").msgclass
            UpdateInstancePartitionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.UpdateInstancePartitionRequest").msgclass
            UpdateInstancePartitionMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.UpdateInstancePartitionMetadata").msgclass
            ListInstancePartitionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.ListInstancePartitionsRequest").msgclass
            ListInstancePartitionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.ListInstancePartitionsResponse").msgclass
            ListInstancePartitionOperationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.ListInstancePartitionOperationsRequest").msgclass
            ListInstancePartitionOperationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.admin.instance.v1.ListInstancePartitionOperationsResponse").msgclass
          end
        end
      end
    end
  end
end
