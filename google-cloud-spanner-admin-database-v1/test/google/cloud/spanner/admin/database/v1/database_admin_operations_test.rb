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

require "google/spanner/admin/database/v1/spanner_database_admin_pb"
require "google/spanner/admin/database/v1/spanner_database_admin_services_pb"
require "google/cloud/spanner/admin/database/v1/database_admin"

class ::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::OperationsTest < Minitest::Test
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

  def test_list_operations
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::ListOperationsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_operations_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_operations, name
      assert_kind_of ::Google::Longrunning::ListOperationsRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_operations_client_stub do
      # Create client
      client = ::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Operations.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_operations({ name: name, filter: filter, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_operations name: name, filter: filter, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_operations ::Google::Longrunning::ListOperationsRequest.new(name: name, filter: filter, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_operations({ name: name, filter: filter, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_operations(::Google::Longrunning::ListOperationsRequest.new(name: name, filter: filter, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_operations_client_stub.call_rpc_count
    end
  end

  def test_get_operation
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_operation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_operation, name
      assert_kind_of ::Google::Longrunning::GetOperationRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_operation_client_stub do
      # Create client
      client = ::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Operations.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_operation({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_operation name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_operation ::Google::Longrunning::GetOperationRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_operation({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_operation(::Google::Longrunning::GetOperationRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_operation_client_stub.call_rpc_count
    end
  end

  def test_delete_operation
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_operation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_operation, name
      assert_kind_of ::Google::Longrunning::DeleteOperationRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_operation_client_stub do
      # Create client
      client = ::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Operations.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_operation({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_operation name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_operation ::Google::Longrunning::DeleteOperationRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_operation({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_operation(::Google::Longrunning::DeleteOperationRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_operation_client_stub.call_rpc_count
    end
  end

  def test_cancel_operation
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    cancel_operation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :cancel_operation, name
      assert_kind_of ::Google::Longrunning::CancelOperationRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, cancel_operation_client_stub do
      # Create client
      client = ::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Operations.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.cancel_operation({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.cancel_operation name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.cancel_operation ::Google::Longrunning::CancelOperationRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.cancel_operation({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.cancel_operation(::Google::Longrunning::CancelOperationRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, cancel_operation_client_stub.call_rpc_count
    end
  end

  def test_wait_operation
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    timeout = {}

    wait_operation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :wait_operation, name
      assert_kind_of ::Google::Longrunning::WaitOperationRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Duration), request["timeout"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, wait_operation_client_stub do
      # Create client
      client = ::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Operations.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.wait_operation({ name: name, timeout: timeout }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.wait_operation name: name, timeout: timeout do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.wait_operation ::Google::Longrunning::WaitOperationRequest.new(name: name, timeout: timeout) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.wait_operation({ name: name, timeout: timeout }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.wait_operation(::Google::Longrunning::WaitOperationRequest.new(name: name, timeout: timeout), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, wait_operation_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Operations.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Spanner::Admin::Database::V1::DatabaseAdmin::Operations::Configuration, config
  end
end
