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

require "google/cloud/datafusion/v1/datafusion_pb"
require "google/cloud/datafusion/v1/datafusion_services_pb"
require "google/cloud/data_fusion/v1/data_fusion"

class ::Google::Cloud::DataFusion::V1::DataFusion::ClientTest < Minitest::Test
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

  def test_list_available_versions
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DataFusion::V1::ListAvailableVersionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    latest_patch_only = true

    list_available_versions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_available_versions, name
      assert_kind_of ::Google::Cloud::DataFusion::V1::ListAvailableVersionsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal true, request["latest_patch_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_available_versions_client_stub do
      # Create client
      client = ::Google::Cloud::DataFusion::V1::DataFusion::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_available_versions({ parent: parent, page_size: page_size, page_token: page_token, latest_patch_only: latest_patch_only }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_available_versions parent: parent, page_size: page_size, page_token: page_token, latest_patch_only: latest_patch_only do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_available_versions ::Google::Cloud::DataFusion::V1::ListAvailableVersionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, latest_patch_only: latest_patch_only) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_available_versions({ parent: parent, page_size: page_size, page_token: page_token, latest_patch_only: latest_patch_only }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_available_versions(::Google::Cloud::DataFusion::V1::ListAvailableVersionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, latest_patch_only: latest_patch_only), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_available_versions_client_stub.call_rpc_count
    end
  end

  def test_list_instances
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DataFusion::V1::ListInstancesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_instances_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_instances, name
      assert_kind_of ::Google::Cloud::DataFusion::V1::ListInstancesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_instances_client_stub do
      # Create client
      client = ::Google::Cloud::DataFusion::V1::DataFusion::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_instances({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_instances parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_instances ::Google::Cloud::DataFusion::V1::ListInstancesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_instances({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_instances(::Google::Cloud::DataFusion::V1::ListInstancesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_instances_client_stub.call_rpc_count
    end
  end

  def test_get_instance
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DataFusion::V1::Instance.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_instance, name
      assert_kind_of ::Google::Cloud::DataFusion::V1::GetInstanceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_instance_client_stub do
      # Create client
      client = ::Google::Cloud::DataFusion::V1::DataFusion::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_instance({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_instance name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_instance ::Google::Cloud::DataFusion::V1::GetInstanceRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_instance({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_instance(::Google::Cloud::DataFusion::V1::GetInstanceRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_instance_client_stub.call_rpc_count
    end
  end

  def test_create_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    instance_id = "hello world"
    instance = {}

    create_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_instance, name
      assert_kind_of ::Google::Cloud::DataFusion::V1::CreateInstanceRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["instance_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DataFusion::V1::Instance), request["instance"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_instance_client_stub do
      # Create client
      client = ::Google::Cloud::DataFusion::V1::DataFusion::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_instance({ parent: parent, instance_id: instance_id, instance: instance }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_instance parent: parent, instance_id: instance_id, instance: instance do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_instance ::Google::Cloud::DataFusion::V1::CreateInstanceRequest.new(parent: parent, instance_id: instance_id, instance: instance) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_instance({ parent: parent, instance_id: instance_id, instance: instance }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_instance(::Google::Cloud::DataFusion::V1::CreateInstanceRequest.new(parent: parent, instance_id: instance_id, instance: instance), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_instance_client_stub.call_rpc_count
    end
  end

  def test_delete_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_instance, name
      assert_kind_of ::Google::Cloud::DataFusion::V1::DeleteInstanceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_instance_client_stub do
      # Create client
      client = ::Google::Cloud::DataFusion::V1::DataFusion::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_instance({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_instance name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_instance ::Google::Cloud::DataFusion::V1::DeleteInstanceRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_instance({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_instance(::Google::Cloud::DataFusion::V1::DeleteInstanceRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_instance_client_stub.call_rpc_count
    end
  end

  def test_update_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    instance = {}
    update_mask = {}

    update_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_instance, name
      assert_kind_of ::Google::Cloud::DataFusion::V1::UpdateInstanceRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DataFusion::V1::Instance), request["instance"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_instance_client_stub do
      # Create client
      client = ::Google::Cloud::DataFusion::V1::DataFusion::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_instance({ instance: instance, update_mask: update_mask }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_instance instance: instance, update_mask: update_mask do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_instance ::Google::Cloud::DataFusion::V1::UpdateInstanceRequest.new(instance: instance, update_mask: update_mask) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_instance({ instance: instance, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_instance(::Google::Cloud::DataFusion::V1::UpdateInstanceRequest.new(instance: instance, update_mask: update_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_instance_client_stub.call_rpc_count
    end
  end

  def test_restart_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    restart_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :restart_instance, name
      assert_kind_of ::Google::Cloud::DataFusion::V1::RestartInstanceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, restart_instance_client_stub do
      # Create client
      client = ::Google::Cloud::DataFusion::V1::DataFusion::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.restart_instance({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.restart_instance name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.restart_instance ::Google::Cloud::DataFusion::V1::RestartInstanceRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.restart_instance({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.restart_instance(::Google::Cloud::DataFusion::V1::RestartInstanceRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, restart_instance_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DataFusion::V1::DataFusion::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DataFusion::V1::DataFusion::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DataFusion::V1::DataFusion::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::DataFusion::V1::DataFusion::Operations, client.operations_client
  end
end