# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1/translation.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/cloud/automl/v1/data_items_pb'


descriptor_data = "\n(google/cloud/automl/v1/translation.proto\x12\x16google.cloud.automl.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\'google/cloud/automl/v1/data_items.proto\"b\n\x1aTranslationDatasetMetadata\x12!\n\x14source_language_code\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12!\n\x14target_language_code\x18\x02 \x01(\tB\x03\xe0\x41\x02\"K\n\x1cTranslationEvaluationMetrics\x12\x12\n\nbleu_score\x18\x01 \x01(\x01\x12\x17\n\x0f\x62\x61se_bleu_score\x18\x02 \x01(\x01\"j\n\x18TranslationModelMetadata\x12\x12\n\nbase_model\x18\x01 \x01(\t\x12\x1c\n\x14source_language_code\x18\x02 \x01(\t\x12\x1c\n\x14target_language_code\x18\x03 \x01(\t\"X\n\x15TranslationAnnotation\x12?\n\x12translated_content\x18\x01 \x01(\x0b\x32#.google.cloud.automl.v1.TextSnippetB\xb2\x01\n\x1a\x63om.google.cloud.automl.v1B\x10TranslationProtoP\x01Z2cloud.google.com/go/automl/apiv1/automlpb;automlpb\xaa\x02\x16Google.Cloud.AutoML.V1\xca\x02\x16Google\\Cloud\\AutoMl\\V1\xea\x02\x19Google::Cloud::AutoML::V1b\x06proto3"

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
    ["google.cloud.automl.v1.TextSnippet", "google/cloud/automl/v1/data_items.proto"],
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
      module V1
        TranslationDatasetMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TranslationDatasetMetadata").msgclass
        TranslationEvaluationMetrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TranslationEvaluationMetrics").msgclass
        TranslationModelMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TranslationModelMetadata").msgclass
        TranslationAnnotation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.TranslationAnnotation").msgclass
      end
    end
  end
end
