# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/kms/v1/autokey.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'


descriptor_data = "\n!google/cloud/kms/v1/autokey.proto\x12\x13google.cloud.kms.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\"\xa8\x01\n\x16\x43reateKeyHandleRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x1a\n\rkey_handle_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x37\n\nkey_handle\x18\x03 \x01(\x0b\x32\x1e.google.cloud.kms.v1.KeyHandleB\x03\xe0\x41\x02\"N\n\x13GetKeyHandleRequest\x12\x37\n\x04name\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudkms.googleapis.com/KeyHandle\"\xff\x01\n\tKeyHandle\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12:\n\x07kms_key\x18\x03 \x01(\tB)\xe0\x41\x03\xfa\x41#\n!cloudkms.googleapis.com/CryptoKey\x12#\n\x16resource_type_selector\x18\x04 \x01(\tB\x03\xe0\x41\x02:~\xea\x41{\n!cloudkms.googleapis.com/KeyHandle\x12?projects/{project}/locations/{location}/keyHandles/{key_handle}*\nkeyHandles2\tkeyHandle\"\x19\n\x17\x43reateKeyHandleMetadata\"\x98\x01\n\x15ListKeyHandlesRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\"f\n\x16ListKeyHandlesResponse\x12\x33\n\x0bkey_handles\x18\x01 \x03(\x0b\x32\x1e.google.cloud.kms.v1.KeyHandle\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\xb4\x05\n\x07\x41utokey\x12\xeb\x01\n\x0f\x43reateKeyHandle\x12+.google.cloud.kms.v1.CreateKeyHandleRequest\x1a\x1d.google.longrunning.Operation\"\x8b\x01\xca\x41$\n\tKeyHandle\x12\x17\x43reateKeyHandleMetadata\xda\x41\x1fparent,key_handle,key_handle_id\x82\xd3\xe4\x93\x02<\"./v1/{parent=projects/*/locations/*}/keyHandles:\nkey_handle\x12\x97\x01\n\x0cGetKeyHandle\x12(.google.cloud.kms.v1.GetKeyHandleRequest\x1a\x1e.google.cloud.kms.v1.KeyHandle\"=\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30\x12./v1/{name=projects/*/locations/*/keyHandles/*}\x12\xaa\x01\n\x0eListKeyHandles\x12*.google.cloud.kms.v1.ListKeyHandlesRequest\x1a+.google.cloud.kms.v1.ListKeyHandlesResponse\"?\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x30\x12./v1/{parent=projects/*/locations/*}/keyHandles\x1at\xca\x41\x17\x63loudkms.googleapis.com\xd2\x41Whttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloudkmsBT\n\x17\x63om.google.cloud.kms.v1B\x0c\x41utokeyProtoP\x01Z)cloud.google.com/go/kms/apiv1/kmspb;kmspbb\x06proto3"

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
    module Kms
      module V1
        CreateKeyHandleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CreateKeyHandleRequest").msgclass
        GetKeyHandleRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.GetKeyHandleRequest").msgclass
        KeyHandle = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.KeyHandle").msgclass
        CreateKeyHandleMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.CreateKeyHandleMetadata").msgclass
        ListKeyHandlesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListKeyHandlesRequest").msgclass
        ListKeyHandlesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.kms.v1.ListKeyHandlesResponse").msgclass
      end
    end
  end
end
