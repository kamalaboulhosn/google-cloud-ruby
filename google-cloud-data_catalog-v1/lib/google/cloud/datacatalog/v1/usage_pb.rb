# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/v1/usage.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\'google/cloud/datacatalog/v1/usage.proto\x12\x1bgoogle.cloud.datacatalog.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x91\x01\n\nUsageStats\x12\x19\n\x11total_completions\x18\x01 \x01(\x02\x12\x16\n\x0etotal_failures\x18\x02 \x01(\x02\x12\x1b\n\x13total_cancellations\x18\x03 \x01(\x02\x12\x33\n+total_execution_time_for_completions_millis\x18\x04 \x01(\x02\":\n\x10\x43ommonUsageStats\x12\x17\n\nview_count\x18\x01 \x01(\x03H\x00\x88\x01\x01\x42\r\n\x0b_view_count\"\xa2\x04\n\x0bUsageSignal\x12/\n\x0bupdate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12h\n\x17usage_within_time_range\x18\x02 \x03(\x0b\x32\x42.google.cloud.datacatalog.v1.UsageSignal.UsageWithinTimeRangeEntryB\x03\xe0\x41\x03\x12p\n\x1e\x63ommon_usage_within_time_range\x18\x03 \x03(\x0b\x32H.google.cloud.datacatalog.v1.UsageSignal.CommonUsageWithinTimeRangeEntry\x12\x1b\n\x0e\x66\x61vorite_count\x18\x04 \x01(\x03H\x00\x88\x01\x01\x1a\x64\n\x19UsageWithinTimeRangeEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x36\n\x05value\x18\x02 \x01(\x0b\x32\'.google.cloud.datacatalog.v1.UsageStats:\x02\x38\x01\x1ap\n\x1f\x43ommonUsageWithinTimeRangeEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12<\n\x05value\x18\x02 \x01(\x0b\x32-.google.cloud.datacatalog.v1.CommonUsageStats:\x02\x38\x01\x42\x11\n\x0f_favorite_countB\xc3\x01\n\x1f\x63om.google.cloud.datacatalog.v1P\x01ZAcloud.google.com/go/datacatalog/apiv1/datacatalogpb;datacatalogpb\xaa\x02\x1bGoogle.Cloud.DataCatalog.V1\xca\x02\x1bGoogle\\Cloud\\DataCatalog\\V1\xea\x02\x1eGoogle::Cloud::DataCatalog::V1b\x06proto3"

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
        UsageStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.UsageStats").msgclass
        CommonUsageStats = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.CommonUsageStats").msgclass
        UsageSignal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.UsageSignal").msgclass
      end
    end
  end
end
