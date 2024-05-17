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
require "gapic/rest"
require "google/cloud/language/v2/language_service_pb"
require "google/cloud/language/v2/language_service/rest"


class ::Google::Cloud::Language::V2::LanguageService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_analyze_sentiment
    # Create test objects.
    client_result = ::Google::Cloud::Language::V2::AnalyzeSentimentResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    document = {}
    encoding_type = :NONE

    analyze_sentiment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Language::V2::LanguageService::Rest::ServiceStub.stub :transcode_analyze_sentiment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, analyze_sentiment_client_stub do
        # Create client
        client = ::Google::Cloud::Language::V2::LanguageService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.analyze_sentiment({ document: document, encoding_type: encoding_type }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.analyze_sentiment document: document, encoding_type: encoding_type do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.analyze_sentiment ::Google::Cloud::Language::V2::AnalyzeSentimentRequest.new(document: document, encoding_type: encoding_type) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.analyze_sentiment({ document: document, encoding_type: encoding_type }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.analyze_sentiment(::Google::Cloud::Language::V2::AnalyzeSentimentRequest.new(document: document, encoding_type: encoding_type), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, analyze_sentiment_client_stub.call_count
      end
    end
  end

  def test_analyze_entities
    # Create test objects.
    client_result = ::Google::Cloud::Language::V2::AnalyzeEntitiesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    document = {}
    encoding_type = :NONE

    analyze_entities_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Language::V2::LanguageService::Rest::ServiceStub.stub :transcode_analyze_entities_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, analyze_entities_client_stub do
        # Create client
        client = ::Google::Cloud::Language::V2::LanguageService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.analyze_entities({ document: document, encoding_type: encoding_type }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.analyze_entities document: document, encoding_type: encoding_type do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.analyze_entities ::Google::Cloud::Language::V2::AnalyzeEntitiesRequest.new(document: document, encoding_type: encoding_type) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.analyze_entities({ document: document, encoding_type: encoding_type }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.analyze_entities(::Google::Cloud::Language::V2::AnalyzeEntitiesRequest.new(document: document, encoding_type: encoding_type), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, analyze_entities_client_stub.call_count
      end
    end
  end

  def test_classify_text
    # Create test objects.
    client_result = ::Google::Cloud::Language::V2::ClassifyTextResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    document = {}

    classify_text_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Language::V2::LanguageService::Rest::ServiceStub.stub :transcode_classify_text_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, classify_text_client_stub do
        # Create client
        client = ::Google::Cloud::Language::V2::LanguageService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.classify_text({ document: document }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.classify_text document: document do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.classify_text ::Google::Cloud::Language::V2::ClassifyTextRequest.new(document: document) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.classify_text({ document: document }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.classify_text(::Google::Cloud::Language::V2::ClassifyTextRequest.new(document: document), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, classify_text_client_stub.call_count
      end
    end
  end

  def test_moderate_text
    # Create test objects.
    client_result = ::Google::Cloud::Language::V2::ModerateTextResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    document = {}

    moderate_text_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Language::V2::LanguageService::Rest::ServiceStub.stub :transcode_moderate_text_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, moderate_text_client_stub do
        # Create client
        client = ::Google::Cloud::Language::V2::LanguageService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.moderate_text({ document: document }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.moderate_text document: document do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.moderate_text ::Google::Cloud::Language::V2::ModerateTextRequest.new(document: document) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.moderate_text({ document: document }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.moderate_text(::Google::Cloud::Language::V2::ModerateTextRequest.new(document: document), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, moderate_text_client_stub.call_count
      end
    end
  end

  def test_annotate_text
    # Create test objects.
    client_result = ::Google::Cloud::Language::V2::AnnotateTextResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    document = {}
    features = {}
    encoding_type = :NONE

    annotate_text_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Language::V2::LanguageService::Rest::ServiceStub.stub :transcode_annotate_text_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, annotate_text_client_stub do
        # Create client
        client = ::Google::Cloud::Language::V2::LanguageService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.annotate_text({ document: document, features: features, encoding_type: encoding_type }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.annotate_text document: document, features: features, encoding_type: encoding_type do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.annotate_text ::Google::Cloud::Language::V2::AnnotateTextRequest.new(document: document, features: features, encoding_type: encoding_type) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.annotate_text({ document: document, features: features, encoding_type: encoding_type }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.annotate_text(::Google::Cloud::Language::V2::AnnotateTextRequest.new(document: document, features: features, encoding_type: encoding_type), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, annotate_text_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Language::V2::LanguageService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Language::V2::LanguageService::Rest::Client::Configuration, config
  end
end
