# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/discoveryengine/v1beta/search_service_pb"
require "google/cloud/discoveryengine/v1beta/search_service_services_pb"
require "google/cloud/discovery_engine/v1beta/search_service"

class ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      catch :response do
        yield @response, @operation if block_given?
        @response
      end
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_search
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::SearchResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    serving_config = "hello world"
    branch = "hello world"
    query = "hello world"
    image_query = {}
    page_size = 42
    page_token = "hello world"
    offset = 42
    one_box_page_size = 42
    data_store_specs = [{}]
    filter = "hello world"
    canonical_filter = "hello world"
    order_by = "hello world"
    user_info = {}
    language_code = "hello world"
    region_code = "hello world"
    facet_specs = [{}]
    boost_spec = {}
    params = {}
    query_expansion_spec = {}
    spell_correction_spec = {}
    user_pseudo_id = "hello world"
    content_search_spec = {}
    embedding_spec = {}
    ranking_expression = "hello world"
    safe_search = true
    user_labels = {}
    natural_language_query_understanding_spec = {}
    search_as_you_type_spec = {}
    session = "hello world"
    session_spec = {}
    relevance_threshold = :RELEVANCE_THRESHOLD_UNSPECIFIED
    personalization_spec = {}

    search_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :search, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest, request
      assert_equal "hello world", request["serving_config"]
      assert_equal "hello world", request["branch"]
      assert_equal "hello world", request["query"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::ImageQuery), request["image_query"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["offset"]
      assert_equal 42, request["one_box_page_size"]
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::DataStoreSpec, request["data_store_specs"].first
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["canonical_filter"]
      assert_equal "hello world", request["order_by"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::UserInfo), request["user_info"]
      assert_equal "hello world", request["language_code"]
      assert_equal "hello world", request["region_code"]
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::FacetSpec, request["facet_specs"].first
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::BoostSpec), request["boost_spec"]
      assert_equal({}, request["params"].to_h)
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::QueryExpansionSpec), request["query_expansion_spec"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::SpellCorrectionSpec), request["spell_correction_spec"]
      assert_equal "hello world", request["user_pseudo_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::ContentSearchSpec), request["content_search_spec"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::EmbeddingSpec), request["embedding_spec"]
      assert_equal "hello world", request["ranking_expression"]
      assert_equal true, request["safe_search"]
      assert_equal({}, request["user_labels"].to_h)
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::NaturalLanguageQueryUnderstandingSpec), request["natural_language_query_understanding_spec"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::SearchAsYouTypeSpec), request["search_as_you_type_spec"]
      assert_equal "hello world", request["session"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::SessionSpec), request["session_spec"]
      assert_equal :RELEVANCE_THRESHOLD_UNSPECIFIED, request["relevance_threshold"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::PersonalizationSpec), request["personalization_spec"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, search_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.search({ serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, region_code: region_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, embedding_spec: embedding_spec, ranking_expression: ranking_expression, safe_search: safe_search, user_labels: user_labels, natural_language_query_understanding_spec: natural_language_query_understanding_spec, search_as_you_type_spec: search_as_you_type_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, personalization_spec: personalization_spec }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.search serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, region_code: region_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, embedding_spec: embedding_spec, ranking_expression: ranking_expression, safe_search: safe_search, user_labels: user_labels, natural_language_query_understanding_spec: natural_language_query_understanding_spec, search_as_you_type_spec: search_as_you_type_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, personalization_spec: personalization_spec do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.search ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest.new(serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, region_code: region_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, embedding_spec: embedding_spec, ranking_expression: ranking_expression, safe_search: safe_search, user_labels: user_labels, natural_language_query_understanding_spec: natural_language_query_understanding_spec, search_as_you_type_spec: search_as_you_type_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, personalization_spec: personalization_spec) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.search({ serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, region_code: region_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, embedding_spec: embedding_spec, ranking_expression: ranking_expression, safe_search: safe_search, user_labels: user_labels, natural_language_query_understanding_spec: natural_language_query_understanding_spec, search_as_you_type_spec: search_as_you_type_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, personalization_spec: personalization_spec }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.search(::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest.new(serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, region_code: region_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, embedding_spec: embedding_spec, ranking_expression: ranking_expression, safe_search: safe_search, user_labels: user_labels, natural_language_query_understanding_spec: natural_language_query_understanding_spec, search_as_you_type_spec: search_as_you_type_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, personalization_spec: personalization_spec), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, search_client_stub.call_rpc_count
    end
  end

  def test_search_lite
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::SearchResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    serving_config = "hello world"
    branch = "hello world"
    query = "hello world"
    image_query = {}
    page_size = 42
    page_token = "hello world"
    offset = 42
    one_box_page_size = 42
    data_store_specs = [{}]
    filter = "hello world"
    canonical_filter = "hello world"
    order_by = "hello world"
    user_info = {}
    language_code = "hello world"
    region_code = "hello world"
    facet_specs = [{}]
    boost_spec = {}
    params = {}
    query_expansion_spec = {}
    spell_correction_spec = {}
    user_pseudo_id = "hello world"
    content_search_spec = {}
    embedding_spec = {}
    ranking_expression = "hello world"
    safe_search = true
    user_labels = {}
    natural_language_query_understanding_spec = {}
    search_as_you_type_spec = {}
    session = "hello world"
    session_spec = {}
    relevance_threshold = :RELEVANCE_THRESHOLD_UNSPECIFIED
    personalization_spec = {}

    search_lite_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :search_lite, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest, request
      assert_equal "hello world", request["serving_config"]
      assert_equal "hello world", request["branch"]
      assert_equal "hello world", request["query"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::ImageQuery), request["image_query"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["offset"]
      assert_equal 42, request["one_box_page_size"]
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::DataStoreSpec, request["data_store_specs"].first
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["canonical_filter"]
      assert_equal "hello world", request["order_by"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::UserInfo), request["user_info"]
      assert_equal "hello world", request["language_code"]
      assert_equal "hello world", request["region_code"]
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::FacetSpec, request["facet_specs"].first
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::BoostSpec), request["boost_spec"]
      assert_equal({}, request["params"].to_h)
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::QueryExpansionSpec), request["query_expansion_spec"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::SpellCorrectionSpec), request["spell_correction_spec"]
      assert_equal "hello world", request["user_pseudo_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::ContentSearchSpec), request["content_search_spec"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::EmbeddingSpec), request["embedding_spec"]
      assert_equal "hello world", request["ranking_expression"]
      assert_equal true, request["safe_search"]
      assert_equal({}, request["user_labels"].to_h)
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::NaturalLanguageQueryUnderstandingSpec), request["natural_language_query_understanding_spec"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::SearchAsYouTypeSpec), request["search_as_you_type_spec"]
      assert_equal "hello world", request["session"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::SessionSpec), request["session_spec"]
      assert_equal :RELEVANCE_THRESHOLD_UNSPECIFIED, request["relevance_threshold"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest::PersonalizationSpec), request["personalization_spec"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, search_lite_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.search_lite({ serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, region_code: region_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, embedding_spec: embedding_spec, ranking_expression: ranking_expression, safe_search: safe_search, user_labels: user_labels, natural_language_query_understanding_spec: natural_language_query_understanding_spec, search_as_you_type_spec: search_as_you_type_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, personalization_spec: personalization_spec }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.search_lite serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, region_code: region_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, embedding_spec: embedding_spec, ranking_expression: ranking_expression, safe_search: safe_search, user_labels: user_labels, natural_language_query_understanding_spec: natural_language_query_understanding_spec, search_as_you_type_spec: search_as_you_type_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, personalization_spec: personalization_spec do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.search_lite ::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest.new(serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, region_code: region_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, embedding_spec: embedding_spec, ranking_expression: ranking_expression, safe_search: safe_search, user_labels: user_labels, natural_language_query_understanding_spec: natural_language_query_understanding_spec, search_as_you_type_spec: search_as_you_type_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, personalization_spec: personalization_spec) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.search_lite({ serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, region_code: region_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, embedding_spec: embedding_spec, ranking_expression: ranking_expression, safe_search: safe_search, user_labels: user_labels, natural_language_query_understanding_spec: natural_language_query_understanding_spec, search_as_you_type_spec: search_as_you_type_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, personalization_spec: personalization_spec }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.search_lite(::Google::Cloud::DiscoveryEngine::V1beta::SearchRequest.new(serving_config: serving_config, branch: branch, query: query, image_query: image_query, page_size: page_size, page_token: page_token, offset: offset, one_box_page_size: one_box_page_size, data_store_specs: data_store_specs, filter: filter, canonical_filter: canonical_filter, order_by: order_by, user_info: user_info, language_code: language_code, region_code: region_code, facet_specs: facet_specs, boost_spec: boost_spec, params: params, query_expansion_spec: query_expansion_spec, spell_correction_spec: spell_correction_spec, user_pseudo_id: user_pseudo_id, content_search_spec: content_search_spec, embedding_spec: embedding_spec, ranking_expression: ranking_expression, safe_search: safe_search, user_labels: user_labels, natural_language_query_understanding_spec: natural_language_query_understanding_spec, search_as_you_type_spec: search_as_you_type_spec, session: session, session_spec: session_spec, relevance_threshold: relevance_threshold, personalization_spec: personalization_spec), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, search_lite_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SearchService::Client::Configuration, config
  end
end
