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
require "google/dataflow/v1beta3/metrics_pb"
require "google/cloud/dataflow/v1beta3/metrics/rest"


class ::Google::Cloud::Dataflow::V1beta3::Metrics::Rest::ClientTest < Minitest::Test
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

  def test_get_job_metrics
    # Create test objects.
    client_result = ::Google::Cloud::Dataflow::V1beta3::JobMetrics.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    job_id = "hello world"
    start_time = {}
    location = "hello world"

    get_job_metrics_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataflow::V1beta3::Metrics::Rest::ServiceStub.stub :transcode_get_job_metrics_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_job_metrics_client_stub do
        # Create client
        client = ::Google::Cloud::Dataflow::V1beta3::Metrics::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_job_metrics({ project_id: project_id, job_id: job_id, start_time: start_time, location: location }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_job_metrics project_id: project_id, job_id: job_id, start_time: start_time, location: location do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_job_metrics ::Google::Cloud::Dataflow::V1beta3::GetJobMetricsRequest.new(project_id: project_id, job_id: job_id, start_time: start_time, location: location) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_job_metrics({ project_id: project_id, job_id: job_id, start_time: start_time, location: location }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_job_metrics(::Google::Cloud::Dataflow::V1beta3::GetJobMetricsRequest.new(project_id: project_id, job_id: job_id, start_time: start_time, location: location), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_job_metrics_client_stub.call_count
      end
    end
  end

  def test_get_job_execution_details
    # Create test objects.
    client_result = ::Google::Cloud::Dataflow::V1beta3::JobExecutionDetails.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    job_id = "hello world"
    location = "hello world"
    page_size = 42
    page_token = "hello world"

    get_job_execution_details_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataflow::V1beta3::Metrics::Rest::ServiceStub.stub :transcode_get_job_execution_details_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_job_execution_details_client_stub do
        # Create client
        client = ::Google::Cloud::Dataflow::V1beta3::Metrics::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_job_execution_details({ project_id: project_id, job_id: job_id, location: location, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_job_execution_details project_id: project_id, job_id: job_id, location: location, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_job_execution_details ::Google::Cloud::Dataflow::V1beta3::GetJobExecutionDetailsRequest.new(project_id: project_id, job_id: job_id, location: location, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_job_execution_details({ project_id: project_id, job_id: job_id, location: location, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_job_execution_details(::Google::Cloud::Dataflow::V1beta3::GetJobExecutionDetailsRequest.new(project_id: project_id, job_id: job_id, location: location, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_job_execution_details_client_stub.call_count
      end
    end
  end

  def test_get_stage_execution_details
    # Create test objects.
    client_result = ::Google::Cloud::Dataflow::V1beta3::StageExecutionDetails.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    job_id = "hello world"
    location = "hello world"
    stage_id = "hello world"
    page_size = 42
    page_token = "hello world"
    start_time = {}
    end_time = {}

    get_stage_execution_details_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dataflow::V1beta3::Metrics::Rest::ServiceStub.stub :transcode_get_stage_execution_details_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_stage_execution_details_client_stub do
        # Create client
        client = ::Google::Cloud::Dataflow::V1beta3::Metrics::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_stage_execution_details({ project_id: project_id, job_id: job_id, location: location, stage_id: stage_id, page_size: page_size, page_token: page_token, start_time: start_time, end_time: end_time }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_stage_execution_details project_id: project_id, job_id: job_id, location: location, stage_id: stage_id, page_size: page_size, page_token: page_token, start_time: start_time, end_time: end_time do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_stage_execution_details ::Google::Cloud::Dataflow::V1beta3::GetStageExecutionDetailsRequest.new(project_id: project_id, job_id: job_id, location: location, stage_id: stage_id, page_size: page_size, page_token: page_token, start_time: start_time, end_time: end_time) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_stage_execution_details({ project_id: project_id, job_id: job_id, location: location, stage_id: stage_id, page_size: page_size, page_token: page_token, start_time: start_time, end_time: end_time }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_stage_execution_details(::Google::Cloud::Dataflow::V1beta3::GetStageExecutionDetailsRequest.new(project_id: project_id, job_id: job_id, location: location, stage_id: stage_id, page_size: page_size, page_token: page_token, start_time: start_time, end_time: end_time), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_stage_execution_details_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dataflow::V1beta3::Metrics::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dataflow::V1beta3::Metrics::Rest::Client::Configuration, config
  end
end
