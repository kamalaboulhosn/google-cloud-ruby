# frozen_string_literal: true

# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module DiscoveryEngine
      module V1
        # Base structured datatype containing multi-part content of a message.
        # @!attribute [rw] role
        #   @return [::String]
        #     Producer of the content. Must be either `user` or `model`.
        #
        #     Intended to be used for multi-turn conversations. Otherwise, it can be left
        #     unset.
        # @!attribute [rw] parts
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationContent::Part>]
        #     Ordered `Parts` that constitute a single message.
        class GroundedGenerationContent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Single part of content.
          # @!attribute [rw] text
          #   @return [::String]
          #     Inline text.
          class Part
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Top-level message sent by the client for the `GenerateGroundedContent`
        # method.
        # @!attribute [rw] location
        #   @return [::String]
        #     Required. Location resource.
        #
        #     Format: `projects/{project}/locations/{location}`.
        # @!attribute [rw] system_instruction
        #   @return [::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationContent]
        #     Content of the system instruction for the current API.
        #
        #     These instructions will take priority over any other prompt instructions
        #     if the selected model is supporting them.
        # @!attribute [rw] contents
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationContent>]
        #     Content of the current conversation with the model.
        #
        #     For single-turn queries, this is a single instance. For multi-turn queries,
        #     this is a repeated field that contains conversation history + latest
        #     request.
        #
        #     Only a single-turn query is supported currently.
        # @!attribute [rw] generation_spec
        #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentRequest::GenerationSpec]
        #     Content generation specification.
        # @!attribute [rw] grounding_spec
        #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentRequest::GroundingSpec]
        #     Grounding specification.
        # @!attribute [rw] user_labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The user labels applied to a resource must meet the following requirements:
        #
        #     * Each resource can have multiple labels, up to a maximum of 64.
        #     * Each label must be a key-value pair.
        #     * Keys have a minimum length of 1 character and a maximum length of 63
        #       characters and cannot be empty. Values can be empty and have a maximum
        #       length of 63 characters.
        #     * Keys and values can contain only lowercase letters, numeric characters,
        #       underscores, and dashes. All characters must use UTF-8 encoding, and
        #       international characters are allowed.
        #     * The key portion of a label must be unique. However, you can use the same
        #       key with multiple resources.
        #     * Keys must start with a lowercase letter or international character.
        #
        #     See [Google Cloud
        #     Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
        #     for more details.
        class GenerateGroundedContentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Content generation specification.
          # @!attribute [rw] model_id
          #   @return [::String]
          #     Specifies which Vertex model id to use for generation.
          # @!attribute [rw] language_code
          #   @return [::String]
          #     Language code for content. Use language tags defined by
          #     [BCP47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt).
          # @!attribute [rw] temperature
          #   @return [::Float]
          #     If specified, custom value for the temperature will be used.
          # @!attribute [rw] top_p
          #   @return [::Float]
          #     If specified, custom value for nucleus sampling will be used.
          # @!attribute [rw] top_k
          #   @return [::Integer]
          #     If specified, custom value for top-k sampling will be used.
          # @!attribute [rw] frequency_penalty
          #   @return [::Float]
          #     If specified, custom value for frequency penalty will be used.
          # @!attribute [rw] presence_penalty
          #   @return [::Float]
          #     If specified, custom value for presence penalty will be used.
          # @!attribute [rw] max_output_tokens
          #   @return [::Integer]
          #     If specified, custom value for max output tokens will be used.
          class GenerationSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Describes the options to customize dynamic retrieval.
          # @!attribute [rw] predictor
          #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentRequest::DynamicRetrievalConfiguration::DynamicRetrievalPredictor]
          #     Specification for the predictor for dynamic retrieval.
          class DynamicRetrievalConfiguration
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Describes the predictor settings for dynamic retrieval.
            # @!attribute [rw] version
            #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentRequest::DynamicRetrievalConfiguration::DynamicRetrievalPredictor::Version]
            #     The version of the predictor to be used in dynamic retrieval.
            # @!attribute [rw] threshold
            #   @return [::Float]
            #     The value of the threshold. If the predictor will predict a
            #     value smaller than this, it would suppress grounding in the source.
            class DynamicRetrievalPredictor
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # The version of the predictor to be used in dynamic retrieval.
              module Version
                # Automatically choose the best version of the retrieval predictor.
                VERSION_UNSPECIFIED = 0

                # The V1 model which is evaluating each source independently.
                V1_INDEPENDENT = 1
              end
            end
          end

          # Grounding source.
          # @!attribute [rw] inline_source
          #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentRequest::GroundingSource::InlineSource]
          #     If set, grounding is performed with inline content.
          #
          #     Note: The following fields are mutually exclusive: `inline_source`, `search_source`, `google_search_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] search_source
          #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentRequest::GroundingSource::SearchSource]
          #     If set, grounding is performed with Vertex AI Search.
          #
          #     Note: The following fields are mutually exclusive: `search_source`, `inline_source`, `google_search_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          # @!attribute [rw] google_search_source
          #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentRequest::GroundingSource::GoogleSearchSource]
          #     If set, grounding is performed with Google Search.
          #
          #     Note: The following fields are mutually exclusive: `google_search_source`, `inline_source`, `search_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
          class GroundingSource
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Message to be used for grounding based on inline content.
            # @!attribute [rw] grounding_facts
            #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::GroundingFact>]
            #     List of facts to be used for grounding.
            # @!attribute [rw] attributes
            #   @return [::Google::Protobuf::Map{::String => ::String}]
            #     Attributes associated with the content.
            #
            #     Common attributes include `source` (indicating where the content was
            #     sourced from) and `author` (indicating the author of the content).
            class InlineSource
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # @!attribute [rw] key
              #   @return [::String]
              # @!attribute [rw] value
              #   @return [::String]
              class AttributesEntry
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # Message to be used for grounding with Vertex AI Search.
            # @!attribute [rw] serving_config
            #   @return [::String]
            #     The resource name of the Engine to use.
            #
            #     Format:
            #     `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/servingConfigs/{serving_config_id}`
            # @!attribute [rw] max_result_count
            #   @return [::Integer]
            #     Number of search results to return.
            #
            #     The default value is 10. The maximumm allowed value is 10.
            # @!attribute [rw] filter
            #   @return [::String]
            #     Filter expression to be applied to the search.
            #
            #     The syntax is the same as
            #     {::Google::Cloud::DiscoveryEngine::V1::SearchRequest#filter SearchRequest.filter}.
            # @!attribute [rw] safe_search
            #   @return [::Boolean]
            #     If set, safe search is enabled in Vertex AI Search requests.
            class SearchSource
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Google Search config parameters.
            # @!attribute [rw] dynamic_retrieval_config
            #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentRequest::DynamicRetrievalConfiguration]
            #     Optional. Specifies the dynamic retrieval configuration for the given
            #     source.
            class GoogleSearchSource
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end

          # Grounding specification.
          # @!attribute [rw] grounding_sources
          #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentRequest::GroundingSource>]
          #     Grounding sources.
          class GroundingSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class UserLabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # @!attribute [rw] candidates
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentResponse::Candidate>]
        #     Generated candidates.
        class GenerateGroundedContentResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A response candidate generated from the model.
          # @!attribute [rw] index
          #   @return [::Integer]
          #     Index of the candidate.
          # @!attribute [rw] content
          #   @return [::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationContent]
          #     Content of the candidate.
          # @!attribute [rw] grounding_score
          #   @return [::Float]
          #     The overall grounding score for the candidate, in the range of [0, 1].
          # @!attribute [rw] grounding_metadata
          #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentResponse::Candidate::GroundingMetadata]
          #     Grounding metadata for the generated content.
          class Candidate
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Citation for the generated content.
            # @!attribute [rw] retrieval_metadata
            #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentResponse::Candidate::GroundingMetadata::RetrievalMetadata>]
            #     Retrieval metadata to provide an understanding in the
            #     retrieval steps performed by the model. There can be multiple such
            #     messages which can correspond to different parts of the retrieval. This
            #     is a mechanism used to ensure transparency to our users.
            # @!attribute [rw] support_chunks
            #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::FactChunk>]
            #     List of chunks to be attributed across all claims in the candidate.
            #     These are derived from the grounding sources supplied in the request.
            # @!attribute [rw] web_search_queries
            #   @return [::Array<::String>]
            #     Web search queries for the following-up web search.
            # @!attribute [rw] search_entry_point
            #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentResponse::Candidate::GroundingMetadata::SearchEntryPoint]
            #     Google search entry for the following-up web searches.
            # @!attribute [rw] grounding_support
            #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentResponse::Candidate::GroundingMetadata::GroundingSupport>]
            #     GroundingSupport across all claims in the answer candidate.
            #     An support to a fact indicates that the claim is supported by
            #     the fact.
            class GroundingMetadata
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Describes the metadata associated with a retrieval step.
              # @!attribute [rw] source
              #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentResponse::Candidate::GroundingMetadata::RetrievalMetadata::Source]
              #     Describes the source to which the metadata is referring to.
              # @!attribute [rw] dynamic_retrieval_metadata
              #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentResponse::Candidate::GroundingMetadata::DynamicRetrievalMetadata]
              #     Metadata for dynamic retrieval.
              class RetrievalMetadata
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods

                # Describes the source to which the metadata is associated to.
                module Source
                  # Unspecified source.
                  SOURCE_UNSPECIFIED = 0

                  # Vertex AI search.
                  VERTEX_AI_SEARCH = 1

                  # Google Search.
                  GOOGLE_SEARCH = 3

                  # User inline provided content.
                  INLINE_CONTENT = 2

                  # Google Maps.
                  GOOGLE_MAPS = 4
                end
              end

              # Describes the metadata about dynamic retrieval.
              # @!attribute [rw] predictor_metadata
              #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentResponse::Candidate::GroundingMetadata::DynamicRetrievalPredictorMetadata]
              #     Metadata for the dynamic retrieval predictor.
              class DynamicRetrievalMetadata
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # Describes the metadata about the dynamic retrieval predictor.
              # @!attribute [rw] version
              #   @return [::Google::Cloud::DiscoveryEngine::V1::GenerateGroundedContentResponse::Candidate::GroundingMetadata::DynamicRetrievalPredictorMetadata::Version]
              #     The version of the predictor which was used in dynamic retrieval.
              # @!attribute [rw] prediction
              #   @return [::Float]
              #     The value of the predictor. This should be between [0, 1] where
              #     a value of 0 means that the query would not benefit from grounding,
              #     while a value of 1.0 means that the query would benefit the most.
              #     In between values allow to differentiate between different usefulness
              #     scores for grounding.
              class DynamicRetrievalPredictorMetadata
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods

                # The version of the predictor which was used in dynamic retrieval.
                module Version
                  # Unspecified version, should never be used.
                  VERSION_UNSPECIFIED = 0

                  # The V1 model which is evaluating each source independently.
                  V1_INDEPENDENT = 1
                end
              end

              # Google search entry point.
              # @!attribute [rw] rendered_content
              #   @return [::String]
              #     Web content snippet that can be embedded in a web page or an app
              #     webview.
              # @!attribute [rw] sdk_blob
              #   @return [::String]
              #     Base64 encoded JSON representing array of <search term, search url>
              #     tuple.
              class SearchEntryPoint
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end

              # Grounding info for a claim in the candidate and its support.
              # @!attribute [rw] claim_text
              #   @return [::String]
              #     Text for the claim in the candidate. Always provided when a
              #     support is found.
              # @!attribute [rw] support_chunk_indices
              #   @return [::Array<::Integer>]
              #     A list of indices (into 'support_chunks') specifying the
              #     citations associated with the claim. For instance [1,3,4] means
              #     that support_chunks[1], support_chunks[3],
              #     support_chunks[4] are the chunks attributed to the claim.
              # @!attribute [rw] support_score
              #   @return [::Float]
              #     A score in the range of [0, 1] describing how grounded is a specific
              #     claim in the support chunks indicated.
              #     Higher value means that the claim is better supported by the chunks.
              class GroundingSupport
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end
          end
        end

        # Specification for the grounding check.
        # @!attribute [rw] citation_threshold
        #   @return [::Float]
        #     The threshold (in [0,1]) used for determining whether a fact must be
        #     cited for a claim in the answer candidate. Choosing a higher threshold
        #     will lead to fewer but very strong citations, while choosing a lower
        #     threshold may lead to more but somewhat weaker citations. If unset, the
        #     threshold will default to 0.6.
        class CheckGroundingSpec
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Client#check_grounding GroundedGenerationService.CheckGrounding}
        # method.
        # @!attribute [rw] grounding_config
        #   @return [::String]
        #     Required. The resource name of the grounding config, such as
        #     `projects/*/locations/global/groundingConfigs/default_grounding_config`.
        # @!attribute [rw] answer_candidate
        #   @return [::String]
        #     Answer candidate to check. Can have a maximum length of 1024 characters.
        # @!attribute [rw] facts
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::GroundingFact>]
        #     List of facts for the grounding check.
        #     We support up to 200 facts.
        # @!attribute [rw] grounding_spec
        #   @return [::Google::Cloud::DiscoveryEngine::V1::CheckGroundingSpec]
        #     Configuration of the grounding check.
        # @!attribute [rw] user_labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The user labels applied to a resource must meet the following requirements:
        #
        #     * Each resource can have multiple labels, up to a maximum of 64.
        #     * Each label must be a key-value pair.
        #     * Keys have a minimum length of 1 character and a maximum length of 63
        #       characters and cannot be empty. Values can be empty and have a maximum
        #       length of 63 characters.
        #     * Keys and values can contain only lowercase letters, numeric characters,
        #       underscores, and dashes. All characters must use UTF-8 encoding, and
        #       international characters are allowed.
        #     * The key portion of a label must be unique. However, you can use the same
        #       key with multiple resources.
        #     * Keys must start with a lowercase letter or international character.
        #
        #     See [Google Cloud
        #     Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements)
        #     for more details.
        class CheckGroundingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class UserLabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for the
        # {::Google::Cloud::DiscoveryEngine::V1::GroundedGenerationService::Client#check_grounding GroundedGenerationService.CheckGrounding}
        # method.
        # @!attribute [rw] support_score
        #   @return [::Float]
        #     The support score for the input answer candidate.
        #     Higher the score, higher is the fraction of claims that are supported by
        #     the provided facts. This is always set when a response is returned.
        # @!attribute [rw] cited_chunks
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::FactChunk>]
        #     List of facts cited across all claims in the answer candidate.
        #     These are derived from the facts supplied in the request.
        # @!attribute [rw] claims
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1::CheckGroundingResponse::Claim>]
        #     Claim texts and citation info across all claims in the answer candidate.
        class CheckGroundingResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Text and citation info for a claim in the answer candidate.
          # @!attribute [rw] start_pos
          #   @return [::Integer]
          #     Position indicating the start of the claim in the answer candidate,
          #     measured in bytes.
          # @!attribute [rw] end_pos
          #   @return [::Integer]
          #     Position indicating the end of the claim in the answer candidate,
          #     exclusive.
          # @!attribute [rw] claim_text
          #   @return [::String]
          #     Text for the claim in the answer candidate. Always provided regardless of
          #     whether citations or anti-citations are found.
          # @!attribute [rw] citation_indices
          #   @return [::Array<::Integer>]
          #     A list of indices (into 'cited_chunks') specifying the citations
          #     associated with the claim. For instance [1,3,4] means that
          #     cited_chunks[1], cited_chunks[3], cited_chunks[4] are the facts cited
          #     supporting for the claim. A citation to a fact indicates that the claim
          #     is supported by the fact.
          # @!attribute [rw] grounding_check_required
          #   @return [::Boolean]
          #     Indicates that this claim required grounding check. When the system
          #     decided this claim doesn't require attribution/grounding check, this
          #     field will be set to false. In that case, no grounding check was done for
          #     the claim and therefore
          #     {::Google::Cloud::DiscoveryEngine::V1::CheckGroundingResponse::Claim#citation_indices citation_indices},
          #     [anti_citation_indices][google.cloud.discoveryengine.v1.CheckGroundingResponse.Claim.anti_citation_indices],
          #     and
          #     [score][google.cloud.discoveryengine.v1.CheckGroundingResponse.Claim.score]
          #     should not be returned.
          class Claim
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
