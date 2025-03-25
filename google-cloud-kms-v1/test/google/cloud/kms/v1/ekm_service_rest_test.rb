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
require "google/cloud/kms/v1/ekm_service_pb"
require "google/cloud/kms/v1/ekm_service/rest"


class ::Google::Cloud::Kms::V1::EkmService::Rest::ClientTest < Minitest::Test
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

  def test_list_ekm_connections
    # Create test objects.
    client_result = ::Google::Cloud::Kms::V1::ListEkmConnectionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_ekm_connections_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Kms::V1::EkmService::Rest::ServiceStub.stub :transcode_list_ekm_connections_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_ekm_connections_client_stub do
        # Create client
        client = ::Google::Cloud::Kms::V1::EkmService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_ekm_connections({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_ekm_connections parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_ekm_connections ::Google::Cloud::Kms::V1::ListEkmConnectionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_ekm_connections({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_ekm_connections(::Google::Cloud::Kms::V1::ListEkmConnectionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_ekm_connections_client_stub.call_count
      end
    end
  end

  def test_get_ekm_connection
    # Create test objects.
    client_result = ::Google::Cloud::Kms::V1::EkmConnection.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_ekm_connection_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Kms::V1::EkmService::Rest::ServiceStub.stub :transcode_get_ekm_connection_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_ekm_connection_client_stub do
        # Create client
        client = ::Google::Cloud::Kms::V1::EkmService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_ekm_connection({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_ekm_connection name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_ekm_connection ::Google::Cloud::Kms::V1::GetEkmConnectionRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_ekm_connection({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_ekm_connection(::Google::Cloud::Kms::V1::GetEkmConnectionRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_ekm_connection_client_stub.call_count
      end
    end
  end

  def test_create_ekm_connection
    # Create test objects.
    client_result = ::Google::Cloud::Kms::V1::EkmConnection.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    ekm_connection_id = "hello world"
    ekm_connection = {}

    create_ekm_connection_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Kms::V1::EkmService::Rest::ServiceStub.stub :transcode_create_ekm_connection_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_ekm_connection_client_stub do
        # Create client
        client = ::Google::Cloud::Kms::V1::EkmService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_ekm_connection({ parent: parent, ekm_connection_id: ekm_connection_id, ekm_connection: ekm_connection }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_ekm_connection parent: parent, ekm_connection_id: ekm_connection_id, ekm_connection: ekm_connection do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_ekm_connection ::Google::Cloud::Kms::V1::CreateEkmConnectionRequest.new(parent: parent, ekm_connection_id: ekm_connection_id, ekm_connection: ekm_connection) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_ekm_connection({ parent: parent, ekm_connection_id: ekm_connection_id, ekm_connection: ekm_connection }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_ekm_connection(::Google::Cloud::Kms::V1::CreateEkmConnectionRequest.new(parent: parent, ekm_connection_id: ekm_connection_id, ekm_connection: ekm_connection), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_ekm_connection_client_stub.call_count
      end
    end
  end

  def test_update_ekm_connection
    # Create test objects.
    client_result = ::Google::Cloud::Kms::V1::EkmConnection.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    ekm_connection = {}
    update_mask = {}

    update_ekm_connection_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Kms::V1::EkmService::Rest::ServiceStub.stub :transcode_update_ekm_connection_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_ekm_connection_client_stub do
        # Create client
        client = ::Google::Cloud::Kms::V1::EkmService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_ekm_connection({ ekm_connection: ekm_connection, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_ekm_connection ekm_connection: ekm_connection, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_ekm_connection ::Google::Cloud::Kms::V1::UpdateEkmConnectionRequest.new(ekm_connection: ekm_connection, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_ekm_connection({ ekm_connection: ekm_connection, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_ekm_connection(::Google::Cloud::Kms::V1::UpdateEkmConnectionRequest.new(ekm_connection: ekm_connection, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_ekm_connection_client_stub.call_count
      end
    end
  end

  def test_get_ekm_config
    # Create test objects.
    client_result = ::Google::Cloud::Kms::V1::EkmConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_ekm_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Kms::V1::EkmService::Rest::ServiceStub.stub :transcode_get_ekm_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_ekm_config_client_stub do
        # Create client
        client = ::Google::Cloud::Kms::V1::EkmService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_ekm_config({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_ekm_config name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_ekm_config ::Google::Cloud::Kms::V1::GetEkmConfigRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_ekm_config({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_ekm_config(::Google::Cloud::Kms::V1::GetEkmConfigRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_ekm_config_client_stub.call_count
      end
    end
  end

  def test_update_ekm_config
    # Create test objects.
    client_result = ::Google::Cloud::Kms::V1::EkmConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    ekm_config = {}
    update_mask = {}

    update_ekm_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Kms::V1::EkmService::Rest::ServiceStub.stub :transcode_update_ekm_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_ekm_config_client_stub do
        # Create client
        client = ::Google::Cloud::Kms::V1::EkmService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_ekm_config({ ekm_config: ekm_config, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_ekm_config ekm_config: ekm_config, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_ekm_config ::Google::Cloud::Kms::V1::UpdateEkmConfigRequest.new(ekm_config: ekm_config, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_ekm_config({ ekm_config: ekm_config, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_ekm_config(::Google::Cloud::Kms::V1::UpdateEkmConfigRequest.new(ekm_config: ekm_config, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_ekm_config_client_stub.call_count
      end
    end
  end

  def test_verify_connectivity
    # Create test objects.
    client_result = ::Google::Cloud::Kms::V1::VerifyConnectivityResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    verify_connectivity_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Kms::V1::EkmService::Rest::ServiceStub.stub :transcode_verify_connectivity_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, verify_connectivity_client_stub do
        # Create client
        client = ::Google::Cloud::Kms::V1::EkmService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.verify_connectivity({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.verify_connectivity name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.verify_connectivity ::Google::Cloud::Kms::V1::VerifyConnectivityRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.verify_connectivity({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.verify_connectivity(::Google::Cloud::Kms::V1::VerifyConnectivityRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, verify_connectivity_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Kms::V1::EkmService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Kms::V1::EkmService::Rest::Client::Configuration, config
  end
end
