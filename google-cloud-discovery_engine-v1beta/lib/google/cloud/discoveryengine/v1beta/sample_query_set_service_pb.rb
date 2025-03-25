# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1beta/sample_query_set_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1beta/sample_query_set_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\nBgoogle/cloud/discoveryengine/v1beta/sample_query_set_service.proto\x12#google.cloud.discoveryengine.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a:google/cloud/discoveryengine/v1beta/sample_query_set.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\"_\n\x18GetSampleQuerySetRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-discoveryengine.googleapis.com/SampleQuerySet\"\x84\x01\n\x1aListSampleQuerySetsRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'discoveryengine.googleapis.com/Location\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x86\x01\n\x1bListSampleQuerySetsResponse\x12N\n\x11sample_query_sets\x18\x01 \x03(\x0b\x32\x33.google.cloud.discoveryengine.v1beta.SampleQuerySet\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xd4\x01\n\x1b\x43reateSampleQuerySetRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'discoveryengine.googleapis.com/Location\x12R\n\x10sample_query_set\x18\x02 \x01(\x0b\x32\x33.google.cloud.discoveryengine.v1beta.SampleQuerySetB\x03\xe0\x41\x02\x12 \n\x13sample_query_set_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\"\xa2\x01\n\x1bUpdateSampleQuerySetRequest\x12R\n\x10sample_query_set\x18\x01 \x01(\x0b\x32\x33.google.cloud.discoveryengine.v1beta.SampleQuerySetB\x03\xe0\x41\x02\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"b\n\x1b\x44\x65leteSampleQuerySetRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-discoveryengine.googleapis.com/SampleQuerySet2\x82\n\n\x15SampleQuerySetService\x12\xcf\x01\n\x11GetSampleQuerySet\x12=.google.cloud.discoveryengine.v1beta.GetSampleQuerySetRequest\x1a\x33.google.cloud.discoveryengine.v1beta.SampleQuerySet\"F\xda\x41\x04name\x82\xd3\xe4\x93\x02\x39\x12\x37/v1beta/{name=projects/*/locations/*/sampleQuerySets/*}\x12\xe2\x01\n\x13ListSampleQuerySets\x12?.google.cloud.discoveryengine.v1beta.ListSampleQuerySetsRequest\x1a@.google.cloud.discoveryengine.v1beta.ListSampleQuerySetsResponse\"H\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x39\x12\x37/v1beta/{parent=projects/*/locations/*}/sampleQuerySets\x12\x8e\x02\n\x14\x43reateSampleQuerySet\x12@.google.cloud.discoveryengine.v1beta.CreateSampleQuerySetRequest\x1a\x33.google.cloud.discoveryengine.v1beta.SampleQuerySet\"\x7f\xda\x41+parent,sample_query_set,sample_query_set_id\x82\xd3\xe4\x93\x02K\"7/v1beta/{parent=projects/*/locations/*}/sampleQuerySets:\x10sample_query_set\x12\x91\x02\n\x14UpdateSampleQuerySet\x12@.google.cloud.discoveryengine.v1beta.UpdateSampleQuerySetRequest\x1a\x33.google.cloud.discoveryengine.v1beta.SampleQuerySet\"\x81\x01\xda\x41\x1csample_query_set,update_mask\x82\xd3\xe4\x93\x02\\2H/v1beta/{sample_query_set.name=projects/*/locations/*/sampleQuerySets/*}:\x10sample_query_set\x12\xb8\x01\n\x14\x44\x65leteSampleQuerySet\x12@.google.cloud.discoveryengine.v1beta.DeleteSampleQuerySetRequest\x1a\x16.google.protobuf.Empty\"F\xda\x41\x04name\x82\xd3\xe4\x93\x02\x39*7/v1beta/{name=projects/*/locations/*/sampleQuerySets/*}\x1aR\xca\x41\x1e\x64iscoveryengine.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xa1\x02\n\'com.google.cloud.discoveryengine.v1betaB\x1aSampleQuerySetServiceProtoP\x01ZQcloud.google.com/go/discoveryengine/apiv1beta/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02#Google.Cloud.DiscoveryEngine.V1Beta\xca\x02#Google\\Cloud\\DiscoveryEngine\\V1beta\xea\x02&Google::Cloud::DiscoveryEngine::V1betab\x06proto3"

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
    ["google.cloud.discoveryengine.v1beta.SampleQuerySet", "google/cloud/discoveryengine/v1beta/sample_query_set.proto"],
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
    module DiscoveryEngine
      module V1beta
        GetSampleQuerySetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.GetSampleQuerySetRequest").msgclass
        ListSampleQuerySetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.ListSampleQuerySetsRequest").msgclass
        ListSampleQuerySetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.ListSampleQuerySetsResponse").msgclass
        CreateSampleQuerySetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.CreateSampleQuerySetRequest").msgclass
        UpdateSampleQuerySetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.UpdateSampleQuerySetRequest").msgclass
        DeleteSampleQuerySetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1beta.DeleteSampleQuerySetRequest").msgclass
      end
    end
  end
end
