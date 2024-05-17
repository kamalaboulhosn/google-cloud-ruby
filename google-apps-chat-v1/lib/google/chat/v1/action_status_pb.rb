# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/chat/v1/action_status.proto

require 'google/protobuf'

require 'google/rpc/code_pb'


descriptor_data = "\n\"google/chat/v1/action_status.proto\x12\x0egoogle.chat.v1\x1a\x15google/rpc/code.proto\"R\n\x0c\x41\x63tionStatus\x12%\n\x0bstatus_code\x18\x01 \x01(\x0e\x32\x10.google.rpc.Code\x12\x1b\n\x13user_facing_message\x18\x02 \x01(\tB\xaa\x01\n\x12\x63om.google.chat.v1B\x11\x41\x63tionStatusProtoP\x01Z,cloud.google.com/go/chat/apiv1/chatpb;chatpb\xa2\x02\x0b\x44YNAPIProto\xaa\x02\x13Google.Apps.Chat.V1\xca\x02\x13Google\\Apps\\Chat\\V1\xea\x02\x16Google::Apps::Chat::V1b\x06proto3"

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
  module Apps
    module Chat
      module V1
        ActionStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ActionStatus").msgclass
      end
    end
  end
end
