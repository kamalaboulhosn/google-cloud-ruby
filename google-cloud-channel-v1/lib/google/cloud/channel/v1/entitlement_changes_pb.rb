# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/channel/v1/entitlement_changes.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/channel/v1/entitlements_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n1google/cloud/channel/v1/entitlement_changes.proto\x12\x17google.cloud.channel.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a*google/cloud/channel/v1/entitlements.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xbe\x0c\n\x11\x45ntitlementChange\x12R\n\x11suspension_reason\x18\t \x01(\x0e\x32\x35.google.cloud.channel.v1.Entitlement.SuspensionReasonH\x00\x12\\\n\x13\x63\x61ncellation_reason\x18\n \x01(\x0e\x32=.google.cloud.channel.v1.EntitlementChange.CancellationReasonH\x00\x12X\n\x11\x61\x63tivation_reason\x18\x0b \x01(\x0e\x32;.google.cloud.channel.v1.EntitlementChange.ActivationReasonH\x00\x12\x1d\n\x13other_change_reason\x18\x64 \x01(\tH\x00\x12\x44\n\x0b\x65ntitlement\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'cloudchannel.googleapis.com/Entitlement\x12\x38\n\x05offer\x18\x02 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!cloudchannel.googleapis.com/Offer\x12H\n\x13provisioned_service\x18\x03 \x01(\x0b\x32+.google.cloud.channel.v1.ProvisionedService\x12J\n\x0b\x63hange_type\x18\x04 \x01(\x0e\x32\x35.google.cloud.channel.v1.EntitlementChange.ChangeType\x12/\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12N\n\roperator_type\x18\x06 \x01(\x0e\x32\x37.google.cloud.channel.v1.EntitlementChange.OperatorType\x12\x36\n\nparameters\x18\x08 \x03(\x0b\x32\".google.cloud.channel.v1.Parameter\x12\x10\n\x08operator\x18\x0c \x01(\t\"\xd7\x02\n\nChangeType\x12\x1b\n\x17\x43HANGE_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x43REATED\x10\x01\x12\x17\n\x13PRICE_PLAN_SWITCHED\x10\x03\x12\x16\n\x12\x43OMMITMENT_CHANGED\x10\x04\x12\x0b\n\x07RENEWED\x10\x05\x12\r\n\tSUSPENDED\x10\x06\x12\r\n\tACTIVATED\x10\x07\x12\r\n\tCANCELLED\x10\x08\x12\x0f\n\x0bSKU_CHANGED\x10\t\x12\x1b\n\x17RENEWAL_SETTING_CHANGED\x10\n\x12\x1d\n\x19PAID_SUBSCRIPTION_STARTED\x10\x0b\x12\x17\n\x13LICENSE_CAP_CHANGED\x10\x0c\x12\x1e\n\x1aSUSPENSION_DETAILS_CHANGED\x10\r\x12\x1b\n\x17TRIAL_END_DATE_EXTENDED\x10\x0e\x12\x11\n\rTRIAL_STARTED\x10\x0f\"z\n\x0cOperatorType\x12\x1d\n\x19OPERATOR_TYPE_UNSPECIFIED\x10\x00\x12#\n\x1f\x43USTOMER_SERVICE_REPRESENTATIVE\x10\x01\x12\n\n\x06SYSTEM\x10\x02\x12\x0c\n\x08\x43USTOMER\x10\x03\x12\x0c\n\x08RESELLER\x10\x04\"\x7f\n\x12\x43\x61ncellationReason\x12#\n\x1f\x43\x41NCELLATION_REASON_UNSPECIFIED\x10\x00\x12\x16\n\x12SERVICE_TERMINATED\x10\x01\x12\x16\n\x12RELATIONSHIP_ENDED\x10\x02\x12\x14\n\x10PARTIAL_TRANSFER\x10\x03\"\xb4\x01\n\x10\x41\x63tivationReason\x12!\n\x1d\x41\x43TIVATION_REASON_UNSPECIFIED\x10\x00\x12\x1f\n\x1bRESELLER_REVOKED_SUSPENSION\x10\x01\x12!\n\x1d\x43USTOMER_ACCEPTED_PENDING_TOS\x10\x02\x12\x1c\n\x18RENEWAL_SETTINGS_CHANGED\x10\x03\x12\x1b\n\x17OTHER_ACTIVATION_REASON\x10\x64\x42\x0f\n\rchange_reasonBo\n\x1b\x63om.google.cloud.channel.v1B\x17\x45ntitlementChangesProtoP\x01Z5cloud.google.com/go/channel/apiv1/channelpb;channelpbb\x06proto3"

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
    ["google.cloud.channel.v1.ProvisionedService", "google/cloud/channel/v1/entitlements.proto"],
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
    module Channel
      module V1
        EntitlementChange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.EntitlementChange").msgclass
        EntitlementChange::ChangeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.EntitlementChange.ChangeType").enummodule
        EntitlementChange::OperatorType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.EntitlementChange.OperatorType").enummodule
        EntitlementChange::CancellationReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.EntitlementChange.CancellationReason").enummodule
        EntitlementChange::ActivationReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.channel.v1.EntitlementChange.ActivationReason").enummodule
      end
    end
  end
end
