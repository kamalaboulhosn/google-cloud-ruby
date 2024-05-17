# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/websecurityscanner/v1/scan_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n4google/cloud/websecurityscanner/v1/scan_config.proto\x12\"google.cloud.websecurityscanner.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xc4\r\n\nScanConfig\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x0f\n\x07max_qps\x18\x03 \x01(\x05\x12\x15\n\rstarting_urls\x18\x04 \x03(\t\x12U\n\x0e\x61uthentication\x18\x05 \x01(\x0b\x32=.google.cloud.websecurityscanner.v1.ScanConfig.Authentication\x12L\n\nuser_agent\x18\x06 \x01(\x0e\x32\x38.google.cloud.websecurityscanner.v1.ScanConfig.UserAgent\x12\x1a\n\x12\x62lacklist_patterns\x18\x07 \x03(\t\x12I\n\x08schedule\x18\x08 \x01(\x0b\x32\x37.google.cloud.websecurityscanner.v1.ScanConfig.Schedule\x12w\n!export_to_security_command_center\x18\n \x01(\x0e\x32L.google.cloud.websecurityscanner.v1.ScanConfig.ExportToSecurityCommandCenter\x12L\n\nrisk_level\x18\x0c \x01(\x0e\x32\x38.google.cloud.websecurityscanner.v1.ScanConfig.RiskLevel\x12\x14\n\x0cmanaged_scan\x18\r \x01(\x08\x12\x16\n\x0estatic_ip_scan\x18\x0e \x01(\x08\x12!\n\x19ignore_http_status_errors\x18\x0f \x01(\x08\x1a\xd7\x05\n\x0e\x41uthentication\x12i\n\x0egoogle_account\x18\x01 \x01(\x0b\x32K.google.cloud.websecurityscanner.v1.ScanConfig.Authentication.GoogleAccountB\x02\x18\x01H\x00\x12\x65\n\x0e\x63ustom_account\x18\x02 \x01(\x0b\x32K.google.cloud.websecurityscanner.v1.ScanConfig.Authentication.CustomAccountH\x00\x12\x65\n\x0eiap_credential\x18\x04 \x01(\x0b\x32K.google.cloud.websecurityscanner.v1.ScanConfig.Authentication.IapCredentialH\x00\x1a\x37\n\rGoogleAccount\x12\x10\n\x08username\x18\x01 \x01(\t\x12\x10\n\x08password\x18\x02 \x01(\t:\x02\x18\x01\x1a\x46\n\rCustomAccount\x12\x10\n\x08username\x18\x01 \x01(\t\x12\x10\n\x08password\x18\x02 \x01(\t\x12\x11\n\tlogin_url\x18\x03 \x01(\t\x1a\xf8\x01\n\rIapCredential\x12\x8e\x01\n\x1diap_test_service_account_info\x18\x01 \x01(\x0b\x32\x65.google.cloud.websecurityscanner.v1.ScanConfig.Authentication.IapCredential.IapTestServiceAccountInfoH\x00\x1a\x43\n\x19IapTestServiceAccountInfo\x12&\n\x19target_audience_client_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x42\x11\n\x0fiap_credentialsB\x10\n\x0e\x61uthentication\x1a]\n\x08Schedule\x12\x31\n\rschedule_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x1e\n\x16interval_duration_days\x18\x02 \x01(\x05\"`\n\tUserAgent\x12\x1a\n\x16USER_AGENT_UNSPECIFIED\x10\x00\x12\x10\n\x0c\x43HROME_LINUX\x10\x01\x12\x12\n\x0e\x43HROME_ANDROID\x10\x02\x12\x11\n\rSAFARI_IPHONE\x10\x03\"<\n\tRiskLevel\x12\x1a\n\x16RISK_LEVEL_UNSPECIFIED\x10\x00\x12\n\n\x06NORMAL\x10\x01\x12\x07\n\x03LOW\x10\x02\"m\n\x1d\x45xportToSecurityCommandCenter\x12\x31\n-EXPORT_TO_SECURITY_COMMAND_CENTER_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x45NABLED\x10\x01\x12\x0c\n\x08\x44ISABLED\x10\x02\x42\x85\x02\n&com.google.cloud.websecurityscanner.v1B\x0fScanConfigProtoP\x01ZVcloud.google.com/go/websecurityscanner/apiv1/websecurityscannerpb;websecurityscannerpb\xaa\x02\"Google.Cloud.WebSecurityScanner.V1\xca\x02\"Google\\Cloud\\WebSecurityScanner\\V1\xea\x02%Google::Cloud::WebSecurityScanner::V1b\x06proto3"

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
    module WebSecurityScanner
      module V1
        ScanConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig").msgclass
        ScanConfig::Authentication = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.Authentication").msgclass
        ScanConfig::Authentication::GoogleAccount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.Authentication.GoogleAccount").msgclass
        ScanConfig::Authentication::CustomAccount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.Authentication.CustomAccount").msgclass
        ScanConfig::Authentication::IapCredential = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.Authentication.IapCredential").msgclass
        ScanConfig::Authentication::IapCredential::IapTestServiceAccountInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.Authentication.IapCredential.IapTestServiceAccountInfo").msgclass
        ScanConfig::Schedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.Schedule").msgclass
        ScanConfig::UserAgent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.UserAgent").enummodule
        ScanConfig::RiskLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.RiskLevel").enummodule
        ScanConfig::ExportToSecurityCommandCenter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.websecurityscanner.v1.ScanConfig.ExportToSecurityCommandCenter").enummodule
      end
    end
  end
end
