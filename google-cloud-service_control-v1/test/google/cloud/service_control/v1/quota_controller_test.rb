# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/api/servicecontrol/v1/quota_controller_pb"
require "google/api/servicecontrol/v1/quota_controller_services_pb"
require "google/cloud/service_control/v1/quota_controller"

class ::Google::Cloud::ServiceControl::V1::QuotaController::ClientTest < Minitest::Test
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

  def test_allocate_quota
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::ServiceControl::V1::AllocateQuotaResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    service_name = "hello world"
    allocate_operation = {}
    service_config_id = "hello world"

    allocate_quota_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :allocate_quota, name
      assert_kind_of ::Google::Cloud::ServiceControl::V1::AllocateQuotaRequest, request
      assert_equal "hello world", request["service_name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::ServiceControl::V1::QuotaOperation), request["allocate_operation"]
      assert_equal "hello world", request["service_config_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, allocate_quota_client_stub do
      # Create client
      client = ::Google::Cloud::ServiceControl::V1::QuotaController::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.allocate_quota({ service_name: service_name, allocate_operation: allocate_operation, service_config_id: service_config_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.allocate_quota service_name: service_name, allocate_operation: allocate_operation, service_config_id: service_config_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.allocate_quota ::Google::Cloud::ServiceControl::V1::AllocateQuotaRequest.new(service_name: service_name, allocate_operation: allocate_operation, service_config_id: service_config_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.allocate_quota({ service_name: service_name, allocate_operation: allocate_operation, service_config_id: service_config_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.allocate_quota(::Google::Cloud::ServiceControl::V1::AllocateQuotaRequest.new(service_name: service_name, allocate_operation: allocate_operation, service_config_id: service_config_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, allocate_quota_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::ServiceControl::V1::QuotaController::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::ServiceControl::V1::QuotaController::Client::Configuration, config
  end
end
