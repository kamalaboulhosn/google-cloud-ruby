# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/chat/v1/space_setup.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/chat/v1/membership_pb'
require 'google/chat/v1/space_pb'


descriptor_data = "\n google/chat/v1/space_setup.proto\x12\x0egoogle.chat.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1fgoogle/chat/v1/membership.proto\x1a\x1agoogle/chat/v1/space.proto\"\x8d\x01\n\x11SetUpSpaceRequest\x12)\n\x05space\x18\x01 \x01(\x0b\x32\x15.google.chat.v1.SpaceB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0bmemberships\x18\x04 \x03(\x0b\x32\x1a.google.chat.v1.MembershipB\x03\xe0\x41\x01\x42\xa8\x01\n\x12\x63om.google.chat.v1B\x0fSpaceSetupProtoP\x01Z,cloud.google.com/go/chat/apiv1/chatpb;chatpb\xa2\x02\x0b\x44YNAPIProto\xaa\x02\x13Google.Apps.Chat.V1\xca\x02\x13Google\\Apps\\Chat\\V1\xea\x02\x16Google::Apps::Chat::V1b\x06proto3"

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
    ["google.chat.v1.Space", "google/chat/v1/space.proto"],
    ["google.chat.v1.Membership", "google/chat/v1/membership.proto"],
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
        SetUpSpaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.SetUpSpaceRequest").msgclass
      end
    end
  end
end
