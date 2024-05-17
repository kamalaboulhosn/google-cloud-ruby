# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1beta1/data_types.proto

require 'google/protobuf'


descriptor_data = "\n,google/cloud/automl/v1beta1/data_types.proto\x12\x1bgoogle.cloud.automl.v1beta1\"\xfc\x01\n\x08\x44\x61taType\x12\x42\n\x11list_element_type\x18\x02 \x01(\x0b\x32%.google.cloud.automl.v1beta1.DataTypeH\x00\x12>\n\x0bstruct_type\x18\x03 \x01(\x0b\x32\'.google.cloud.automl.v1beta1.StructTypeH\x00\x12\x15\n\x0btime_format\x18\x05 \x01(\tH\x00\x12\x38\n\ttype_code\x18\x01 \x01(\x0e\x32%.google.cloud.automl.v1beta1.TypeCode\x12\x10\n\x08nullable\x18\x04 \x01(\x08\x42\t\n\x07\x64\x65tails\"\xa7\x01\n\nStructType\x12\x43\n\x06\x66ields\x18\x01 \x03(\x0b\x32\x33.google.cloud.automl.v1beta1.StructType.FieldsEntry\x1aT\n\x0b\x46ieldsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x34\n\x05value\x18\x02 \x01(\x0b\x32%.google.cloud.automl.v1beta1.DataType:\x02\x38\x01*r\n\x08TypeCode\x12\x19\n\x15TYPE_CODE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x46LOAT64\x10\x03\x12\r\n\tTIMESTAMP\x10\x04\x12\n\n\x06STRING\x10\x06\x12\t\n\x05\x41RRAY\x10\x08\x12\n\n\x06STRUCT\x10\t\x12\x0c\n\x08\x43\x41TEGORY\x10\nB\x9b\x01\n\x1f\x63om.google.cloud.automl.v1beta1P\x01Z7cloud.google.com/go/automl/apiv1beta1/automlpb;automlpb\xca\x02\x1bGoogle\\Cloud\\AutoMl\\V1beta1\xea\x02\x1eGoogle::Cloud::AutoML::V1beta1b\x06proto3"

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
    module AutoML
      module V1beta1
        DataType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.DataType").msgclass
        StructType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.StructType").msgclass
        TypeCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1beta1.TypeCode").enummodule
      end
    end
  end
end
