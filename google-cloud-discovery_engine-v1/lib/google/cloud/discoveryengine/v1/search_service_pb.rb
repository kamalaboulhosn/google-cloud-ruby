# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1/search_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1/chunk_pb'
require 'google/cloud/discoveryengine/v1/common_pb'
require 'google/cloud/discoveryengine/v1/document_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n4google/cloud/discoveryengine/v1/search_service.proto\x12\x1fgoogle.cloud.discoveryengine.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a+google/cloud/discoveryengine/v1/chunk.proto\x1a,google/cloud/discoveryengine/v1/common.proto\x1a.google/cloud/discoveryengine/v1/document.proto\x1a\x1cgoogle/protobuf/struct.proto\"\xf9\"\n\rSearchRequest\x12L\n\x0eserving_config\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,discoveryengine.googleapis.com/ServingConfig\x12:\n\x06\x62ranch\x18\x02 \x01(\tB*\xfa\x41\'\n%discoveryengine.googleapis.com/Branch\x12\r\n\x05query\x18\x03 \x01(\t\x12N\n\x0bimage_query\x18\x13 \x01(\x0b\x32\x39.google.cloud.discoveryengine.v1.SearchRequest.ImageQuery\x12\x11\n\tpage_size\x18\x04 \x01(\x05\x12\x12\n\npage_token\x18\x05 \x01(\t\x12\x0e\n\x06offset\x18\x06 \x01(\x05\x12V\n\x10\x64\x61ta_store_specs\x18  \x03(\x0b\x32<.google.cloud.discoveryengine.v1.SearchRequest.DataStoreSpec\x12\x0e\n\x06\x66ilter\x18\x07 \x01(\t\x12\x18\n\x10\x63\x61nonical_filter\x18\x1d \x01(\t\x12\x10\n\x08order_by\x18\x08 \x01(\t\x12<\n\tuser_info\x18\x15 \x01(\x0b\x32).google.cloud.discoveryengine.v1.UserInfo\x12\x15\n\rlanguage_code\x18# \x01(\t\x12M\n\x0b\x66\x61\x63\x65t_specs\x18\t \x03(\x0b\x32\x38.google.cloud.discoveryengine.v1.SearchRequest.FacetSpec\x12L\n\nboost_spec\x18\n \x01(\x0b\x32\x38.google.cloud.discoveryengine.v1.SearchRequest.BoostSpec\x12J\n\x06params\x18\x0b \x03(\x0b\x32:.google.cloud.discoveryengine.v1.SearchRequest.ParamsEntry\x12_\n\x14query_expansion_spec\x18\r \x01(\x0b\x32\x41.google.cloud.discoveryengine.v1.SearchRequest.QueryExpansionSpec\x12\x61\n\x15spell_correction_spec\x18\x0e \x01(\x0b\x32\x42.google.cloud.discoveryengine.v1.SearchRequest.SpellCorrectionSpec\x12\x16\n\x0euser_pseudo_id\x18\x0f \x01(\t\x12]\n\x13\x63ontent_search_spec\x18\x18 \x01(\x0b\x32@.google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec\x12\x13\n\x0bsafe_search\x18\x14 \x01(\x08\x12S\n\x0buser_labels\x18\x16 \x03(\x0b\x32>.google.cloud.discoveryengine.v1.SearchRequest.UserLabelsEntry\x12\x63\n\x17search_as_you_type_spec\x18\x1f \x01(\x0b\x32\x42.google.cloud.discoveryengine.v1.SearchRequest.SearchAsYouTypeSpec\x12<\n\x07session\x18) \x01(\tB+\xfa\x41(\n&discoveryengine.googleapis.com/Session\x12P\n\x0csession_spec\x18* \x01(\x0b\x32:.google.cloud.discoveryengine.v1.SearchRequest.SessionSpec\x1a,\n\nImageQuery\x12\x15\n\x0bimage_bytes\x18\x01 \x01(\tH\x00\x42\x07\n\x05image\x1aU\n\rDataStoreSpec\x12\x44\n\ndata_store\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x1a\xfc\x02\n\tFacetSpec\x12Y\n\tfacet_key\x18\x01 \x01(\x0b\x32\x41.google.cloud.discoveryengine.v1.SearchRequest.FacetSpec.FacetKeyB\x03\xe0\x41\x02\x12\r\n\x05limit\x18\x02 \x01(\x05\x12\x1c\n\x14\x65xcluded_filter_keys\x18\x03 \x03(\t\x12\x1f\n\x17\x65nable_dynamic_position\x18\x04 \x01(\x08\x1a\xc5\x01\n\x08\x46\x61\x63\x65tKey\x12\x10\n\x03key\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12<\n\tintervals\x18\x02 \x03(\x0b\x32).google.cloud.discoveryengine.v1.Interval\x12\x19\n\x11restricted_values\x18\x03 \x03(\t\x12\x10\n\x08prefixes\x18\x04 \x03(\t\x12\x10\n\x08\x63ontains\x18\x05 \x03(\t\x12\x18\n\x10\x63\x61se_insensitive\x18\x06 \x01(\x08\x12\x10\n\x08order_by\x18\x07 \x01(\t\x1a\xaf\x01\n\tBoostSpec\x12j\n\x15\x63ondition_boost_specs\x18\x01 \x03(\x0b\x32K.google.cloud.discoveryengine.v1.SearchRequest.BoostSpec.ConditionBoostSpec\x1a\x36\n\x12\x43onditionBoostSpec\x12\x11\n\tcondition\x18\x01 \x01(\t\x12\r\n\x05\x62oost\x18\x02 \x01(\x02\x1a\xd4\x01\n\x12QueryExpansionSpec\x12^\n\tcondition\x18\x01 \x01(\x0e\x32K.google.cloud.discoveryengine.v1.SearchRequest.QueryExpansionSpec.Condition\x12\x1e\n\x16pin_unexpanded_results\x18\x02 \x01(\x08\">\n\tCondition\x12\x19\n\x15\x43ONDITION_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44ISABLED\x10\x01\x12\x08\n\x04\x41UTO\x10\x02\x1a\xa9\x01\n\x13SpellCorrectionSpec\x12U\n\x04mode\x18\x01 \x01(\x0e\x32G.google.cloud.discoveryengine.v1.SearchRequest.SpellCorrectionSpec.Mode\";\n\x04Mode\x12\x14\n\x10MODE_UNSPECIFIED\x10\x00\x12\x13\n\x0fSUGGESTION_ONLY\x10\x01\x12\x08\n\x04\x41UTO\x10\x02\x1a\xf9\x0b\n\x11\x43ontentSearchSpec\x12\x62\n\x0csnippet_spec\x18\x01 \x01(\x0b\x32L.google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.SnippetSpec\x12\x62\n\x0csummary_spec\x18\x02 \x01(\x0b\x32L.google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.SummarySpec\x12w\n\x17\x65xtractive_content_spec\x18\x03 \x01(\x0b\x32V.google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.ExtractiveContentSpec\x12m\n\x12search_result_mode\x18\x04 \x01(\x0e\x32Q.google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.SearchResultMode\x12^\n\nchunk_spec\x18\x05 \x01(\x0b\x32J.google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.ChunkSpec\x1a`\n\x0bSnippetSpec\x12\x1d\n\x11max_snippet_count\x18\x01 \x01(\x05\x42\x02\x18\x01\x12\x1a\n\x0ereference_only\x18\x02 \x01(\x08\x42\x02\x18\x01\x12\x16\n\x0ereturn_snippet\x18\x03 \x01(\x08\x1a\x93\x04\n\x0bSummarySpec\x12\x1c\n\x14summary_result_count\x18\x01 \x01(\x05\x12\x19\n\x11include_citations\x18\x02 \x01(\x08\x12 \n\x18ignore_adversarial_query\x18\x03 \x01(\x08\x12(\n ignore_non_summary_seeking_query\x18\x04 \x01(\x08\x12#\n\x1bignore_low_relevant_content\x18\t \x01(\x08\x12w\n\x11model_prompt_spec\x18\x05 \x01(\x0b\x32\\.google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.SummarySpec.ModelPromptSpec\x12\x15\n\rlanguage_code\x18\x06 \x01(\t\x12j\n\nmodel_spec\x18\x07 \x01(\x0b\x32V.google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.SummarySpec.ModelSpec\x12\x1b\n\x13use_semantic_chunks\x18\x08 \x01(\x08\x1a#\n\x0fModelPromptSpec\x12\x10\n\x08preamble\x18\x01 \x01(\t\x1a\x1c\n\tModelSpec\x12\x0f\n\x07version\x18\x01 \x01(\t\x1a\xc5\x01\n\x15\x45xtractiveContentSpec\x12#\n\x1bmax_extractive_answer_count\x18\x01 \x01(\x05\x12$\n\x1cmax_extractive_segment_count\x18\x02 \x01(\x05\x12\'\n\x1freturn_extractive_segment_score\x18\x03 \x01(\x08\x12\x1d\n\x15num_previous_segments\x18\x04 \x01(\x05\x12\x19\n\x11num_next_segments\x18\x05 \x01(\x05\x1a\x41\n\tChunkSpec\x12\x1b\n\x13num_previous_chunks\x18\x01 \x01(\x05\x12\x17\n\x0fnum_next_chunks\x18\x02 \x01(\x05\"Q\n\x10SearchResultMode\x12\"\n\x1eSEARCH_RESULT_MODE_UNSPECIFIED\x10\x00\x12\r\n\tDOCUMENTS\x10\x01\x12\n\n\x06\x43HUNKS\x10\x02\x1a\xb9\x01\n\x13SearchAsYouTypeSpec\x12_\n\tcondition\x18\x01 \x01(\x0e\x32L.google.cloud.discoveryengine.v1.SearchRequest.SearchAsYouTypeSpec.Condition\"A\n\tCondition\x12\x19\n\x15\x43ONDITION_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x44ISABLED\x10\x01\x12\x0b\n\x07\x45NABLED\x10\x02\x1aq\n\x0bSessionSpec\x12\x10\n\x08query_id\x18\x01 \x01(\t\x12,\n\x1fsearch_result_persistence_count\x18\x02 \x01(\x05H\x00\x88\x01\x01\x42\"\n _search_result_persistence_count\x1a\x45\n\x0bParamsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12%\n\x05value\x18\x02 \x01(\x0b\x32\x16.google.protobuf.Value:\x02\x38\x01\x1a\x31\n\x0fUserLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x8f\x14\n\x0eSearchResponse\x12M\n\x07results\x18\x01 \x03(\x0b\x32<.google.cloud.discoveryengine.v1.SearchResponse.SearchResult\x12\x45\n\x06\x66\x61\x63\x65ts\x18\x02 \x03(\x0b\x32\x35.google.cloud.discoveryengine.v1.SearchResponse.Facet\x12\x12\n\ntotal_size\x18\x03 \x01(\x05\x12\x19\n\x11\x61ttribution_token\x18\x04 \x01(\t\x12\x14\n\x0credirect_uri\x18\x0c \x01(\t\x12\x17\n\x0fnext_page_token\x18\x05 \x01(\t\x12\x17\n\x0f\x63orrected_query\x18\x07 \x01(\t\x12H\n\x07summary\x18\t \x01(\x0b\x32\x37.google.cloud.discoveryengine.v1.SearchResponse.Summary\x12`\n\x14query_expansion_info\x18\x0e \x01(\x0b\x32\x42.google.cloud.discoveryengine.v1.SearchResponse.QueryExpansionInfo\x12Q\n\x0csession_info\x18\x13 \x01(\x0b\x32;.google.cloud.discoveryengine.v1.SearchResponse.SessionInfo\x1a\x8e\x01\n\x0cSearchResult\x12\n\n\x02id\x18\x01 \x01(\t\x12;\n\x08\x64ocument\x18\x02 \x01(\x0b\x32).google.cloud.discoveryengine.v1.Document\x12\x35\n\x05\x63hunk\x18\x12 \x01(\x0b\x32&.google.cloud.discoveryengine.v1.Chunk\x1a\xf9\x01\n\x05\x46\x61\x63\x65t\x12\x0b\n\x03key\x18\x01 \x01(\t\x12P\n\x06values\x18\x02 \x03(\x0b\x32@.google.cloud.discoveryengine.v1.SearchResponse.Facet.FacetValue\x12\x15\n\rdynamic_facet\x18\x03 \x01(\x08\x1az\n\nFacetValue\x12\x0f\n\x05value\x18\x01 \x01(\tH\x00\x12=\n\x08interval\x18\x02 \x01(\x0b\x32).google.cloud.discoveryengine.v1.IntervalH\x00\x12\r\n\x05\x63ount\x18\x03 \x01(\x03\x42\r\n\x0b\x66\x61\x63\x65t_value\x1a\xe9\x0b\n\x07Summary\x12\x14\n\x0csummary_text\x18\x01 \x01(\t\x12m\n\x17summary_skipped_reasons\x18\x02 \x03(\x0e\x32L.google.cloud.discoveryengine.v1.SearchResponse.Summary.SummarySkippedReason\x12\x63\n\x11safety_attributes\x18\x03 \x01(\x0b\x32H.google.cloud.discoveryengine.v1.SearchResponse.Summary.SafetyAttributes\x12j\n\x15summary_with_metadata\x18\x04 \x01(\x0b\x32K.google.cloud.discoveryengine.v1.SearchResponse.Summary.SummaryWithMetadata\x1a\x36\n\x10SafetyAttributes\x12\x12\n\ncategories\x18\x01 \x03(\t\x12\x0e\n\x06scores\x18\x02 \x03(\x02\x1ag\n\x10\x43itationMetadata\x12S\n\tcitations\x18\x01 \x03(\x0b\x32@.google.cloud.discoveryengine.v1.SearchResponse.Summary.Citation\x1a\x8b\x01\n\x08\x43itation\x12\x13\n\x0bstart_index\x18\x01 \x01(\x03\x12\x11\n\tend_index\x18\x02 \x01(\x03\x12W\n\x07sources\x18\x03 \x03(\x0b\x32\x46.google.cloud.discoveryengine.v1.SearchResponse.Summary.CitationSource\x1a)\n\x0e\x43itationSource\x12\x17\n\x0freference_index\x18\x04 \x01(\x03\x1a\x8c\x02\n\tReference\x12\r\n\x05title\x18\x01 \x01(\t\x12\x41\n\x08\x64ocument\x18\x02 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'discoveryengine.googleapis.com/Document\x12\x0b\n\x03uri\x18\x03 \x01(\t\x12\x66\n\x0e\x63hunk_contents\x18\x04 \x03(\x0b\x32N.google.cloud.discoveryengine.v1.SearchResponse.Summary.Reference.ChunkContent\x1a\x38\n\x0c\x43hunkContent\x12\x0f\n\x07\x63ontent\x18\x01 \x01(\t\x12\x17\n\x0fpage_identifier\x18\x02 \x01(\t\x1a\xe2\x01\n\x13SummaryWithMetadata\x12\x0f\n\x07summary\x18\x01 \x01(\t\x12\x63\n\x11\x63itation_metadata\x18\x02 \x01(\x0b\x32H.google.cloud.discoveryengine.v1.SearchResponse.Summary.CitationMetadata\x12U\n\nreferences\x18\x03 \x03(\x0b\x32\x41.google.cloud.discoveryengine.v1.SearchResponse.Summary.Reference\"\xb9\x02\n\x14SummarySkippedReason\x12&\n\"SUMMARY_SKIPPED_REASON_UNSPECIFIED\x10\x00\x12\x1d\n\x19\x41\x44VERSARIAL_QUERY_IGNORED\x10\x01\x12%\n!NON_SUMMARY_SEEKING_QUERY_IGNORED\x10\x02\x12\x1f\n\x1bOUT_OF_DOMAIN_QUERY_IGNORED\x10\x03\x12\x1e\n\x1aPOTENTIAL_POLICY_VIOLATION\x10\x04\x12\x19\n\x15LLM_ADDON_NOT_ENABLED\x10\x05\x12\x17\n\x13NO_RELEVANT_CONTENT\x10\x06\x12\x1f\n\x1bJAIL_BREAKING_QUERY_IGNORED\x10\x07\x12\x1d\n\x19\x43USTOMER_POLICY_VIOLATION\x10\x08\x1aI\n\x12QueryExpansionInfo\x12\x16\n\x0e\x65xpanded_query\x18\x01 \x01(\x08\x12\x1b\n\x13pinned_result_count\x18\x02 \x01(\x03\x1a-\n\x0bSessionInfo\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x10\n\x08query_id\x18\x02 \x01(\t2\xf5\x03\n\rSearchService\x12\x8f\x03\n\x06Search\x12..google.cloud.discoveryengine.v1.SearchRequest\x1a/.google.cloud.discoveryengine.v1.SearchResponse\"\xa3\x02\x82\xd3\xe4\x93\x02\x9c\x02\"P/v1/{serving_config=projects/*/locations/*/dataStores/*/servingConfigs/*}:search:\x01*Zc\"^/v1/{serving_config=projects/*/locations/*/collections/*/dataStores/*/servingConfigs/*}:search:\x01*Z`\"[/v1/{serving_config=projects/*/locations/*/collections/*/engines/*/servingConfigs/*}:search:\x01*\x1aR\xca\x41\x1e\x64iscoveryengine.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x85\x02\n#com.google.cloud.discoveryengine.v1B\x12SearchServiceProtoP\x01ZMcloud.google.com/go/discoveryengine/apiv1/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02\x1fGoogle.Cloud.DiscoveryEngine.V1\xca\x02\x1fGoogle\\Cloud\\DiscoveryEngine\\V1\xea\x02\"Google::Cloud::DiscoveryEngine::V1b\x06proto3"

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
    ["google.cloud.discoveryengine.v1.UserInfo", "google/cloud/discoveryengine/v1/common.proto"],
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.cloud.discoveryengine.v1.Document", "google/cloud/discoveryengine/v1/document.proto"],
    ["google.cloud.discoveryengine.v1.Chunk", "google/cloud/discoveryengine/v1/chunk.proto"],
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
      module V1
        SearchRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest").msgclass
        SearchRequest::ImageQuery = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.ImageQuery").msgclass
        SearchRequest::DataStoreSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.DataStoreSpec").msgclass
        SearchRequest::FacetSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.FacetSpec").msgclass
        SearchRequest::FacetSpec::FacetKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.FacetSpec.FacetKey").msgclass
        SearchRequest::BoostSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.BoostSpec").msgclass
        SearchRequest::BoostSpec::ConditionBoostSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.BoostSpec.ConditionBoostSpec").msgclass
        SearchRequest::QueryExpansionSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.QueryExpansionSpec").msgclass
        SearchRequest::QueryExpansionSpec::Condition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.QueryExpansionSpec.Condition").enummodule
        SearchRequest::SpellCorrectionSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.SpellCorrectionSpec").msgclass
        SearchRequest::SpellCorrectionSpec::Mode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.SpellCorrectionSpec.Mode").enummodule
        SearchRequest::ContentSearchSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec").msgclass
        SearchRequest::ContentSearchSpec::SnippetSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.SnippetSpec").msgclass
        SearchRequest::ContentSearchSpec::SummarySpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.SummarySpec").msgclass
        SearchRequest::ContentSearchSpec::SummarySpec::ModelPromptSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.SummarySpec.ModelPromptSpec").msgclass
        SearchRequest::ContentSearchSpec::SummarySpec::ModelSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.SummarySpec.ModelSpec").msgclass
        SearchRequest::ContentSearchSpec::ExtractiveContentSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.ExtractiveContentSpec").msgclass
        SearchRequest::ContentSearchSpec::ChunkSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.ChunkSpec").msgclass
        SearchRequest::ContentSearchSpec::SearchResultMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.ContentSearchSpec.SearchResultMode").enummodule
        SearchRequest::SearchAsYouTypeSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.SearchAsYouTypeSpec").msgclass
        SearchRequest::SearchAsYouTypeSpec::Condition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.SearchAsYouTypeSpec.Condition").enummodule
        SearchRequest::SessionSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchRequest.SessionSpec").msgclass
        SearchResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse").msgclass
        SearchResponse::SearchResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.SearchResult").msgclass
        SearchResponse::Facet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.Facet").msgclass
        SearchResponse::Facet::FacetValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.Facet.FacetValue").msgclass
        SearchResponse::Summary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.Summary").msgclass
        SearchResponse::Summary::SafetyAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.Summary.SafetyAttributes").msgclass
        SearchResponse::Summary::CitationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.Summary.CitationMetadata").msgclass
        SearchResponse::Summary::Citation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.Summary.Citation").msgclass
        SearchResponse::Summary::CitationSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.Summary.CitationSource").msgclass
        SearchResponse::Summary::Reference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.Summary.Reference").msgclass
        SearchResponse::Summary::Reference::ChunkContent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.Summary.Reference.ChunkContent").msgclass
        SearchResponse::Summary::SummaryWithMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.Summary.SummaryWithMetadata").msgclass
        SearchResponse::Summary::SummarySkippedReason = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.Summary.SummarySkippedReason").enummodule
        SearchResponse::QueryExpansionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.QueryExpansionInfo").msgclass
        SearchResponse::SessionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.SearchResponse.SessionInfo").msgclass
      end
    end
  end
end
