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

require "google/cloud/redis/v1beta1/cloud_redis_pb"
require "google/cloud/redis/v1beta1/cloud_redis_services_pb"
require "google/cloud/redis/v1beta1/cloud_redis"

class ::Google::Cloud::Redis::V1beta1::CloudRedis::ClientTest < Minitest::Test
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

  def test_list_instances
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Redis::V1beta1::ListInstancesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_instances_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_instances, name
      assert_kind_of ::Google::Cloud::Redis::V1beta1::ListInstancesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_instances_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_instances({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_instances parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_instances ::Google::Cloud::Redis::V1beta1::ListInstancesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_instances({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_instances(::Google::Cloud::Redis::V1beta1::ListInstancesRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
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
    grpc_response = ::Google::Cloud::Redis::V1beta1::Instance.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_instance, name
      assert_kind_of ::Google::Cloud::Redis::V1beta1::GetInstanceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
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
      client.get_instance ::Google::Cloud::Redis::V1beta1::GetInstanceRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_instance({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_instance(::Google::Cloud::Redis::V1beta1::GetInstanceRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_instance_client_stub.call_rpc_count
    end
  end

  def test_get_instance_auth_string
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Redis::V1beta1::InstanceAuthString.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_instance_auth_string_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_instance_auth_string, name
      assert_kind_of ::Google::Cloud::Redis::V1beta1::GetInstanceAuthStringRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_instance_auth_string_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_instance_auth_string({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_instance_auth_string name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_instance_auth_string ::Google::Cloud::Redis::V1beta1::GetInstanceAuthStringRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_instance_auth_string({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_instance_auth_string(::Google::Cloud::Redis::V1beta1::GetInstanceAuthStringRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_instance_auth_string_client_stub.call_rpc_count
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
      assert_kind_of ::Google::Cloud::Redis::V1beta1::CreateInstanceRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["instance_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Redis::V1beta1::Instance), request["instance"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
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
      client.create_instance ::Google::Cloud::Redis::V1beta1::CreateInstanceRequest.new(parent: parent, instance_id: instance_id, instance: instance) do |response, operation|
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
      client.create_instance(::Google::Cloud::Redis::V1beta1::CreateInstanceRequest.new(parent: parent, instance_id: instance_id, instance: instance), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_instance_client_stub.call_rpc_count
    end
  end

  def test_update_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    update_mask = {}
    instance = {}

    update_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_instance, name
      assert_kind_of ::Google::Cloud::Redis::V1beta1::UpdateInstanceRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Redis::V1beta1::Instance), request["instance"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_instance({ update_mask: update_mask, instance: instance }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_instance update_mask: update_mask, instance: instance do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_instance ::Google::Cloud::Redis::V1beta1::UpdateInstanceRequest.new(update_mask: update_mask, instance: instance) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_instance({ update_mask: update_mask, instance: instance }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_instance(::Google::Cloud::Redis::V1beta1::UpdateInstanceRequest.new(update_mask: update_mask, instance: instance), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_instance_client_stub.call_rpc_count
    end
  end

  def test_upgrade_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    redis_version = "hello world"

    upgrade_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :upgrade_instance, name
      assert_kind_of ::Google::Cloud::Redis::V1beta1::UpgradeInstanceRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["redis_version"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, upgrade_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.upgrade_instance({ name: name, redis_version: redis_version }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.upgrade_instance name: name, redis_version: redis_version do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.upgrade_instance ::Google::Cloud::Redis::V1beta1::UpgradeInstanceRequest.new(name: name, redis_version: redis_version) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.upgrade_instance({ name: name, redis_version: redis_version }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.upgrade_instance(::Google::Cloud::Redis::V1beta1::UpgradeInstanceRequest.new(name: name, redis_version: redis_version), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, upgrade_instance_client_stub.call_rpc_count
    end
  end

  def test_import_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    input_config = {}

    import_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :import_instance, name
      assert_kind_of ::Google::Cloud::Redis::V1beta1::ImportInstanceRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Redis::V1beta1::InputConfig), request["input_config"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, import_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.import_instance({ name: name, input_config: input_config }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.import_instance name: name, input_config: input_config do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.import_instance ::Google::Cloud::Redis::V1beta1::ImportInstanceRequest.new(name: name, input_config: input_config) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.import_instance({ name: name, input_config: input_config }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.import_instance(::Google::Cloud::Redis::V1beta1::ImportInstanceRequest.new(name: name, input_config: input_config), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, import_instance_client_stub.call_rpc_count
    end
  end

  def test_export_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    output_config = {}

    export_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :export_instance, name
      assert_kind_of ::Google::Cloud::Redis::V1beta1::ExportInstanceRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Redis::V1beta1::OutputConfig), request["output_config"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, export_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.export_instance({ name: name, output_config: output_config }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.export_instance name: name, output_config: output_config do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.export_instance ::Google::Cloud::Redis::V1beta1::ExportInstanceRequest.new(name: name, output_config: output_config) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.export_instance({ name: name, output_config: output_config }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.export_instance(::Google::Cloud::Redis::V1beta1::ExportInstanceRequest.new(name: name, output_config: output_config), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, export_instance_client_stub.call_rpc_count
    end
  end

  def test_failover_instance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    data_protection_mode = :DATA_PROTECTION_MODE_UNSPECIFIED

    failover_instance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :failover_instance, name
      assert_kind_of ::Google::Cloud::Redis::V1beta1::FailoverInstanceRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :DATA_PROTECTION_MODE_UNSPECIFIED, request["data_protection_mode"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, failover_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.failover_instance({ name: name, data_protection_mode: data_protection_mode }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.failover_instance name: name, data_protection_mode: data_protection_mode do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.failover_instance ::Google::Cloud::Redis::V1beta1::FailoverInstanceRequest.new(name: name, data_protection_mode: data_protection_mode) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.failover_instance({ name: name, data_protection_mode: data_protection_mode }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.failover_instance(::Google::Cloud::Redis::V1beta1::FailoverInstanceRequest.new(name: name, data_protection_mode: data_protection_mode), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, failover_instance_client_stub.call_rpc_count
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
      assert_kind_of ::Google::Cloud::Redis::V1beta1::DeleteInstanceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_instance_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
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
      client.delete_instance ::Google::Cloud::Redis::V1beta1::DeleteInstanceRequest.new(name: name) do |response, operation|
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
      client.delete_instance(::Google::Cloud::Redis::V1beta1::DeleteInstanceRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_instance_client_stub.call_rpc_count
    end
  end

  def test_reschedule_maintenance
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    reschedule_type = :RESCHEDULE_TYPE_UNSPECIFIED
    schedule_time = {}

    reschedule_maintenance_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :reschedule_maintenance, name
      assert_kind_of ::Google::Cloud::Redis::V1beta1::RescheduleMaintenanceRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :RESCHEDULE_TYPE_UNSPECIFIED, request["reschedule_type"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["schedule_time"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, reschedule_maintenance_client_stub do
      # Create client
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.reschedule_maintenance({ name: name, reschedule_type: reschedule_type, schedule_time: schedule_time }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.reschedule_maintenance name: name, reschedule_type: reschedule_type, schedule_time: schedule_time do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.reschedule_maintenance ::Google::Cloud::Redis::V1beta1::RescheduleMaintenanceRequest.new(name: name, reschedule_type: reschedule_type, schedule_time: schedule_time) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.reschedule_maintenance({ name: name, reschedule_type: reschedule_type, schedule_time: schedule_time }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.reschedule_maintenance(::Google::Cloud::Redis::V1beta1::RescheduleMaintenanceRequest.new(name: name, reschedule_type: reschedule_type, schedule_time: schedule_time), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, reschedule_maintenance_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Redis::V1beta1::CloudRedis::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Redis::V1beta1::CloudRedis::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Redis::V1beta1::CloudRedis::Operations, client.operations_client
  end
end
