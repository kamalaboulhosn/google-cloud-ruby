# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1/effective_event_threat_detection_custom_module.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\nSgoogle/cloud/securitycenter/v1/effective_event_threat_detection_custom_module.proto\x12\x1egoogle.cloud.securitycenter.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1cgoogle/protobuf/struct.proto\"\xc9\x05\n)EffectiveEventThreatDetectionCustomModule\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12,\n\x06\x63onfig\x18\x02 \x01(\x0b\x32\x17.google.protobuf.StructB\x03\xe0\x41\x03\x12x\n\x10\x65nablement_state\x18\x03 \x01(\x0e\x32Y.google.cloud.securitycenter.v1.EffectiveEventThreatDetectionCustomModule.EnablementStateB\x03\xe0\x41\x03\x12\x11\n\x04type\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x64\x65scription\x18\x06 \x01(\tB\x03\xe0\x41\x03\"N\n\x0f\x45nablementState\x12 \n\x1c\x45NABLEMENT_STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x45NABLED\x10\x01\x12\x0c\n\x08\x44ISABLED\x10\x02:\xc8\x02\xea\x41\xc4\x02\nGsecuritycenter.googleapis.com/EffectiveEventThreatDetectionCustomModule\x12Yorganizations/{organization}/eventThreatDetectionSettings/effectiveCustomModules/{module}\x12Mfolders/{folder}/eventThreatDetectionSettings/effectiveCustomModules/{module}\x12Oprojects/{project}/eventThreatDetectionSettings/effectiveCustomModules/{module}B\x88\x02\n\"com.google.cloud.securitycenter.v1B.EffectiveEventThreatDetectionCustomModuleProtoP\x01ZJcloud.google.com/go/securitycenter/apiv1/securitycenterpb;securitycenterpb\xaa\x02\x1eGoogle.Cloud.SecurityCenter.V1\xca\x02\x1eGoogle\\Cloud\\SecurityCenter\\V1\xea\x02!Google::Cloud::SecurityCenter::V1b\x06proto3"

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
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
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
    module SecurityCenter
      module V1
        EffectiveEventThreatDetectionCustomModule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.EffectiveEventThreatDetectionCustomModule").msgclass
        EffectiveEventThreatDetectionCustomModule::EnablementState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1.EffectiveEventThreatDetectionCustomModule.EnablementState").enummodule
      end
    end
  end
end
