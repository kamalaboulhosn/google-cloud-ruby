# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataproc/v1/shared.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n%google/cloud/dataproc/v1/shared.proto\x12\x18google.cloud.dataproc.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xf5\x02\n\rRuntimeConfig\x12\x14\n\x07version\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x1c\n\x0f\x63ontainer_image\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12P\n\nproperties\x18\x03 \x03(\x0b\x32\x37.google.cloud.dataproc.v1.RuntimeConfig.PropertiesEntryB\x03\xe0\x41\x01\x12J\n\x11repository_config\x18\x05 \x01(\x0b\x32*.google.cloud.dataproc.v1.RepositoryConfigB\x03\xe0\x41\x01\x12J\n\x11\x61utotuning_config\x18\x06 \x01(\x0b\x32*.google.cloud.dataproc.v1.AutotuningConfigB\x03\xe0\x41\x01\x12\x13\n\x06\x63ohort\x18\x07 \x01(\tB\x03\xe0\x41\x01\x1a\x31\n\x0fPropertiesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xab\x01\n\x11\x45nvironmentConfig\x12H\n\x10\x65xecution_config\x18\x01 \x01(\x0b\x32).google.cloud.dataproc.v1.ExecutionConfigB\x03\xe0\x41\x01\x12L\n\x12peripherals_config\x18\x02 \x01(\x0b\x32+.google.cloud.dataproc.v1.PeripheralsConfigB\x03\xe0\x41\x01\"\xf6\x02\n\x0f\x45xecutionConfig\x12\x1c\n\x0fservice_account\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\x0bnetwork_uri\x18\x04 \x01(\tB\x03\xe0\x41\x01H\x00\x12\x1d\n\x0esubnetwork_uri\x18\x05 \x01(\tB\x03\xe0\x41\x01H\x00\x12\x19\n\x0cnetwork_tags\x18\x06 \x03(\tB\x03\xe0\x41\x01\x12\x14\n\x07kms_key\x18\x07 \x01(\tB\x03\xe0\x41\x01\x12\x30\n\x08idle_ttl\x18\x08 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\x12+\n\x03ttl\x18\t \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\x12\x1b\n\x0estaging_bucket\x18\n \x01(\tB\x03\xe0\x41\x01\x12R\n\x15\x61uthentication_config\x18\x0b \x01(\x0b\x32..google.cloud.dataproc.v1.AuthenticationConfigB\x03\xe0\x41\x01\x42\t\n\x07network\"9\n\x18SparkHistoryServerConfig\x12\x1d\n\x10\x64\x61taproc_cluster\x18\x01 \x01(\tB\x03\xe0\x41\x01\"\xb6\x01\n\x11PeripheralsConfig\x12\x43\n\x11metastore_service\x18\x01 \x01(\tB(\xe0\x41\x01\xfa\x41\"\n metastore.googleapis.com/Service\x12\\\n\x1bspark_history_server_config\x18\x02 \x01(\x0b\x32\x32.google.cloud.dataproc.v1.SparkHistoryServerConfigB\x03\xe0\x41\x01\"\xd7\x02\n\x0bRuntimeInfo\x12L\n\tendpoints\x18\x01 \x03(\x0b\x32\x34.google.cloud.dataproc.v1.RuntimeInfo.EndpointsEntryB\x03\xe0\x41\x03\x12\x17\n\noutput_uri\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\"\n\x15\x64iagnostic_output_uri\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x46\n\x11\x61pproximate_usage\x18\x06 \x01(\x0b\x32&.google.cloud.dataproc.v1.UsageMetricsB\x03\xe0\x41\x03\x12\x43\n\rcurrent_usage\x18\x07 \x01(\x0b\x32\'.google.cloud.dataproc.v1.UsageSnapshotB\x03\xe0\x41\x03\x1a\x30\n\x0e\x45ndpointsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x9e\x01\n\x0cUsageMetrics\x12\x1e\n\x11milli_dcu_seconds\x18\x01 \x01(\x03\x42\x03\xe0\x41\x01\x12\'\n\x1ashuffle_storage_gb_seconds\x18\x02 \x01(\x03\x42\x03\xe0\x41\x01\x12&\n\x19milli_accelerator_seconds\x18\x03 \x01(\x03\x42\x03\xe0\x41\x01\x12\x1d\n\x10\x61\x63\x63\x65lerator_type\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\x88\x02\n\rUsageSnapshot\x12\x16\n\tmilli_dcu\x18\x01 \x01(\x03\x42\x03\xe0\x41\x01\x12\x1f\n\x12shuffle_storage_gb\x18\x02 \x01(\x03\x42\x03\xe0\x41\x01\x12\x1e\n\x11milli_dcu_premium\x18\x04 \x01(\x03\x42\x03\xe0\x41\x01\x12\'\n\x1ashuffle_storage_gb_premium\x18\x05 \x01(\x03\x42\x03\xe0\x41\x01\x12\x1e\n\x11milli_accelerator\x18\x06 \x01(\x03\x42\x03\xe0\x41\x01\x12\x1d\n\x10\x61\x63\x63\x65lerator_type\x18\x07 \x01(\tB\x03\xe0\x41\x01\x12\x36\n\rsnapshot_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x01\"\xa4\x01\n\x10GkeClusterConfig\x12\x44\n\x12gke_cluster_target\x18\x02 \x01(\tB(\xe0\x41\x01\xfa\x41\"\n container.googleapis.com/Cluster\x12J\n\x10node_pool_target\x18\x03 \x03(\x0b\x32+.google.cloud.dataproc.v1.GkeNodePoolTargetB\x03\xe0\x41\x01\"\xf2\x01\n\x17KubernetesClusterConfig\x12!\n\x14kubernetes_namespace\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12M\n\x12gke_cluster_config\x18\x02 \x01(\x0b\x32*.google.cloud.dataproc.v1.GkeClusterConfigB\x03\xe0\x41\x02H\x00\x12[\n\x1akubernetes_software_config\x18\x03 \x01(\x0b\x32\x32.google.cloud.dataproc.v1.KubernetesSoftwareConfigB\x03\xe0\x41\x01\x42\x08\n\x06\x63onfig\"\xc3\x02\n\x18KubernetesSoftwareConfig\x12\x63\n\x11\x63omponent_version\x18\x01 \x03(\x0b\x32H.google.cloud.dataproc.v1.KubernetesSoftwareConfig.ComponentVersionEntry\x12V\n\nproperties\x18\x02 \x03(\x0b\x32\x42.google.cloud.dataproc.v1.KubernetesSoftwareConfig.PropertiesEntry\x1a\x37\n\x15\x43omponentVersionEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x31\n\x0fPropertiesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x9e\x02\n\x11GkeNodePoolTarget\x12\x16\n\tnode_pool\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x44\n\x05roles\x18\x02 \x03(\x0e\x32\x30.google.cloud.dataproc.v1.GkeNodePoolTarget.RoleB\x03\xe0\x41\x02\x12J\n\x10node_pool_config\x18\x03 \x01(\x0b\x32+.google.cloud.dataproc.v1.GkeNodePoolConfigB\x03\xe0\x41\x04\"_\n\x04Role\x12\x14\n\x10ROLE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x44\x45\x46\x41ULT\x10\x01\x12\x0e\n\nCONTROLLER\x10\x02\x12\x10\n\x0cSPARK_DRIVER\x10\x03\x12\x12\n\x0eSPARK_EXECUTOR\x10\x04\"\xbc\x05\n\x11GkeNodePoolConfig\x12N\n\x06\x63onfig\x18\x02 \x01(\x0b\x32\x39.google.cloud.dataproc.v1.GkeNodePoolConfig.GkeNodeConfigB\x03\xe0\x41\x01\x12\x16\n\tlocations\x18\r \x03(\tB\x03\xe0\x41\x01\x12\x62\n\x0b\x61utoscaling\x18\x04 \x01(\x0b\x32H.google.cloud.dataproc.v1.GkeNodePoolConfig.GkeNodePoolAutoscalingConfigB\x03\xe0\x41\x01\x1a\x99\x02\n\rGkeNodeConfig\x12\x19\n\x0cmachine_type\x18\x01 \x01(\tB\x03\xe0\x41\x01\x12\x1c\n\x0flocal_ssd_count\x18\x07 \x01(\x05\x42\x03\xe0\x41\x01\x12\x18\n\x0bpreemptible\x18\n \x01(\x08\x42\x03\xe0\x41\x01\x12\x63\n\x0c\x61\x63\x63\x65lerators\x18\x0b \x03(\x0b\x32H.google.cloud.dataproc.v1.GkeNodePoolConfig.GkeNodePoolAcceleratorConfigB\x03\xe0\x41\x01\x12\x1d\n\x10min_cpu_platform\x18\r \x01(\tB\x03\xe0\x41\x01\x12\x1e\n\x11\x62oot_disk_kms_key\x18\x17 \x01(\tB\x03\xe0\x41\x01\x12\x11\n\x04spot\x18  \x01(\x08\x42\x03\xe0\x41\x01\x1ao\n\x1cGkeNodePoolAcceleratorConfig\x12\x19\n\x11\x61\x63\x63\x65lerator_count\x18\x01 \x01(\x03\x12\x18\n\x10\x61\x63\x63\x65lerator_type\x18\x02 \x01(\t\x12\x1a\n\x12gpu_partition_size\x18\x03 \x01(\t\x1aN\n\x1cGkeNodePoolAutoscalingConfig\x12\x16\n\x0emin_node_count\x18\x02 \x01(\x05\x12\x16\n\x0emax_node_count\x18\x03 \x01(\x05\"\xf3\x01\n\x14\x41uthenticationConfig\x12q\n!user_workload_authentication_type\x18\x01 \x01(\x0e\x32\x41.google.cloud.dataproc.v1.AuthenticationConfig.AuthenticationTypeB\x03\xe0\x41\x01\"h\n\x12\x41uthenticationType\x12#\n\x1f\x41UTHENTICATION_TYPE_UNSPECIFIED\x10\x00\x12\x13\n\x0fSERVICE_ACCOUNT\x10\x01\x12\x18\n\x14\x45ND_USER_CREDENTIALS\x10\x02\"\xb7\x01\n\x10\x41utotuningConfig\x12K\n\tscenarios\x18\x02 \x03(\x0e\x32\x33.google.cloud.dataproc.v1.AutotuningConfig.ScenarioB\x03\xe0\x41\x01\"V\n\x08Scenario\x12\x18\n\x14SCENARIO_UNSPECIFIED\x10\x00\x12\x0b\n\x07SCALING\x10\x02\x12\x17\n\x13\x42ROADCAST_HASH_JOIN\x10\x03\x12\n\n\x06MEMORY\x10\x04\"g\n\x10RepositoryConfig\x12S\n\x16pypi_repository_config\x18\x01 \x01(\x0b\x32..google.cloud.dataproc.v1.PyPiRepositoryConfigB\x03\xe0\x41\x01\"4\n\x14PyPiRepositoryConfig\x12\x1c\n\x0fpypi_repository\x18\x01 \x01(\tB\x03\xe0\x41\x01*\xd4\x01\n\tComponent\x12\x19\n\x15\x43OMPONENT_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x41NACONDA\x10\x05\x12\n\n\x06\x44OCKER\x10\r\x12\t\n\x05\x44RUID\x10\t\x12\t\n\x05\x46LINK\x10\x0e\x12\t\n\x05HBASE\x10\x0b\x12\x10\n\x0cHIVE_WEBHCAT\x10\x03\x12\x08\n\x04HUDI\x10\x12\x12\x0b\n\x07JUPYTER\x10\x01\x12\n\n\x06PRESTO\x10\x06\x12\t\n\x05TRINO\x10\x11\x12\n\n\x06RANGER\x10\x0c\x12\x08\n\x04SOLR\x10\n\x12\x0c\n\x08ZEPPELIN\x10\x04\x12\r\n\tZOOKEEPER\x10\x08*J\n\rFailureAction\x12\x1e\n\x1a\x46\x41ILURE_ACTION_UNSPECIFIED\x10\x00\x12\r\n\tNO_ACTION\x10\x01\x12\n\n\x06\x44\x45LETE\x10\x02\x42\xa7\x03\n\x1c\x63om.google.cloud.dataproc.v1B\x0bSharedProtoP\x01Z;cloud.google.com/go/dataproc/v2/apiv1/dataprocpb;dataprocpb\xea\x41^\n container.googleapis.com/Cluster\x12:projects/{project}/locations/{location}/clusters/{cluster}\xea\x41^\n metastore.googleapis.com/Service\x12:projects/{project}/locations/{location}/services/{service}\xea\x41x\n!cloudkms.googleapis.com/CryptoKey\x12Sprojects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module Dataproc
      module V1
        RuntimeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.RuntimeConfig").msgclass
        EnvironmentConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.EnvironmentConfig").msgclass
        ExecutionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ExecutionConfig").msgclass
        SparkHistoryServerConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.SparkHistoryServerConfig").msgclass
        PeripheralsConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.PeripheralsConfig").msgclass
        RuntimeInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.RuntimeInfo").msgclass
        UsageMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.UsageMetrics").msgclass
        UsageSnapshot = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.UsageSnapshot").msgclass
        GkeClusterConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.GkeClusterConfig").msgclass
        KubernetesClusterConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.KubernetesClusterConfig").msgclass
        KubernetesSoftwareConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.KubernetesSoftwareConfig").msgclass
        GkeNodePoolTarget = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.GkeNodePoolTarget").msgclass
        GkeNodePoolTarget::Role = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.GkeNodePoolTarget.Role").enummodule
        GkeNodePoolConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.GkeNodePoolConfig").msgclass
        GkeNodePoolConfig::GkeNodeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.GkeNodePoolConfig.GkeNodeConfig").msgclass
        GkeNodePoolConfig::GkeNodePoolAcceleratorConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.GkeNodePoolConfig.GkeNodePoolAcceleratorConfig").msgclass
        GkeNodePoolConfig::GkeNodePoolAutoscalingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.GkeNodePoolConfig.GkeNodePoolAutoscalingConfig").msgclass
        AuthenticationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.AuthenticationConfig").msgclass
        AuthenticationConfig::AuthenticationType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.AuthenticationConfig.AuthenticationType").enummodule
        AutotuningConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.AutotuningConfig").msgclass
        AutotuningConfig::Scenario = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.AutotuningConfig.Scenario").enummodule
        RepositoryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.RepositoryConfig").msgclass
        PyPiRepositoryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.PyPiRepositoryConfig").msgclass
        Component = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.Component").enummodule
        FailureAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.FailureAction").enummodule
      end
    end
  end
end
