# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/migration/v2/migration_error_details.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/rpc/error_details_pb'


descriptor_data = "\n@google/cloud/bigquery/migration/v2/migration_error_details.proto\x12\"google.cloud.bigquery.migration.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1egoogle/rpc/error_details.proto\"\xb2\x01\n\x13ResourceErrorDetail\x12\x34\n\rresource_info\x18\x01 \x01(\x0b\x32\x18.google.rpc.ResourceInfoB\x03\xe0\x41\x02\x12K\n\rerror_details\x18\x02 \x03(\x0b\x32/.google.cloud.bigquery.migration.v2.ErrorDetailB\x03\xe0\x41\x02\x12\x18\n\x0b\x65rror_count\x18\x03 \x01(\x05\x42\x03\xe0\x41\x02\"\x87\x01\n\x0b\x45rrorDetail\x12H\n\x08location\x18\x01 \x01(\x0b\x32\x31.google.cloud.bigquery.migration.v2.ErrorLocationB\x03\xe0\x41\x01\x12.\n\nerror_info\x18\x02 \x01(\x0b\x32\x15.google.rpc.ErrorInfoB\x03\xe0\x41\x02\"7\n\rErrorLocation\x12\x11\n\x04line\x18\x01 \x01(\x05\x42\x03\xe0\x41\x01\x12\x13\n\x06\x63olumn\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x42\xd6\x01\n&com.google.cloud.bigquery.migration.v2B\x1aMigrationErrorDetailsProtoP\x01ZDcloud.google.com/go/bigquery/migration/apiv2/migrationpb;migrationpb\xaa\x02\"Google.Cloud.BigQuery.Migration.V2\xca\x02\"Google\\Cloud\\BigQuery\\Migration\\V2b\x06proto3"

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
    ["google.rpc.ResourceInfo", "google/rpc/error_details.proto"],
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
    module Bigquery
      module Migration
        module V2
          ResourceErrorDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.ResourceErrorDetail").msgclass
          ErrorDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.ErrorDetail").msgclass
          ErrorLocation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.migration.v2.ErrorLocation").msgclass
        end
      end
    end
  end
end
