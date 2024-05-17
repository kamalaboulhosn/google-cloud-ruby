# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/generator.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n-google/cloud/dialogflow/cx/v3/generator.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"\xe8\x02\n\tGenerator\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12?\n\x0bprompt_text\x18\x03 \x01(\x0b\x32%.google.cloud.dialogflow.cx.v3.PhraseB\x03\xe0\x41\x02\x12O\n\x0cplaceholders\x18\x05 \x03(\x0b\x32\x34.google.cloud.dialogflow.cx.v3.Generator.PlaceholderB\x03\xe0\x41\x01\x1a\'\n\x0bPlaceholder\x12\n\n\x02id\x18\x01 \x01(\t\x12\x0c\n\x04name\x18\x02 \x01(\t:w\xea\x41t\n#dialogflow.googleapis.com/Generator\x12Mprojects/{project}/locations/{location}/agents/{agent}/generators/{generator}\"\x1b\n\x06Phrase\x12\x11\n\x04text\x18\x01 \x01(\tB\x03\xe0\x41\x02\"\x92\x01\n\x15ListGeneratorsRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#dialogflow.googleapis.com/Generator\x12\x15\n\rlanguage_code\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"o\n\x16ListGeneratorsResponse\x12<\n\ngenerators\x18\x01 \x03(\x0b\x32(.google.cloud.dialogflow.cx.v3.Generator\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"g\n\x13GetGeneratorRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#dialogflow.googleapis.com/Generator\x12\x15\n\rlanguage_code\x18\x02 \x01(\t\"\xae\x01\n\x16\x43reateGeneratorRequest\x12;\n\x06parent\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\x12#dialogflow.googleapis.com/Generator\x12@\n\tgenerator\x18\x02 \x01(\x0b\x32(.google.cloud.dialogflow.cx.v3.GeneratorB\x03\xe0\x41\x02\x12\x15\n\rlanguage_code\x18\x03 \x01(\t\"\xa2\x01\n\x16UpdateGeneratorRequest\x12@\n\tgenerator\x18\x01 \x01(\x0b\x32(.google.cloud.dialogflow.cx.v3.GeneratorB\x03\xe0\x41\x02\x12\x15\n\rlanguage_code\x18\x02 \x01(\t\x12/\n\x0bupdate_mask\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"b\n\x16\x44\x65leteGeneratorRequest\x12\x39\n\x04name\x18\x01 \x01(\tB+\xe0\x41\x02\xfa\x41%\n#dialogflow.googleapis.com/Generator\x12\r\n\x05\x66orce\x18\x02 \x01(\x08\x32\xe9\x08\n\nGenerators\x12\xc7\x01\n\x0eListGenerators\x12\x34.google.cloud.dialogflow.cx.v3.ListGeneratorsRequest\x1a\x35.google.cloud.dialogflow.cx.v3.ListGeneratorsResponse\"H\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x39\x12\x37/v3/{parent=projects/*/locations/*/agents/*}/generators\x12\xb4\x01\n\x0cGetGenerator\x12\x32.google.cloud.dialogflow.cx.v3.GetGeneratorRequest\x1a(.google.cloud.dialogflow.cx.v3.Generator\"F\xda\x41\x04name\x82\xd3\xe4\x93\x02\x39\x12\x37/v3/{name=projects/*/locations/*/agents/*/generators/*}\x12\xd1\x01\n\x0f\x43reateGenerator\x12\x35.google.cloud.dialogflow.cx.v3.CreateGeneratorRequest\x1a(.google.cloud.dialogflow.cx.v3.Generator\"]\xda\x41\x10parent,generator\x82\xd3\xe4\x93\x02\x44\"7/v3/{parent=projects/*/locations/*/agents/*}/generators:\tgenerator\x12\xe0\x01\n\x0fUpdateGenerator\x12\x35.google.cloud.dialogflow.cx.v3.UpdateGeneratorRequest\x1a(.google.cloud.dialogflow.cx.v3.Generator\"l\xda\x41\x15generator,update_mask\x82\xd3\xe4\x93\x02N2A/v3/{generator.name=projects/*/locations/*/agents/*/generators/*}:\tgenerator\x12\xa8\x01\n\x0f\x44\x65leteGenerator\x12\x35.google.cloud.dialogflow.cx.v3.DeleteGeneratorRequest\x1a\x16.google.protobuf.Empty\"F\xda\x41\x04name\x82\xd3\xe4\x93\x02\x39*7/v3/{name=projects/*/locations/*/agents/*/generators/*}\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\xb4\x01\n!com.google.cloud.dialogflow.cx.v3B\x0eGeneratorProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module Dialogflow
      module CX
        module V3
          Generator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Generator").msgclass
          Generator::Placeholder = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Generator.Placeholder").msgclass
          Phrase = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.Phrase").msgclass
          ListGeneratorsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListGeneratorsRequest").msgclass
          ListGeneratorsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListGeneratorsResponse").msgclass
          GetGeneratorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetGeneratorRequest").msgclass
          CreateGeneratorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.CreateGeneratorRequest").msgclass
          UpdateGeneratorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.UpdateGeneratorRequest").msgclass
          DeleteGeneratorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DeleteGeneratorRequest").msgclass
        end
      end
    end
  end
end
