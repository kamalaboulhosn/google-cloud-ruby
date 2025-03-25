# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/serving_config.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/retail/v2/common_pb'
require 'google/cloud/retail/v2/search_service_pb'


descriptor_data = "\n+google/cloud/retail/v2/serving_config.proto\x12\x16google.cloud.retail.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/retail/v2/common.proto\x1a+google/cloud/retail/v2/search_service.proto\"\x96\x08\n\rServingConfig\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x10\n\x08model_id\x18\x03 \x01(\t\x12\x1d\n\x15price_reranking_level\x18\x04 \x01(\t\x12\x19\n\x11\x66\x61\x63\x65t_control_ids\x18\x05 \x03(\t\x12R\n\x12\x64ynamic_facet_spec\x18\x06 \x01(\x0b\x32\x36.google.cloud.retail.v2.SearchRequest.DynamicFacetSpec\x12\x19\n\x11\x62oost_control_ids\x18\x07 \x03(\t\x12\x1a\n\x12\x66ilter_control_ids\x18\t \x03(\t\x12\x1c\n\x14redirect_control_ids\x18\n \x03(\t\x12#\n\x1btwoway_synonyms_control_ids\x18\x12 \x03(\t\x12#\n\x1boneway_synonyms_control_ids\x18\x0c \x03(\t\x12$\n\x1c\x64o_not_associate_control_ids\x18\r \x03(\t\x12\x1f\n\x17replacement_control_ids\x18\x0e \x03(\t\x12\x1a\n\x12ignore_control_ids\x18\x0f \x03(\t\x12\x17\n\x0f\x64iversity_level\x18\x08 \x01(\t\x12K\n\x0e\x64iversity_type\x18\x14 \x01(\x0e\x32\x33.google.cloud.retail.v2.ServingConfig.DiversityType\x12$\n\x1c\x65nable_category_filter_level\x18\x10 \x01(\t\x12\x1c\n\x14ignore_recs_denylist\x18\x18 \x01(\x08\x12W\n\x14personalization_spec\x18\x15 \x01(\x0b\x32\x39.google.cloud.retail.v2.SearchRequest.PersonalizationSpec\x12\x44\n\x0esolution_types\x18\x13 \x03(\x0e\x32$.google.cloud.retail.v2.SolutionTypeB\x06\xe0\x41\x02\xe0\x41\x05\"d\n\rDiversityType\x12\x1e\n\x1a\x44IVERSITY_TYPE_UNSPECIFIED\x10\x00\x12\x18\n\x14RULE_BASED_DIVERSITY\x10\x02\x12\x19\n\x15\x44\x41TA_DRIVEN_DIVERSITY\x10\x03:\x85\x01\xea\x41\x81\x01\n#retail.googleapis.com/ServingConfig\x12Zprojects/{project}/locations/{location}/catalogs/{catalog}/servingConfigs/{serving_config}B\xbd\x01\n\x1a\x63om.google.cloud.retail.v2B\x12ServingConfigProtoP\x01Z2cloud.google.com/go/retail/apiv2/retailpb;retailpb\xa2\x02\x06RETAIL\xaa\x02\x16Google.Cloud.Retail.V2\xca\x02\x16Google\\Cloud\\Retail\\V2\xea\x02\x19Google::Cloud::Retail::V2b\x06proto3"

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
    ["google.cloud.retail.v2.SearchRequest.DynamicFacetSpec", "google/cloud/retail/v2/search_service.proto"],
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
    module Retail
      module V2
        ServingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.ServingConfig").msgclass
        ServingConfig::DiversityType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.ServingConfig.DiversityType").enummodule
      end
    end
  end
end
