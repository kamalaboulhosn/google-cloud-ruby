# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/stitcher/v1/cdn_keys.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n-google/cloud/video/stitcher/v1/cdn_keys.proto\x12\x1egoogle.cloud.video.stitcher.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xf5\x02\n\x06\x43\x64nKey\x12\x46\n\x0egoogle_cdn_key\x18\x05 \x01(\x0b\x32,.google.cloud.video.stitcher.v1.GoogleCdnKeyH\x00\x12\x46\n\x0e\x61kamai_cdn_key\x18\x06 \x01(\x0b\x32,.google.cloud.video.stitcher.v1.AkamaiCdnKeyH\x00\x12\x44\n\rmedia_cdn_key\x18\x08 \x01(\x0b\x32+.google.cloud.video.stitcher.v1.MediaCdnKeyH\x00\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x10\n\x08hostname\x18\x04 \x01(\t:c\xea\x41`\n#videostitcher.googleapis.com/CdnKey\x12\x39projects/{project}/locations/{location}/cdnKeys/{cdn_key}B\x10\n\x0e\x63\x64n_key_config\":\n\x0cGoogleCdnKey\x12\x18\n\x0bprivate_key\x18\x01 \x01(\x0c\x42\x03\xe0\x41\x04\x12\x10\n\x08key_name\x18\x02 \x01(\t\"&\n\x0c\x41kamaiCdnKey\x12\x16\n\ttoken_key\x18\x01 \x01(\x0c\x42\x03\xe0\x41\x04\"\xba\x01\n\x0bMediaCdnKey\x12\x18\n\x0bprivate_key\x18\x01 \x01(\x0c\x42\x03\xe0\x41\x04\x12\x10\n\x08key_name\x18\x02 \x01(\t\x12R\n\x0ctoken_config\x18\x03 \x01(\x0b\x32\x37.google.cloud.video.stitcher.v1.MediaCdnKey.TokenConfigB\x03\xe0\x41\x01\x1a+\n\x0bTokenConfig\x12\x1c\n\x0fquery_parameter\x18\x01 \x01(\tB\x03\xe0\x41\x01\x42t\n\"com.google.cloud.video.stitcher.v1B\x0c\x43\x64nKeysProtoP\x01Z>cloud.google.com/go/video/stitcher/apiv1/stitcherpb;stitcherpbb\x06proto3"

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
    module Video
      module Stitcher
        module V1
          CdnKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.CdnKey").msgclass
          GoogleCdnKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.GoogleCdnKey").msgclass
          AkamaiCdnKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.AkamaiCdnKey").msgclass
          MediaCdnKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.MediaCdnKey").msgclass
          MediaCdnKey::TokenConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.MediaCdnKey.TokenConfig").msgclass
        end
      end
    end
  end
end
