# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/cx/v3/security_settings.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n5google/cloud/dialogflow/cx/v3/security_settings.proto\x12\x1dgoogle.cloud.dialogflow.cx.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"^\n\x1aGetSecuritySettingsRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*dialogflow.googleapis.com/SecuritySettings\"\xa6\x01\n\x1dUpdateSecuritySettingsRequest\x12O\n\x11security_settings\x18\x01 \x01(\x0b\x32/.google.cloud.dialogflow.cx.v3.SecuritySettingsB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"\x88\x01\n\x1bListSecuritySettingsRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\x12*dialogflow.googleapis.com/SecuritySettings\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x83\x01\n\x1cListSecuritySettingsResponse\x12J\n\x11security_settings\x18\x01 \x03(\x0b\x32/.google.cloud.dialogflow.cx.v3.SecuritySettings\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xb4\x01\n\x1d\x43reateSecuritySettingsRequest\x12\x42\n\x06parent\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\x12*dialogflow.googleapis.com/SecuritySettings\x12O\n\x11security_settings\x18\x02 \x01(\x0b\x32/.google.cloud.dialogflow.cx.v3.SecuritySettingsB\x03\xe0\x41\x02\"a\n\x1d\x44\x65leteSecuritySettingsRequest\x12@\n\x04name\x18\x01 \x01(\tB2\xe0\x41\x02\xfa\x41,\n*dialogflow.googleapis.com/SecuritySettings\"\xce\x0c\n\x10SecuritySettings\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12]\n\x12redaction_strategy\x18\x03 \x01(\x0e\x32\x41.google.cloud.dialogflow.cx.v3.SecuritySettings.RedactionStrategy\x12W\n\x0fredaction_scope\x18\x04 \x01(\x0e\x32>.google.cloud.dialogflow.cx.v3.SecuritySettings.RedactionScope\x12\x41\n\x10inspect_template\x18\t \x01(\tB\'\xfa\x41$\n\"dlp.googleapis.com/InspectTemplate\x12G\n\x13\x64\x65identify_template\x18\x11 \x01(\tB*\xfa\x41\'\n%dlp.googleapis.com/DeidentifyTemplate\x12\x1f\n\x15retention_window_days\x18\x06 \x01(\x05H\x00\x12_\n\x12retention_strategy\x18\x07 \x01(\x0e\x32\x41.google.cloud.dialogflow.cx.v3.SecuritySettings.RetentionStrategyH\x00\x12W\n\x10purge_data_types\x18\x08 \x03(\x0e\x32=.google.cloud.dialogflow.cx.v3.SecuritySettings.PurgeDataType\x12\x62\n\x15\x61udio_export_settings\x18\x0c \x01(\x0b\x32\x43.google.cloud.dialogflow.cx.v3.SecuritySettings.AudioExportSettings\x12h\n\x18insights_export_settings\x18\r \x01(\x0b\x32\x46.google.cloud.dialogflow.cx.v3.SecuritySettings.InsightsExportSettings\x1a\x98\x02\n\x13\x41udioExportSettings\x12\x12\n\ngcs_bucket\x18\x01 \x01(\t\x12\x1c\n\x14\x61udio_export_pattern\x18\x02 \x01(\t\x12\x1e\n\x16\x65nable_audio_redaction\x18\x03 \x01(\x08\x12\x65\n\x0c\x61udio_format\x18\x04 \x01(\x0e\x32O.google.cloud.dialogflow.cx.v3.SecuritySettings.AudioExportSettings.AudioFormat\"H\n\x0b\x41udioFormat\x12\x1c\n\x18\x41UDIO_FORMAT_UNSPECIFIED\x10\x00\x12\t\n\x05MULAW\x10\x01\x12\x07\n\x03MP3\x10\x02\x12\x07\n\x03OGG\x10\x03\x1a\x38\n\x16InsightsExportSettings\x12\x1e\n\x16\x65nable_insights_export\x18\x01 \x01(\x08\"P\n\x11RedactionStrategy\x12\"\n\x1eREDACTION_STRATEGY_UNSPECIFIED\x10\x00\x12\x17\n\x13REDACT_WITH_SERVICE\x10\x01\"J\n\x0eRedactionScope\x12\x1f\n\x1bREDACTION_SCOPE_UNSPECIFIED\x10\x00\x12\x17\n\x13REDACT_DISK_STORAGE\x10\x02\"V\n\x11RetentionStrategy\x12\"\n\x1eRETENTION_STRATEGY_UNSPECIFIED\x10\x00\x12\x1d\n\x19REMOVE_AFTER_CONVERSATION\x10\x01\"H\n\rPurgeDataType\x12\x1f\n\x1bPURGE_DATA_TYPE_UNSPECIFIED\x10\x00\x12\x16\n\x12\x44IALOGFLOW_HISTORY\x10\x01:}\xea\x41z\n*dialogflow.googleapis.com/SecuritySettings\x12Lprojects/{project}/locations/{location}/securitySettings/{security_settings}B\x10\n\x0e\x64\x61ta_retention2\xef\t\n\x17SecuritySettingsService\x12\xf3\x01\n\x16\x43reateSecuritySettings\x12<.google.cloud.dialogflow.cx.v3.CreateSecuritySettingsRequest\x1a/.google.cloud.dialogflow.cx.v3.SecuritySettings\"j\xda\x41\x18parent,security_settings\x82\xd3\xe4\x93\x02I\"4/v3/{parent=projects/*/locations/*}/securitySettings:\x11security_settings\x12\xc6\x01\n\x13GetSecuritySettings\x12\x39.google.cloud.dialogflow.cx.v3.GetSecuritySettingsRequest\x1a/.google.cloud.dialogflow.cx.v3.SecuritySettings\"C\xda\x41\x04name\x82\xd3\xe4\x93\x02\x36\x12\x34/v3/{name=projects/*/locations/*/securitySettings/*}\x12\x8b\x02\n\x16UpdateSecuritySettings\x12<.google.cloud.dialogflow.cx.v3.UpdateSecuritySettingsRequest\x1a/.google.cloud.dialogflow.cx.v3.SecuritySettings\"\x81\x01\xda\x41\x1dsecurity_settings,update_mask\x82\xd3\xe4\x93\x02[2F/v3/{security_settings.name=projects/*/locations/*/securitySettings/*}:\x11security_settings\x12\xd6\x01\n\x14ListSecuritySettings\x12:.google.cloud.dialogflow.cx.v3.ListSecuritySettingsRequest\x1a;.google.cloud.dialogflow.cx.v3.ListSecuritySettingsResponse\"E\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x36\x12\x34/v3/{parent=projects/*/locations/*}/securitySettings\x12\xb3\x01\n\x16\x44\x65leteSecuritySettings\x12<.google.cloud.dialogflow.cx.v3.DeleteSecuritySettingsRequest\x1a\x16.google.protobuf.Empty\"C\xda\x41\x04name\x82\xd3\xe4\x93\x02\x36*4/v3/{name=projects/*/locations/*/securitySettings/*}\x1ax\xca\x41\x19\x64ialogflow.googleapis.com\xd2\x41Yhttps://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/dialogflowB\xe2\x04\n!com.google.cloud.dialogflow.cx.v3B\x15SecuritySettingsProtoP\x01Z1cloud.google.com/go/dialogflow/cx/apiv3/cxpb;cxpb\xf8\x01\x01\xa2\x02\x02\x44\x46\xaa\x02\x1dGoogle.Cloud.Dialogflow.Cx.V3\xea\x02!Google::Cloud::Dialogflow::CX::V3\xea\x41\xc8\x01\n\"dlp.googleapis.com/InspectTemplate\x12Uorganizations/{organization}/locations/{location}/inspectTemplates/{inspect_template}\x12Kprojects/{project}/locations/{location}/inspectTemplates/{inspect_template}\xea\x41\xd7\x01\n%dlp.googleapis.com/DeidentifyTemplate\x12[organizations/{organization}/locations/{location}/deidentifyTemplates/{deidentify_template}\x12Qprojects/{project}/locations/{location}/deidentifyTemplates/{deidentify_template}b\x06proto3"

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
          GetSecuritySettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.GetSecuritySettingsRequest").msgclass
          UpdateSecuritySettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.UpdateSecuritySettingsRequest").msgclass
          ListSecuritySettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListSecuritySettingsRequest").msgclass
          ListSecuritySettingsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.ListSecuritySettingsResponse").msgclass
          CreateSecuritySettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.CreateSecuritySettingsRequest").msgclass
          DeleteSecuritySettingsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.DeleteSecuritySettingsRequest").msgclass
          SecuritySettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SecuritySettings").msgclass
          SecuritySettings::AudioExportSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SecuritySettings.AudioExportSettings").msgclass
          SecuritySettings::AudioExportSettings::AudioFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SecuritySettings.AudioExportSettings.AudioFormat").enummodule
          SecuritySettings::InsightsExportSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SecuritySettings.InsightsExportSettings").msgclass
          SecuritySettings::RedactionStrategy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SecuritySettings.RedactionStrategy").enummodule
          SecuritySettings::RedactionScope = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SecuritySettings.RedactionScope").enummodule
          SecuritySettings::RetentionStrategy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SecuritySettings.RetentionStrategy").enummodule
          SecuritySettings::PurgeDataType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.cx.v3.SecuritySettings.PurgeDataType").enummodule
        end
      end
    end
  end
end
