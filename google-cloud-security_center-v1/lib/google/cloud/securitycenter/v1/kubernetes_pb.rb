# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/kubernetes.proto

require 'google/protobuf'

require 'google/cloud/securitycenter/v1/container_pb'
require 'google/cloud/securitycenter/v1/label_pb'


descriptor_data = "\n/google/cloud/securitycenter/v1/kubernetes.proto\x12\x1egoogle.cloud.securitycenter.v1\x1a.google/cloud/securitycenter/v1/container.proto\x1a*google/cloud/securitycenter/v1/label.proto\"\x82\x0c\n\nKubernetes\x12<\n\x04pods\x18\x01 \x03(\x0b\x32..google.cloud.securitycenter.v1.Kubernetes.Pod\x12>\n\x05nodes\x18\x02 \x03(\x0b\x32/.google.cloud.securitycenter.v1.Kubernetes.Node\x12G\n\nnode_pools\x18\x03 \x03(\x0b\x32\x33.google.cloud.securitycenter.v1.Kubernetes.NodePool\x12>\n\x05roles\x18\x04 \x03(\x0b\x32/.google.cloud.securitycenter.v1.Kubernetes.Role\x12\x44\n\x08\x62indings\x18\x05 \x03(\x0b\x32\x32.google.cloud.securitycenter.v1.Kubernetes.Binding\x12O\n\x0e\x61\x63\x63\x65ss_reviews\x18\x06 \x03(\x0b\x32\x37.google.cloud.securitycenter.v1.Kubernetes.AccessReview\x12\x42\n\x07objects\x18\x07 \x03(\x0b\x32\x31.google.cloud.securitycenter.v1.Kubernetes.Object\x1a\x95\x01\n\x03Pod\x12\n\n\x02ns\x18\x01 \x01(\t\x12\x0c\n\x04name\x18\x02 \x01(\t\x12\x35\n\x06labels\x18\x03 \x03(\x0b\x32%.google.cloud.securitycenter.v1.Label\x12=\n\ncontainers\x18\x04 \x03(\x0b\x32).google.cloud.securitycenter.v1.Container\x1a\x14\n\x04Node\x12\x0c\n\x04name\x18\x01 \x01(\t\x1aX\n\x08NodePool\x12\x0c\n\x04name\x18\x01 \x01(\t\x12>\n\x05nodes\x18\x02 \x03(\x0b\x32/.google.cloud.securitycenter.v1.Kubernetes.Node\x1a\x9e\x01\n\x04Role\x12\x42\n\x04kind\x18\x01 \x01(\x0e\x32\x34.google.cloud.securitycenter.v1.Kubernetes.Role.Kind\x12\n\n\x02ns\x18\x02 \x01(\t\x12\x0c\n\x04name\x18\x03 \x01(\t\"8\n\x04Kind\x12\x14\n\x10KIND_UNSPECIFIED\x10\x00\x12\x08\n\x04ROLE\x10\x01\x12\x10\n\x0c\x43LUSTER_ROLE\x10\x02\x1a\xa8\x01\n\x07\x42inding\x12\n\n\x02ns\x18\x01 \x01(\t\x12\x0c\n\x04name\x18\x02 \x01(\t\x12=\n\x04role\x18\x03 \x01(\x0b\x32/.google.cloud.securitycenter.v1.Kubernetes.Role\x12\x44\n\x08subjects\x18\x04 \x03(\x0b\x32\x32.google.cloud.securitycenter.v1.Kubernetes.Subject\x1a\xbe\x01\n\x07Subject\x12I\n\x04kind\x18\x01 \x01(\x0e\x32;.google.cloud.securitycenter.v1.Kubernetes.Subject.AuthType\x12\n\n\x02ns\x18\x02 \x01(\t\x12\x0c\n\x04name\x18\x03 \x01(\t\"N\n\x08\x41uthType\x12\x19\n\x15\x41UTH_TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04USER\x10\x01\x12\x12\n\x0eSERVICEACCOUNT\x10\x02\x12\t\n\x05GROUP\x10\x03\x1a}\n\x0c\x41\x63\x63\x65ssReview\x12\r\n\x05group\x18\x01 \x01(\t\x12\n\n\x02ns\x18\x02 \x01(\t\x12\x0c\n\x04name\x18\x03 \x01(\t\x12\x10\n\x08resource\x18\x04 \x01(\t\x12\x13\n\x0bsubresource\x18\x05 \x01(\t\x12\x0c\n\x04verb\x18\x06 \x01(\t\x12\x0f\n\x07version\x18\x07 \x01(\t\x1a~\n\x06Object\x12\r\n\x05group\x18\x01 \x01(\t\x12\x0c\n\x04kind\x18\x02 \x01(\t\x12\n\n\x02ns\x18\x03 \x01(\t\x12\x0c\n\x04name\x18\x04 \x01(\t\x12=\n\ncontainers\x18\x05 \x03(\x0b\x32).google.cloud.securitycenter.v1.ContainerB\xe9\x01\n\"com.google.cloud.securitycenter.v1B\x0fKubernetesProtoP\x01ZJcloud.google.com/go/securitycenter/apiv1/securitycenterpb;securitycenterpb\xaa\x02\x1eGoogle.Cloud.SecurityCenter.V1\xca\x02\x1eGoogle\\Cloud\\SecurityCenter\\V1\xea\x02!Google::Cloud::SecurityCenter::V1b\x06proto3"

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
    ["google.cloud.securitycenter.v1.Label", "google/cloud/securitycenter/v1/label.proto"],
    ["google.cloud.securitycenter.v1.Container", "google/cloud/securitycenter/v1/container.proto"],
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
    module SecurityCenter
      module V1
        Kubernetes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Kubernetes").msgclass
        Kubernetes::Pod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Kubernetes.Pod").msgclass
        Kubernetes::Node = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Kubernetes.Node").msgclass
        Kubernetes::NodePool = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Kubernetes.NodePool").msgclass
        Kubernetes::Role = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Kubernetes.Role").msgclass
        Kubernetes::Role::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Kubernetes.Role.Kind").enummodule
        Kubernetes::Binding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Kubernetes.Binding").msgclass
        Kubernetes::Subject = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Kubernetes.Subject").msgclass
        Kubernetes::Subject::AuthType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Kubernetes.Subject.AuthType").enummodule
        Kubernetes::AccessReview = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Kubernetes.AccessReview").msgclass
        Kubernetes::Object = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.Kubernetes.Object").msgclass
      end
    end
  end
end
