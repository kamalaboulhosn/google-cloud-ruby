# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/api/cloudquotas/v1beta/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'


descriptor_data = "\n-google/api/cloudquotas/v1beta/resources.proto\x12\x1dgoogle.api.cloudquotas.v1beta\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1egoogle/protobuf/wrappers.proto\"\xab\x07\n\tQuotaInfo\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x10\n\x08quota_id\x18\x02 \x01(\t\x12\x0e\n\x06metric\x18\x03 \x01(\t\x12\x0f\n\x07service\x18\x04 \x01(\t\x12\x12\n\nis_precise\x18\x05 \x01(\x08\x12\x18\n\x10refresh_interval\x18\x06 \x01(\t\x12N\n\x0e\x63ontainer_type\x18\x07 \x01(\x0e\x32\x36.google.api.cloudquotas.v1beta.QuotaInfo.ContainerType\x12\x12\n\ndimensions\x18\x08 \x03(\t\x12\x1b\n\x13metric_display_name\x18\t \x01(\t\x12\x1a\n\x12quota_display_name\x18\n \x01(\t\x12\x13\n\x0bmetric_unit\x18\x0b \x01(\t\x12[\n\x1aquota_increase_eligibility\x18\x0c \x01(\x0b\x32\x37.google.api.cloudquotas.v1beta.QuotaIncreaseEligibility\x12\x10\n\x08is_fixed\x18\r \x01(\x08\x12G\n\x10\x64imensions_infos\x18\x0e \x03(\x0b\x32-.google.api.cloudquotas.v1beta.DimensionsInfo\x12\x15\n\ris_concurrent\x18\x0f \x01(\x08\x12!\n\x19service_request_quota_uri\x18\x11 \x01(\t\"Z\n\rContainerType\x12\x1e\n\x1a\x43ONTAINER_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PROJECT\x10\x01\x12\n\n\x06\x46OLDER\x10\x02\x12\x10\n\x0cORGANIZATION\x10\x03:\xae\x02\xea\x41\xaa\x02\n$cloudquotas.googleapis.com/QuotaInfo\x12Rprojects/{project}/locations/{location}/services/{service}/quotaInfos/{quota_info}\x12Pfolders/{folder}/locations/{location}/services/{service}/quotaInfos/{quota_info}\x12\\organizations/{organization}/locations/{location}/services/{service}/quotaInfos/{quota_info}\"\xb2\x02\n\x18QuotaIncreaseEligibility\x12\x13\n\x0bis_eligible\x18\x01 \x01(\x08\x12i\n\x14ineligibility_reason\x18\x02 \x01(\x0e\x32K.google.api.cloudquotas.v1beta.QuotaIncreaseEligibility.IneligibilityReason\"\x95\x01\n\x13IneligibilityReason\x12$\n INELIGIBILITY_REASON_UNSPECIFIED\x10\x00\x12\x1c\n\x18NO_VALID_BILLING_ACCOUNT\x10\x01\x12\x11\n\rNOT_SUPPORTED\x10\x03\x12\x1c\n\x18NOT_ENOUGH_USAGE_HISTORY\x10\x04\x12\t\n\x05OTHER\x10\x02\"\x8d\x06\n\x0fQuotaPreference\x12\x0c\n\x04name\x18\x01 \x01(\t\x12W\n\ndimensions\x18\x02 \x03(\x0b\x32>.google.api.cloudquotas.v1beta.QuotaPreference.DimensionsEntryB\x03\xe0\x41\x05\x12\x45\n\x0cquota_config\x18\x03 \x01(\x0b\x32*.google.api.cloudquotas.v1beta.QuotaConfigB\x03\xe0\x41\x02\x12\x11\n\x04\x65tag\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x34\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x14\n\x07service\x18\x07 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\x08quota_id\x18\x08 \x01(\tB\x03\xe0\x41\x02\x12\x18\n\x0breconciling\x18\n \x01(\x08\x42\x03\xe0\x41\x03\x12\x15\n\rjustification\x18\x0b \x01(\t\x12\x1a\n\rcontact_email\x18\x0c \x01(\tB\x03\xe0\x41\x04\x1a\x31\n\x0f\x44imensionsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x9f\x02\xea\x41\x9b\x02\n*cloudquotas.googleapis.com/QuotaPreference\x12Kprojects/{project}/locations/{location}/quotaPreferences/{quota_preference}\x12Ifolders/{folder}/locations/{location}/quotaPreferences/{quota_preference}\x12Uorganizations/{organization}/locations/{location}/quotaPreferences/{quota_preference}\"\xb9\x03\n\x0bQuotaConfig\x12\x1c\n\x0fpreferred_value\x18\x01 \x01(\x03\x42\x03\xe0\x41\x02\x12\x19\n\x0cstate_detail\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x37\n\rgranted_value\x18\x03 \x01(\x0b\x32\x1b.google.protobuf.Int64ValueB\x03\xe0\x41\x03\x12\x15\n\x08trace_id\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12U\n\x0b\x61nnotations\x18\x05 \x03(\x0b\x32;.google.api.cloudquotas.v1beta.QuotaConfig.AnnotationsEntryB\x03\xe0\x41\x01\x12N\n\x0erequest_origin\x18\x06 \x01(\x0e\x32\x31.google.api.cloudquotas.v1beta.QuotaConfig.OriginB\x03\xe0\x41\x03\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"F\n\x06Origin\x12\x16\n\x12ORIGIN_UNSPECIFIED\x10\x00\x12\x11\n\rCLOUD_CONSOLE\x10\x01\x12\x11\n\rAUTO_ADJUSTER\x10\x02\"\xf2\x01\n\x0e\x44imensionsInfo\x12Q\n\ndimensions\x18\x01 \x03(\x0b\x32=.google.api.cloudquotas.v1beta.DimensionsInfo.DimensionsEntry\x12<\n\x07\x64\x65tails\x18\x02 \x01(\x0b\x32+.google.api.cloudquotas.v1beta.QuotaDetails\x12\x1c\n\x14\x61pplicable_locations\x18\x03 \x03(\t\x1a\x31\n\x0f\x44imensionsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"_\n\x0cQuotaDetails\x12\r\n\x05value\x18\x01 \x01(\x03\x12@\n\x0crollout_info\x18\x03 \x01(\x0b\x32*.google.api.cloudquotas.v1beta.RolloutInfo\"&\n\x0bRolloutInfo\x12\x17\n\x0fongoing_rollout\x18\x01 \x01(\x08*~\n\x10QuotaSafetyCheck\x12\"\n\x1eQUOTA_SAFETY_CHECK_UNSPECIFIED\x10\x00\x12\x1e\n\x1aQUOTA_DECREASE_BELOW_USAGE\x10\x01\x12&\n\"QUOTA_DECREASE_PERCENTAGE_TOO_HIGH\x10\x02\x42\xe5\x01\n!com.google.api.cloudquotas.v1betaB\x0eResourcesProtoP\x01ZEcloud.google.com/go/cloudquotas/apiv1beta/cloudquotaspb;cloudquotaspb\xaa\x02\x1fGoogle.Cloud.CloudQuotas.V1Beta\xca\x02\x1fGoogle\\Cloud\\CloudQuotas\\V1beta\xea\x02\"Google::Cloud::CloudQuotas::V1betab\x06proto3"

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
    ["google.protobuf.Int64Value", "google/protobuf/wrappers.proto"],
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
    module CloudQuotas
      module V1beta
        QuotaInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.cloudquotas.v1beta.QuotaInfo").msgclass
        QuotaInfo::ContainerType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.cloudquotas.v1beta.QuotaInfo.ContainerType").enummodule
        QuotaIncreaseEligibility = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.cloudquotas.v1beta.QuotaIncreaseEligibility").msgclass
        QuotaIncreaseEligibility::IneligibilityReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.cloudquotas.v1beta.QuotaIncreaseEligibility.IneligibilityReason").enummodule
        QuotaPreference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.cloudquotas.v1beta.QuotaPreference").msgclass
        QuotaConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.cloudquotas.v1beta.QuotaConfig").msgclass
        QuotaConfig::Origin = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.cloudquotas.v1beta.QuotaConfig.Origin").enummodule
        DimensionsInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.cloudquotas.v1beta.DimensionsInfo").msgclass
        QuotaDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.cloudquotas.v1beta.QuotaDetails").msgclass
        RolloutInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.cloudquotas.v1beta.RolloutInfo").msgclass
        QuotaSafetyCheck = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.api.cloudquotas.v1beta.QuotaSafetyCheck").enummodule
      end
    end
  end
end
