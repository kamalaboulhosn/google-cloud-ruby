# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/talent/v4beta1/filters.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/cloud/talent/v4beta1/common_pb'
require 'google/protobuf/duration_pb'
require 'google/type/latlng_pb'
require 'google/type/timeofday_pb'


descriptor_data = "\n)google/cloud/talent/v4beta1/filters.proto\x12\x1bgoogle.cloud.talent.v4beta1\x1a\x1fgoogle/api/field_behavior.proto\x1a(google/cloud/talent/v4beta1/common.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x18google/type/latlng.proto\x1a\x1bgoogle/type/timeofday.proto\"\x80\x05\n\x08JobQuery\x12\r\n\x05query\x18\x01 \x01(\t\x12\x1b\n\x13query_language_code\x18\x0e \x01(\t\x12\x11\n\tcompanies\x18\x02 \x03(\t\x12\x45\n\x10location_filters\x18\x03 \x03(\x0b\x32+.google.cloud.talent.v4beta1.LocationFilter\x12@\n\x0ejob_categories\x18\x04 \x03(\x0e\x32(.google.cloud.talent.v4beta1.JobCategory\x12\x42\n\x0e\x63ommute_filter\x18\x05 \x01(\x0b\x32*.google.cloud.talent.v4beta1.CommuteFilter\x12\x1d\n\x15\x63ompany_display_names\x18\x06 \x03(\t\x12L\n\x13\x63ompensation_filter\x18\x07 \x01(\x0b\x32/.google.cloud.talent.v4beta1.CompensationFilter\x12\x1f\n\x17\x63ustom_attribute_filter\x18\x08 \x01(\t\x12\x1b\n\x13\x64isable_spell_check\x18\t \x01(\x08\x12\x45\n\x10\x65mployment_types\x18\n \x03(\x0e\x32+.google.cloud.talent.v4beta1.EmploymentType\x12\x16\n\x0elanguage_codes\x18\x0b \x03(\t\x12G\n\x12publish_time_range\x18\x0c \x01(\x0b\x32+.google.cloud.talent.v4beta1.TimestampRange\x12\x15\n\rexcluded_jobs\x18\r \x03(\t\"\x83\x03\n\x0eLocationFilter\x12\x0f\n\x07\x61\x64\x64ress\x18\x01 \x01(\t\x12\x13\n\x0bregion_code\x18\x02 \x01(\t\x12$\n\x07lat_lng\x18\x03 \x01(\x0b\x32\x13.google.type.LatLng\x12\x19\n\x11\x64istance_in_miles\x18\x04 \x01(\x01\x12\x61\n\x16telecommute_preference\x18\x05 \x01(\x0e\x32\x41.google.cloud.talent.v4beta1.LocationFilter.TelecommutePreference\x12\x0f\n\x07negated\x18\x06 \x01(\x08\"\x95\x01\n\x15TelecommutePreference\x12&\n\"TELECOMMUTE_PREFERENCE_UNSPECIFIED\x10\x00\x12\x1c\n\x14TELECOMMUTE_EXCLUDED\x10\x01\x1a\x02\x08\x01\x12\x17\n\x13TELECOMMUTE_ALLOWED\x10\x02\x12\x1d\n\x19TELECOMMUTE_JOBS_EXCLUDED\x10\x03\"\xca\x03\n\x12\x43ompensationFilter\x12M\n\x04type\x18\x01 \x01(\x0e\x32:.google.cloud.talent.v4beta1.CompensationFilter.FilterTypeB\x03\xe0\x41\x02\x12R\n\x05units\x18\x02 \x03(\x0e\x32>.google.cloud.talent.v4beta1.CompensationInfo.CompensationUnitB\x03\xe0\x41\x02\x12N\n\x05range\x18\x03 \x01(\x0b\x32?.google.cloud.talent.v4beta1.CompensationInfo.CompensationRange\x12\x38\n0include_jobs_with_unspecified_compensation_range\x18\x04 \x01(\x08\"\x86\x01\n\nFilterType\x12\x1b\n\x17\x46ILTER_TYPE_UNSPECIFIED\x10\x00\x12\r\n\tUNIT_ONLY\x10\x01\x12\x13\n\x0fUNIT_AND_AMOUNT\x10\x02\x12\x1a\n\x16\x41NNUALIZED_BASE_AMOUNT\x10\x03\x12\x1b\n\x17\x41NNUALIZED_TOTAL_AMOUNT\x10\x04\"\xcb\x03\n\rCommuteFilter\x12G\n\x0e\x63ommute_method\x18\x01 \x01(\x0e\x32*.google.cloud.talent.v4beta1.CommuteMethodB\x03\xe0\x41\x02\x12\x33\n\x11start_coordinates\x18\x02 \x01(\x0b\x32\x13.google.type.LatLngB\x03\xe0\x41\x02\x12\x37\n\x0ftravel_duration\x18\x03 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x02\x12!\n\x19\x61llow_imprecise_addresses\x18\x04 \x01(\x08\x12N\n\x0croad_traffic\x18\x05 \x01(\x0e\x32\x36.google.cloud.talent.v4beta1.CommuteFilter.RoadTrafficH\x00\x12\x30\n\x0e\x64\x65parture_time\x18\x06 \x01(\x0b\x32\x16.google.type.TimeOfDayH\x00\"L\n\x0bRoadTraffic\x12\x1c\n\x18ROAD_TRAFFIC_UNSPECIFIED\x10\x00\x12\x10\n\x0cTRAFFIC_FREE\x10\x01\x12\r\n\tBUSY_HOUR\x10\x02\x42\x10\n\x0etraffic_optionBp\n\x1f\x63om.google.cloud.talent.v4beta1B\x0c\x46iltersProtoP\x01Z7cloud.google.com/go/talent/apiv4beta1/talentpb;talentpb\xa2\x02\x03\x43TSb\x06proto3"

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
    ["google.cloud.talent.v4beta1.TimestampRange", "google/cloud/talent/v4beta1/common.proto"],
    ["google.type.LatLng", "google/type/latlng.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.type.TimeOfDay", "google/type/timeofday.proto"],
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
    module Talent
      module V4beta1
        JobQuery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.JobQuery").msgclass
        LocationFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.LocationFilter").msgclass
        LocationFilter::TelecommutePreference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.LocationFilter.TelecommutePreference").enummodule
        CompensationFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompensationFilter").msgclass
        CompensationFilter::FilterType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CompensationFilter.FilterType").enummodule
        CommuteFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CommuteFilter").msgclass
        CommuteFilter::RoadTraffic = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.talent.v4beta1.CommuteFilter.RoadTraffic").enummodule
      end
    end
  end
end
