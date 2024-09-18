# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/openapi.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n(google/cloud/aiplatform/v1/openapi.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1cgoogle/protobuf/struct.proto\"\xf7\x05\n\x06Schema\x12\x33\n\x04type\x18\x01 \x01(\x0e\x32 .google.cloud.aiplatform.v1.TypeB\x03\xe0\x41\x01\x12\x13\n\x06\x66ormat\x18\x07 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05title\x18\x18 \x01(\tB\x03\xe0\x41\x01\x12\x18\n\x0b\x64\x65scription\x18\x08 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08nullable\x18\x06 \x01(\x08\x42\x03\xe0\x41\x01\x12,\n\x07\x64\x65\x66\x61ult\x18\x17 \x01(\x0b\x32\x16.google.protobuf.ValueB\x03\xe0\x41\x01\x12\x36\n\x05items\x18\x02 \x01(\x0b\x32\".google.cloud.aiplatform.v1.SchemaB\x03\xe0\x41\x01\x12\x16\n\tmin_items\x18\x15 \x01(\x03\x42\x03\xe0\x41\x01\x12\x16\n\tmax_items\x18\x16 \x01(\x03\x42\x03\xe0\x41\x01\x12\x11\n\x04\x65num\x18\t \x03(\tB\x03\xe0\x41\x01\x12K\n\nproperties\x18\x03 \x03(\x0b\x32\x32.google.cloud.aiplatform.v1.Schema.PropertiesEntryB\x03\xe0\x41\x01\x12\x1e\n\x11property_ordering\x18\x19 \x03(\tB\x03\xe0\x41\x01\x12\x15\n\x08required\x18\x05 \x03(\tB\x03\xe0\x41\x01\x12\x1b\n\x0emin_properties\x18\x0e \x01(\x03\x42\x03\xe0\x41\x01\x12\x1b\n\x0emax_properties\x18\x0f \x01(\x03\x42\x03\xe0\x41\x01\x12\x14\n\x07minimum\x18\x10 \x01(\x01\x42\x03\xe0\x41\x01\x12\x14\n\x07maximum\x18\x11 \x01(\x01\x42\x03\xe0\x41\x01\x12\x17\n\nmin_length\x18\x12 \x01(\x03\x42\x03\xe0\x41\x01\x12\x17\n\nmax_length\x18\x13 \x01(\x03\x42\x03\xe0\x41\x01\x12\x14\n\x07pattern\x18\x14 \x01(\tB\x03\xe0\x41\x01\x12,\n\x07\x65xample\x18\x04 \x01(\x0b\x32\x16.google.protobuf.ValueB\x03\xe0\x41\x01\x1aU\n\x0fPropertiesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x31\n\x05value\x18\x02 \x01(\x0b\x32\".google.cloud.aiplatform.v1.Schema:\x02\x38\x01*e\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06STRING\x10\x01\x12\n\n\x06NUMBER\x10\x02\x12\x0b\n\x07INTEGER\x10\x03\x12\x0b\n\x07\x42OOLEAN\x10\x04\x12\t\n\x05\x41RRAY\x10\x05\x12\n\n\x06OBJECT\x10\x06\x42\xca\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x0cOpenApiProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
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
    module AIPlatform
      module V1
        Schema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Schema").msgclass
        Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.Type").enummodule
      end
    end
  end
end
