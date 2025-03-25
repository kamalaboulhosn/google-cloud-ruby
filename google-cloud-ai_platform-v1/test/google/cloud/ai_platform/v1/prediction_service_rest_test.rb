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

require "helper"
require "gapic/rest"
require "google/cloud/aiplatform/v1/prediction_service_pb"
require "google/cloud/ai_platform/v1/prediction_service/rest"


class ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
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

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_predict
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::PredictResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    endpoint = "hello world"
    instances = [{}]
    parameters = {}

    predict_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::ServiceStub.stub :transcode_predict_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, predict_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.predict({ endpoint: endpoint, instances: instances, parameters: parameters }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.predict endpoint: endpoint, instances: instances, parameters: parameters do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.predict ::Google::Cloud::AIPlatform::V1::PredictRequest.new(endpoint: endpoint, instances: instances, parameters: parameters) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.predict({ endpoint: endpoint, instances: instances, parameters: parameters }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.predict(::Google::Cloud::AIPlatform::V1::PredictRequest.new(endpoint: endpoint, instances: instances, parameters: parameters), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, predict_client_stub.call_count
      end
    end
  end

  def test_raw_predict
    # Create test objects.
    client_result = ::Google::Api::HttpBody.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    endpoint = "hello world"
    http_body = {}

    raw_predict_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::ServiceStub.stub :transcode_raw_predict_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, raw_predict_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.raw_predict({ endpoint: endpoint, http_body: http_body }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.raw_predict endpoint: endpoint, http_body: http_body do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.raw_predict ::Google::Cloud::AIPlatform::V1::RawPredictRequest.new(endpoint: endpoint, http_body: http_body) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.raw_predict({ endpoint: endpoint, http_body: http_body }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.raw_predict(::Google::Cloud::AIPlatform::V1::RawPredictRequest.new(endpoint: endpoint, http_body: http_body), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, raw_predict_client_stub.call_count
      end
    end
  end

  def test_stream_raw_predict
    # Create test objects.
    client_result = ::Google::Api::HttpBody.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    endpoint = "hello world"
    http_body = {}

    stream_raw_predict_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, is_server_streaming:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::ServiceStub.stub :transcode_stream_raw_predict_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, stream_raw_predict_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.stream_raw_predict({ endpoint: endpoint, http_body: http_body }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use named arguments
        client.stream_raw_predict endpoint: endpoint, http_body: http_body do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use protobuf object
        client.stream_raw_predict ::Google::Cloud::AIPlatform::V1::StreamRawPredictRequest.new(endpoint: endpoint, http_body: http_body) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use hash object with options
        client.stream_raw_predict({ endpoint: endpoint, http_body: http_body }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use protobuf object with options
        client.stream_raw_predict(::Google::Cloud::AIPlatform::V1::StreamRawPredictRequest.new(endpoint: endpoint, http_body: http_body), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Verify method calls
        assert_equal 5, stream_raw_predict_client_stub.call_count
      end
    end
  end

  def test_direct_predict
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::DirectPredictResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    endpoint = "hello world"
    inputs = [{}]
    parameters = {}

    direct_predict_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::ServiceStub.stub :transcode_direct_predict_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, direct_predict_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.direct_predict({ endpoint: endpoint, inputs: inputs, parameters: parameters }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.direct_predict endpoint: endpoint, inputs: inputs, parameters: parameters do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.direct_predict ::Google::Cloud::AIPlatform::V1::DirectPredictRequest.new(endpoint: endpoint, inputs: inputs, parameters: parameters) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.direct_predict({ endpoint: endpoint, inputs: inputs, parameters: parameters }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.direct_predict(::Google::Cloud::AIPlatform::V1::DirectPredictRequest.new(endpoint: endpoint, inputs: inputs, parameters: parameters), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, direct_predict_client_stub.call_count
      end
    end
  end

  def test_direct_raw_predict
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::DirectRawPredictResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    endpoint = "hello world"
    method_name = "hello world"
    input = "hello world"

    direct_raw_predict_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::ServiceStub.stub :transcode_direct_raw_predict_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, direct_raw_predict_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.direct_raw_predict({ endpoint: endpoint, method_name: method_name, input: input }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.direct_raw_predict endpoint: endpoint, method_name: method_name, input: input do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.direct_raw_predict ::Google::Cloud::AIPlatform::V1::DirectRawPredictRequest.new(endpoint: endpoint, method_name: method_name, input: input) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.direct_raw_predict({ endpoint: endpoint, method_name: method_name, input: input }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.direct_raw_predict(::Google::Cloud::AIPlatform::V1::DirectRawPredictRequest.new(endpoint: endpoint, method_name: method_name, input: input), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, direct_raw_predict_client_stub.call_count
      end
    end
  end

  def test_server_streaming_predict
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::StreamingPredictResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    endpoint = "hello world"
    inputs = [{}]
    parameters = {}

    server_streaming_predict_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, is_server_streaming:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::ServiceStub.stub :transcode_server_streaming_predict_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, server_streaming_predict_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.server_streaming_predict({ endpoint: endpoint, inputs: inputs, parameters: parameters }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use named arguments
        client.server_streaming_predict endpoint: endpoint, inputs: inputs, parameters: parameters do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use protobuf object
        client.server_streaming_predict ::Google::Cloud::AIPlatform::V1::StreamingPredictRequest.new(endpoint: endpoint, inputs: inputs, parameters: parameters) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use hash object with options
        client.server_streaming_predict({ endpoint: endpoint, inputs: inputs, parameters: parameters }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use protobuf object with options
        client.server_streaming_predict(::Google::Cloud::AIPlatform::V1::StreamingPredictRequest.new(endpoint: endpoint, inputs: inputs, parameters: parameters), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Verify method calls
        assert_equal 5, server_streaming_predict_client_stub.call_count
      end
    end
  end

  def test_explain
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::ExplainResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    endpoint = "hello world"
    instances = [{}]
    parameters = {}
    explanation_spec_override = {}
    deployed_model_id = "hello world"

    explain_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::ServiceStub.stub :transcode_explain_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, explain_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.explain({ endpoint: endpoint, instances: instances, parameters: parameters, explanation_spec_override: explanation_spec_override, deployed_model_id: deployed_model_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.explain endpoint: endpoint, instances: instances, parameters: parameters, explanation_spec_override: explanation_spec_override, deployed_model_id: deployed_model_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.explain ::Google::Cloud::AIPlatform::V1::ExplainRequest.new(endpoint: endpoint, instances: instances, parameters: parameters, explanation_spec_override: explanation_spec_override, deployed_model_id: deployed_model_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.explain({ endpoint: endpoint, instances: instances, parameters: parameters, explanation_spec_override: explanation_spec_override, deployed_model_id: deployed_model_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.explain(::Google::Cloud::AIPlatform::V1::ExplainRequest.new(endpoint: endpoint, instances: instances, parameters: parameters, explanation_spec_override: explanation_spec_override, deployed_model_id: deployed_model_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, explain_client_stub.call_count
      end
    end
  end

  def test_generate_content
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::GenerateContentResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    model = "hello world"
    contents = [{}]
    system_instruction = {}
    cached_content = "hello world"
    tools = [{}]
    tool_config = {}
    labels = {}
    safety_settings = [{}]
    generation_config = {}

    generate_content_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::ServiceStub.stub :transcode_generate_content_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, generate_content_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.generate_content({ model: model, contents: contents, system_instruction: system_instruction, cached_content: cached_content, tools: tools, tool_config: tool_config, labels: labels, safety_settings: safety_settings, generation_config: generation_config }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.generate_content model: model, contents: contents, system_instruction: system_instruction, cached_content: cached_content, tools: tools, tool_config: tool_config, labels: labels, safety_settings: safety_settings, generation_config: generation_config do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.generate_content ::Google::Cloud::AIPlatform::V1::GenerateContentRequest.new(model: model, contents: contents, system_instruction: system_instruction, cached_content: cached_content, tools: tools, tool_config: tool_config, labels: labels, safety_settings: safety_settings, generation_config: generation_config) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.generate_content({ model: model, contents: contents, system_instruction: system_instruction, cached_content: cached_content, tools: tools, tool_config: tool_config, labels: labels, safety_settings: safety_settings, generation_config: generation_config }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.generate_content(::Google::Cloud::AIPlatform::V1::GenerateContentRequest.new(model: model, contents: contents, system_instruction: system_instruction, cached_content: cached_content, tools: tools, tool_config: tool_config, labels: labels, safety_settings: safety_settings, generation_config: generation_config), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, generate_content_client_stub.call_count
      end
    end
  end

  def test_stream_generate_content
    # Create test objects.
    client_result = ::Google::Cloud::AIPlatform::V1::GenerateContentResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    model = "hello world"
    contents = [{}]
    system_instruction = {}
    cached_content = "hello world"
    tools = [{}]
    tool_config = {}
    labels = {}
    safety_settings = [{}]
    generation_config = {}

    stream_generate_content_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, is_server_streaming:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::ServiceStub.stub :transcode_stream_generate_content_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, stream_generate_content_client_stub do
        # Create client
        client = ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.stream_generate_content({ model: model, contents: contents, system_instruction: system_instruction, cached_content: cached_content, tools: tools, tool_config: tool_config, labels: labels, safety_settings: safety_settings, generation_config: generation_config }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use named arguments
        client.stream_generate_content model: model, contents: contents, system_instruction: system_instruction, cached_content: cached_content, tools: tools, tool_config: tool_config, labels: labels, safety_settings: safety_settings, generation_config: generation_config do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use protobuf object
        client.stream_generate_content ::Google::Cloud::AIPlatform::V1::GenerateContentRequest.new(model: model, contents: contents, system_instruction: system_instruction, cached_content: cached_content, tools: tools, tool_config: tool_config, labels: labels, safety_settings: safety_settings, generation_config: generation_config) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use hash object with options
        client.stream_generate_content({ model: model, contents: contents, system_instruction: system_instruction, cached_content: cached_content, tools: tools, tool_config: tool_config, labels: labels, safety_settings: safety_settings, generation_config: generation_config }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Use protobuf object with options
        client.stream_generate_content(::Google::Cloud::AIPlatform::V1::GenerateContentRequest.new(model: model, contents: contents, system_instruction: system_instruction, cached_content: cached_content, tools: tools, tool_config: tool_config, labels: labels, safety_settings: safety_settings, generation_config: generation_config), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end.first

        # Verify method calls
        assert_equal 5, stream_generate_content_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AIPlatform::V1::PredictionService::Rest::Client::Configuration, config
  end
end
