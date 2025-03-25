# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/ads/admanager/v1/company_messages.proto

require 'google/protobuf'

require 'google/ads/admanager/v1/applied_label_pb'
require 'google/ads/admanager/v1/company_credit_status_enum_pb'
require 'google/ads/admanager/v1/company_type_enum_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n.google/ads/admanager/v1/company_messages.proto\x12\x17google.ads.admanager.v1\x1a+google/ads/admanager/v1/applied_label.proto\x1a\x38google/ads/admanager/v1/company_credit_status_enum.proto\x1a/google/ads/admanager/v1/company_type_enum.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x9c\x06\n\x07\x43ompany\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x17\n\ncompany_id\x18\x02 \x01(\x03\x42\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12G\n\x04type\x18\x04 \x01(\x0e\x32\x34.google.ads.admanager.v1.CompanyTypeEnum.CompanyTypeB\x03\xe0\x41\x02\x12\x14\n\x07\x61\x64\x64ress\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05\x65mail\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12\x10\n\x03\x66\x61x\x18\x07 \x01(\tB\x03\xe0\x41\x01\x12\x12\n\x05phone\x18\x08 \x01(\tB\x03\xe0\x41\x01\x12\x18\n\x0b\x65xternal_id\x18\t \x01(\tB\x03\xe0\x41\x01\x12\x14\n\x07\x63omment\x18\n \x01(\tB\x03\xe0\x41\x01\x12`\n\rcredit_status\x18\x0b \x01(\x0e\x32\x44.google.ads.admanager.v1.CompanyCreditStatusEnum.CompanyCreditStatusB\x03\xe0\x41\x01\x12\x42\n\x0e\x61pplied_labels\x18\x0c \x03(\x0b\x32%.google.ads.admanager.v1.AppliedLabelB\x03\xe0\x41\x01\x12\x46\n\x0fprimary_contact\x18\r \x01(\tB(\xe0\x41\x01\xfa\x41\"\n admanager.googleapis.com/ContactH\x00\x88\x01\x01\x12<\n\rapplied_teams\x18\x0e \x03(\tB%\xe0\x41\x01\xfa\x41\x1f\n\x1d\x61\x64manager.googleapis.com/Team\x12\x34\n\x0bupdate_time\x18\x0f \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12#\n\x16third_party_company_id\x18\x10 \x01(\x03\x42\x03\xe0\x41\x01:f\xea\x41\x63\n admanager.googleapis.com/Company\x12+networks/{network_code}/companies/{company}*\tcompanies2\x07\x63ompanyB\x12\n\x10_primary_contactB\xc8\x01\n\x1b\x63om.google.ads.admanager.v1B\x14\x43ompanyMessagesProtoP\x01Z@google.golang.org/genproto/googleapis/ads/admanager/v1;admanager\xaa\x02\x17Google.Ads.AdManager.V1\xca\x02\x17Google\\Ads\\AdManager\\V1\xea\x02\x1aGoogle::Ads::AdManager::V1b\x06proto3"

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
    ["google.ads.admanager.v1.AppliedLabel", "google/ads/admanager/v1/applied_label.proto"],
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
  module Ads
    module AdManager
      module V1
        Company = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.ads.admanager.v1.Company").msgclass
      end
    end
  end
end
