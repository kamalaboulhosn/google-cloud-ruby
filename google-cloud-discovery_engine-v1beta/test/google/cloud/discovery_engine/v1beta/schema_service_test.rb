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

require "google/cloud/discoveryengine/v1beta/schema_service_pb"
require "google/cloud/discoveryengine/v1beta/schema_service_services_pb"
require "google/cloud/discovery_engine/v1beta/schema_service"

class ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::ClientTest < Minitest::Test
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

  def test_get_schema
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::Schema.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_schema_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_schema, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::GetSchemaRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_schema_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_schema({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_schema name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_schema ::Google::Cloud::DiscoveryEngine::V1beta::GetSchemaRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_schema({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_schema(::Google::Cloud::DiscoveryEngine::V1beta::GetSchemaRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_schema_client_stub.call_rpc_count
    end
  end

  def test_list_schemas
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1beta::ListSchemasResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_schemas_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_schemas, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::ListSchemasRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_schemas_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_schemas({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_schemas parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_schemas ::Google::Cloud::DiscoveryEngine::V1beta::ListSchemasRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_schemas({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_schemas(::Google::Cloud::DiscoveryEngine::V1beta::ListSchemasRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_schemas_client_stub.call_rpc_count
    end
  end

  def test_create_schema
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    schema = {}
    schema_id = "hello world"

    create_schema_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_schema, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::CreateSchemaRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::Schema), request["schema"]
      assert_equal "hello world", request["schema_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_schema_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_schema({ parent: parent, schema: schema, schema_id: schema_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_schema parent: parent, schema: schema, schema_id: schema_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_schema ::Google::Cloud::DiscoveryEngine::V1beta::CreateSchemaRequest.new(parent: parent, schema: schema, schema_id: schema_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_schema({ parent: parent, schema: schema, schema_id: schema_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_schema(::Google::Cloud::DiscoveryEngine::V1beta::CreateSchemaRequest.new(parent: parent, schema: schema, schema_id: schema_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_schema_client_stub.call_rpc_count
    end
  end

  def test_update_schema
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    schema = {}
    allow_missing = true

    update_schema_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_schema, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::UpdateSchemaRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1beta::Schema), request["schema"]
      assert_equal true, request["allow_missing"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_schema_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_schema({ schema: schema, allow_missing: allow_missing }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_schema schema: schema, allow_missing: allow_missing do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_schema ::Google::Cloud::DiscoveryEngine::V1beta::UpdateSchemaRequest.new(schema: schema, allow_missing: allow_missing) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_schema({ schema: schema, allow_missing: allow_missing }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_schema(::Google::Cloud::DiscoveryEngine::V1beta::UpdateSchemaRequest.new(schema: schema, allow_missing: allow_missing), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_schema_client_stub.call_rpc_count
    end
  end

  def test_delete_schema
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_schema_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_schema, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::DeleteSchemaRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_schema_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_schema({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_schema name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_schema ::Google::Cloud::DiscoveryEngine::V1beta::DeleteSchemaRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_schema({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_schema(::Google::Cloud::DiscoveryEngine::V1beta::DeleteSchemaRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_schema_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Operations, client.operations_client
  end
end
