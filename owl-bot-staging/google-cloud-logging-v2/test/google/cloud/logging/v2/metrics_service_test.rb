# frozen_string_literal: true

# Copyright 2022 Google LLC
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

require "google/logging/v2/logging_metrics_pb"
require "google/logging/v2/logging_metrics_services_pb"
require "google/cloud/logging/v2/metrics_service"

class ::Google::Cloud::Logging::V2::MetricsService::ClientTest < Minitest::Test
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

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_list_log_metrics
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Logging::V2::ListLogMetricsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_token = "hello world"
    page_size = 42

    list_log_metrics_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_log_metrics, name
      assert_kind_of ::Google::Cloud::Logging::V2::ListLogMetricsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["page_token"]
      assert_equal 42, request["page_size"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_log_metrics_client_stub do
      # Create client
      client = ::Google::Cloud::Logging::V2::MetricsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_log_metrics({ parent: parent, page_token: page_token, page_size: page_size }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_log_metrics parent: parent, page_token: page_token, page_size: page_size do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_log_metrics ::Google::Cloud::Logging::V2::ListLogMetricsRequest.new(parent: parent, page_token: page_token, page_size: page_size) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_log_metrics({ parent: parent, page_token: page_token, page_size: page_size }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_log_metrics(::Google::Cloud::Logging::V2::ListLogMetricsRequest.new(parent: parent, page_token: page_token, page_size: page_size), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_log_metrics_client_stub.call_rpc_count
    end
  end

  def test_get_log_metric
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Logging::V2::LogMetric.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    metric_name = "hello world"

    get_log_metric_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_log_metric, name
      assert_kind_of ::Google::Cloud::Logging::V2::GetLogMetricRequest, request
      assert_equal "hello world", request["metric_name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_log_metric_client_stub do
      # Create client
      client = ::Google::Cloud::Logging::V2::MetricsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_log_metric({ metric_name: metric_name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_log_metric metric_name: metric_name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_log_metric ::Google::Cloud::Logging::V2::GetLogMetricRequest.new(metric_name: metric_name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_log_metric({ metric_name: metric_name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_log_metric(::Google::Cloud::Logging::V2::GetLogMetricRequest.new(metric_name: metric_name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_log_metric_client_stub.call_rpc_count
    end
  end

  def test_create_log_metric
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Logging::V2::LogMetric.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    metric = {}

    create_log_metric_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_log_metric, name
      assert_kind_of ::Google::Cloud::Logging::V2::CreateLogMetricRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Logging::V2::LogMetric), request["metric"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_log_metric_client_stub do
      # Create client
      client = ::Google::Cloud::Logging::V2::MetricsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_log_metric({ parent: parent, metric: metric }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_log_metric parent: parent, metric: metric do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_log_metric ::Google::Cloud::Logging::V2::CreateLogMetricRequest.new(parent: parent, metric: metric) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_log_metric({ parent: parent, metric: metric }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_log_metric(::Google::Cloud::Logging::V2::CreateLogMetricRequest.new(parent: parent, metric: metric), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_log_metric_client_stub.call_rpc_count
    end
  end

  def test_update_log_metric
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Logging::V2::LogMetric.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    metric_name = "hello world"
    metric = {}

    update_log_metric_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_log_metric, name
      assert_kind_of ::Google::Cloud::Logging::V2::UpdateLogMetricRequest, request
      assert_equal "hello world", request["metric_name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Logging::V2::LogMetric), request["metric"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_log_metric_client_stub do
      # Create client
      client = ::Google::Cloud::Logging::V2::MetricsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_log_metric({ metric_name: metric_name, metric: metric }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_log_metric metric_name: metric_name, metric: metric do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_log_metric ::Google::Cloud::Logging::V2::UpdateLogMetricRequest.new(metric_name: metric_name, metric: metric) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_log_metric({ metric_name: metric_name, metric: metric }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_log_metric(::Google::Cloud::Logging::V2::UpdateLogMetricRequest.new(metric_name: metric_name, metric: metric), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_log_metric_client_stub.call_rpc_count
    end
  end

  def test_delete_log_metric
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    metric_name = "hello world"

    delete_log_metric_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_log_metric, name
      assert_kind_of ::Google::Cloud::Logging::V2::DeleteLogMetricRequest, request
      assert_equal "hello world", request["metric_name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_log_metric_client_stub do
      # Create client
      client = ::Google::Cloud::Logging::V2::MetricsService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_log_metric({ metric_name: metric_name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_log_metric metric_name: metric_name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_log_metric ::Google::Cloud::Logging::V2::DeleteLogMetricRequest.new(metric_name: metric_name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_log_metric({ metric_name: metric_name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_log_metric(::Google::Cloud::Logging::V2::DeleteLogMetricRequest.new(metric_name: metric_name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_log_metric_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Logging::V2::MetricsService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Logging::V2::MetricsService::Client::Configuration, config
  end
end
