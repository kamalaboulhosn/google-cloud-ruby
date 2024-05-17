# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/generative_settings.proto

require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/cloud/dialogflow/cx/v3/safety_settings_pb'


descriptor_data = "\n7google/cloud/dialogflow/cx/v3/generative_settings.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x19google/api/resource.proto\x1a\x33google/cloud/dialogflow/cx/v3/safety_settings.proto\"\xfb\x06\n\x12GenerativeSettings\x12\x0c\n\x04name\x18\x05 \x01(\t\x12]\n\x11\x66\x61llback_settings\x18\x01 \x01(\x0b\x32\x42.google.cloud.dialogflow.cx.v3.GenerativeSettings.FallbackSettings\x12Q\n\x1agenerative_safety_settings\x18\x03 \x01(\x0b\x32-.google.cloud.dialogflow.cx.v3.SafetySettings\x12r\n\x1cknowledge_connector_settings\x18\x07 \x01(\x0b\x32L.google.cloud.dialogflow.cx.v3.GenerativeSettings.KnowledgeConnectorSettings\x12\x15\n\rlanguage_code\x18\x04 \x01(\t\x1a\xe5\x01\n\x10\x46\x61llbackSettings\x12\x17\n\x0fselected_prompt\x18\x03 \x01(\t\x12k\n\x10prompt_templates\x18\x04 \x03(\x0b\x32Q.google.cloud.dialogflow.cx.v3.GenerativeSettings.FallbackSettings.PromptTemplate\x1aK\n\x0ePromptTemplate\x12\x14\n\x0c\x64isplay_name\x18\x01 \x01(\t\x12\x13\n\x0bprompt_text\x18\x02 \x01(\t\x12\x0e\n\x06\x66rozen\x18\x03 \x01(\x08\x1a\xad\x01\n\x1aKnowledgeConnectorSettings\x12\x10\n\x08\x62usiness\x18\x01 \x01(\t\x12\r\n\x05\x61gent\x18\x02 \x01(\t\x12\x16\n\x0e\x61gent_identity\x18\x03 \x01(\t\x12\x1c\n\x14\x62usiness_description\x18\x04 \x01(\t\x12\x13\n\x0b\x61gent_scope\x18\x05 \x01(\t\x12#\n\x1b\x64isable_data_store_fallback\x18\x08 \x01(\x08:\x81\x01\xea\x41~\n1dialogflow.googleapis.com/AgentGenerativeSettings\x12Iprojects/{project}/locations/{location}/agents/{agent}/generativeSettingsB\xbd\x01\n!com.google.cloud.dialogflow.cx.v3B\x17GenerativeSettingsProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3b\x06proto3"

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
    ["google.cloud.dialogflow.cx.v3.SafetySettings", "google/cloud/dialogflow/cx/v3/safety_settings.proto"],
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
          GenerativeSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GenerativeSettings").msgclass
          GenerativeSettings::FallbackSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GenerativeSettings.FallbackSettings").msgclass
          GenerativeSettings::FallbackSettings::PromptTemplate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GenerativeSettings.FallbackSettings.PromptTemplate").msgclass
          GenerativeSettings::KnowledgeConnectorSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GenerativeSettings.KnowledgeConnectorSettings").msgclass
        end
      end
    end
  end
end
