# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/resourcemanager/v3/tag_bindings.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'


descriptor_data = "\n2google/cloud/resourcemanager/v3/tag_bindings.proto\x12\x1fgoogle.cloud.resourcemanager.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\"\xb5\x01\n\nTagBinding\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x0e\n\x06parent\x18\x02 \x01(\t\x12\x11\n\ttag_value\x18\x03 \x01(\t\x12!\n\x19tag_value_namespaced_name\x18\x04 \x01(\t:N\xea\x41K\n.cloudresourcemanager.googleapis.com/TagBinding\x12\x19tagBindings/{tag_binding}\"\x1a\n\x18\x43reateTagBindingMetadata\"|\n\x17\x43reateTagBindingRequest\x12\x45\n\x0btag_binding\x18\x01 \x01(\x0b\x32+.google.cloud.resourcemanager.v3.TagBindingB\x03\xe0\x41\x02\x12\x1a\n\rvalidate_only\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\"\x1a\n\x18\x44\x65leteTagBindingMetadata\"_\n\x17\x44\x65leteTagBindingRequest\x12\x44\n\x04name\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\n.cloudresourcemanager.googleapis.com/TagBinding\"d\n\x16ListTagBindingsRequest\x12\x19\n\x06parent\x18\x01 \x01(\tB\t\xe0\x41\x02\xfa\x41\x03\x12\x01*\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"u\n\x17ListTagBindingsResponse\x12\x41\n\x0ctag_bindings\x18\x01 \x03(\x0b\x32+.google.cloud.resourcemanager.v3.TagBinding\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"`\n\x18ListEffectiveTagsRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\"{\n\x19ListEffectiveTagsResponse\x12\x45\n\x0e\x65\x66\x66\x65\x63tive_tags\x18\x01 \x03(\x0b\x32-.google.cloud.resourcemanager.v3.EffectiveTag\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x80\x02\n\x0c\x45\x66\x66\x65\x63tiveTag\x12\x44\n\ttag_value\x18\x01 \x01(\tB1\xfa\x41.\n,cloudresourcemanager.googleapis.com/TagValue\x12\x1c\n\x14namespaced_tag_value\x18\x02 \x01(\t\x12@\n\x07tag_key\x18\x03 \x01(\tB/\xfa\x41,\n*cloudresourcemanager.googleapis.com/TagKey\x12\x1a\n\x12namespaced_tag_key\x18\x04 \x01(\t\x12\x1b\n\x13tag_key_parent_name\x18\x06 \x01(\t\x12\x11\n\tinherited\x18\x05 \x01(\x08\x32\x91\x07\n\x0bTagBindings\x12\xa6\x01\n\x0fListTagBindings\x12\x37.google.cloud.resourcemanager.v3.ListTagBindingsRequest\x1a\x38.google.cloud.resourcemanager.v3.ListTagBindingsResponse\" \xda\x41\x06parent\x82\xd3\xe4\x93\x02\x11\x12\x0f/v3/tagBindings\x12\xc8\x01\n\x10\x43reateTagBinding\x12\x38.google.cloud.resourcemanager.v3.CreateTagBindingRequest\x1a\x1d.google.longrunning.Operation\"[\xca\x41&\n\nTagBinding\x12\x18\x43reateTagBindingMetadata\xda\x41\x0btag_binding\x82\xd3\xe4\x93\x02\x1e\"\x0f/v3/tagBindings:\x0btag_binding\x12\xc9\x01\n\x10\x44\x65leteTagBinding\x12\x38.google.cloud.resourcemanager.v3.DeleteTagBindingRequest\x1a\x1d.google.longrunning.Operation\"\\\xca\x41\x31\n\x15google.protobuf.Empty\x12\x18\x44\x65leteTagBindingMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x1b*\x19/v3/{name=tagBindings/**}\x12\xae\x01\n\x11ListEffectiveTags\x12\x39.google.cloud.resourcemanager.v3.ListEffectiveTagsRequest\x1a:.google.cloud.resourcemanager.v3.ListEffectiveTagsResponse\"\"\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x13\x12\x11/v3/effectiveTags\x1a\x90\x01\xca\x41#cloudresourcemanager.googleapis.com\xd2\x41ghttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloud-platform.read-onlyB\xf1\x01\n#com.google.cloud.resourcemanager.v3B\x10TagBindingsProtoP\x01ZMcloud.google.com/go/resourcemanager/apiv3/resourcemanagerpb;resourcemanagerpb\xaa\x02\x1fGoogle.Cloud.ResourceManager.V3\xca\x02\x1fGoogle\\Cloud\\ResourceManager\\V3\xea\x02\"Google::Cloud::ResourceManager::V3b\x06proto3"

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
    module ResourceManager
      module V3
        TagBinding = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.TagBinding").msgclass
        CreateTagBindingMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.CreateTagBindingMetadata").msgclass
        CreateTagBindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.CreateTagBindingRequest").msgclass
        DeleteTagBindingMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.DeleteTagBindingMetadata").msgclass
        DeleteTagBindingRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.DeleteTagBindingRequest").msgclass
        ListTagBindingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.ListTagBindingsRequest").msgclass
        ListTagBindingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.ListTagBindingsResponse").msgclass
        ListEffectiveTagsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.ListEffectiveTagsRequest").msgclass
        ListEffectiveTagsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.ListEffectiveTagsResponse").msgclass
        EffectiveTag = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.resourcemanager.v3.EffectiveTag").msgclass
      end
    end
  end
end
