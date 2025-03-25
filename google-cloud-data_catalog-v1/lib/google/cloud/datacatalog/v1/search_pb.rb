# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/v1/search.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/cloud/datacatalog/v1/common_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n(google/cloud/datacatalog/v1/search.proto\x12\x1bgoogle.cloud.datacatalog.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a(google/cloud/datacatalog/v1/common.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xae\x03\n\x13SearchCatalogResult\x12I\n\x12search_result_type\x18\x01 \x01(\x0e\x32-.google.cloud.datacatalog.v1.SearchResultType\x12\x1d\n\x15search_result_subtype\x18\x02 \x01(\t\x12\x1e\n\x16relative_resource_name\x18\x03 \x01(\t\x12\x17\n\x0flinked_resource\x18\x04 \x01(\t\x12/\n\x0bmodify_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12O\n\x11integrated_system\x18\x08 \x01(\x0e\x32-.google.cloud.datacatalog.v1.IntegratedSystemB\x03\xe0\x41\x03H\x00\x12\x1f\n\x15user_specified_system\x18\t \x01(\tH\x00\x12\x1c\n\x14\x66ully_qualified_name\x18\n \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x0c \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\r \x01(\tB\x08\n\x06system*d\n\x10SearchResultType\x12\"\n\x1eSEARCH_RESULT_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05\x45NTRY\x10\x01\x12\x10\n\x0cTAG_TEMPLATE\x10\x02\x12\x0f\n\x0b\x45NTRY_GROUP\x10\x03\x42\xc3\x01\n\x1f\x63om.google.cloud.datacatalog.v1P\x01ZAcloud.google.com/go/datacatalog/apiv1/datacatalogpb;datacatalogpb\xaa\x02\x1bGoogle.Cloud.DataCatalog.V1\xca\x02\x1bGoogle\\Cloud\\DataCatalog\\V1\xea\x02\x1eGoogle::Cloud::DataCatalog::V1b\x06proto3"

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
    module DataCatalog
      module V1
        SearchCatalogResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.SearchCatalogResult").msgclass
        SearchResultType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.SearchResultType").enummodule
      end
    end
  end
end
