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
require "google/cloud/secretmanager/v1/service_pb"
require "google/cloud/secret_manager/v1/secret_manager_service/rest"


class ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ClientTest < Minitest::Test
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

  def test_list_secrets
    # Create test objects.
    client_result = ::Google::Cloud::SecretManager::V1::ListSecretsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_secrets_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_list_secrets_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_secrets_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_secrets({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_secrets parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_secrets ::Google::Cloud::SecretManager::V1::ListSecretsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_secrets({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_secrets(::Google::Cloud::SecretManager::V1::ListSecretsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_secrets_client_stub.call_count
      end
    end
  end

  def test_create_secret
    # Create test objects.
    client_result = ::Google::Cloud::SecretManager::V1::Secret.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    secret_id = "hello world"
    secret = {}

    create_secret_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_create_secret_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_secret_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_secret({ parent: parent, secret_id: secret_id, secret: secret }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_secret parent: parent, secret_id: secret_id, secret: secret do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_secret ::Google::Cloud::SecretManager::V1::CreateSecretRequest.new(parent: parent, secret_id: secret_id, secret: secret) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_secret({ parent: parent, secret_id: secret_id, secret: secret }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_secret(::Google::Cloud::SecretManager::V1::CreateSecretRequest.new(parent: parent, secret_id: secret_id, secret: secret), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_secret_client_stub.call_count
      end
    end
  end

  def test_add_secret_version
    # Create test objects.
    client_result = ::Google::Cloud::SecretManager::V1::SecretVersion.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    payload = {}

    add_secret_version_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_add_secret_version_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, add_secret_version_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.add_secret_version({ parent: parent, payload: payload }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.add_secret_version parent: parent, payload: payload do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.add_secret_version ::Google::Cloud::SecretManager::V1::AddSecretVersionRequest.new(parent: parent, payload: payload) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.add_secret_version({ parent: parent, payload: payload }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.add_secret_version(::Google::Cloud::SecretManager::V1::AddSecretVersionRequest.new(parent: parent, payload: payload), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, add_secret_version_client_stub.call_count
      end
    end
  end

  def test_get_secret
    # Create test objects.
    client_result = ::Google::Cloud::SecretManager::V1::Secret.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_secret_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_get_secret_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_secret_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_secret({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_secret name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_secret ::Google::Cloud::SecretManager::V1::GetSecretRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_secret({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_secret(::Google::Cloud::SecretManager::V1::GetSecretRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_secret_client_stub.call_count
      end
    end
  end

  def test_update_secret
    # Create test objects.
    client_result = ::Google::Cloud::SecretManager::V1::Secret.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    secret = {}
    update_mask = {}

    update_secret_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_update_secret_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_secret_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_secret({ secret: secret, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_secret secret: secret, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_secret ::Google::Cloud::SecretManager::V1::UpdateSecretRequest.new(secret: secret, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_secret({ secret: secret, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_secret(::Google::Cloud::SecretManager::V1::UpdateSecretRequest.new(secret: secret, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_secret_client_stub.call_count
      end
    end
  end

  def test_delete_secret
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"

    delete_secret_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_delete_secret_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_secret_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_secret({ name: name, etag: etag }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_secret name: name, etag: etag do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_secret ::Google::Cloud::SecretManager::V1::DeleteSecretRequest.new(name: name, etag: etag) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_secret({ name: name, etag: etag }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_secret(::Google::Cloud::SecretManager::V1::DeleteSecretRequest.new(name: name, etag: etag), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_secret_client_stub.call_count
      end
    end
  end

  def test_list_secret_versions
    # Create test objects.
    client_result = ::Google::Cloud::SecretManager::V1::ListSecretVersionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_secret_versions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_list_secret_versions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_secret_versions_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_secret_versions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_secret_versions parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_secret_versions ::Google::Cloud::SecretManager::V1::ListSecretVersionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_secret_versions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_secret_versions(::Google::Cloud::SecretManager::V1::ListSecretVersionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_secret_versions_client_stub.call_count
      end
    end
  end

  def test_get_secret_version
    # Create test objects.
    client_result = ::Google::Cloud::SecretManager::V1::SecretVersion.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_secret_version_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_get_secret_version_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_secret_version_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_secret_version({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_secret_version name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_secret_version ::Google::Cloud::SecretManager::V1::GetSecretVersionRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_secret_version({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_secret_version(::Google::Cloud::SecretManager::V1::GetSecretVersionRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_secret_version_client_stub.call_count
      end
    end
  end

  def test_access_secret_version
    # Create test objects.
    client_result = ::Google::Cloud::SecretManager::V1::AccessSecretVersionResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    access_secret_version_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_access_secret_version_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, access_secret_version_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.access_secret_version({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.access_secret_version name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.access_secret_version ::Google::Cloud::SecretManager::V1::AccessSecretVersionRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.access_secret_version({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.access_secret_version(::Google::Cloud::SecretManager::V1::AccessSecretVersionRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, access_secret_version_client_stub.call_count
      end
    end
  end

  def test_disable_secret_version
    # Create test objects.
    client_result = ::Google::Cloud::SecretManager::V1::SecretVersion.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"

    disable_secret_version_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_disable_secret_version_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, disable_secret_version_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.disable_secret_version({ name: name, etag: etag }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.disable_secret_version name: name, etag: etag do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.disable_secret_version ::Google::Cloud::SecretManager::V1::DisableSecretVersionRequest.new(name: name, etag: etag) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.disable_secret_version({ name: name, etag: etag }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.disable_secret_version(::Google::Cloud::SecretManager::V1::DisableSecretVersionRequest.new(name: name, etag: etag), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, disable_secret_version_client_stub.call_count
      end
    end
  end

  def test_enable_secret_version
    # Create test objects.
    client_result = ::Google::Cloud::SecretManager::V1::SecretVersion.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"

    enable_secret_version_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_enable_secret_version_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, enable_secret_version_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.enable_secret_version({ name: name, etag: etag }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.enable_secret_version name: name, etag: etag do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.enable_secret_version ::Google::Cloud::SecretManager::V1::EnableSecretVersionRequest.new(name: name, etag: etag) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.enable_secret_version({ name: name, etag: etag }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.enable_secret_version(::Google::Cloud::SecretManager::V1::EnableSecretVersionRequest.new(name: name, etag: etag), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, enable_secret_version_client_stub.call_count
      end
    end
  end

  def test_destroy_secret_version
    # Create test objects.
    client_result = ::Google::Cloud::SecretManager::V1::SecretVersion.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"

    destroy_secret_version_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_destroy_secret_version_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, destroy_secret_version_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.destroy_secret_version({ name: name, etag: etag }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.destroy_secret_version name: name, etag: etag do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.destroy_secret_version ::Google::Cloud::SecretManager::V1::DestroySecretVersionRequest.new(name: name, etag: etag) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.destroy_secret_version({ name: name, etag: etag }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.destroy_secret_version(::Google::Cloud::SecretManager::V1::DestroySecretVersionRequest.new(name: name, etag: etag), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, destroy_secret_version_client_stub.call_count
      end
    end
  end

  def test_set_iam_policy
    # Create test objects.
    client_result = ::Google::Iam::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    policy = {}
    update_mask = {}

    set_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_set_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.set_iam_policy resource: resource, policy: policy, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.set_iam_policy ::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_iam_policy(::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_iam_policy_client_stub.call_count
      end
    end
  end

  def test_get_iam_policy
    # Create test objects.
    client_result = ::Google::Iam::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    options = {}

    get_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_get_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_iam_policy({ resource: resource, options: options }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_iam_policy resource: resource, options: options do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_iam_policy ::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_iam_policy({ resource: resource, options: options }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_iam_policy(::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_iam_policy_client_stub.call_count
      end
    end
  end

  def test_test_iam_permissions
    # Create test objects.
    client_result = ::Google::Iam::V1::TestIamPermissionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    permissions = ["hello world"]

    test_iam_permissions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::ServiceStub.stub :transcode_test_iam_permissions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, test_iam_permissions_client_stub do
        # Create client
        client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.test_iam_permissions({ resource: resource, permissions: permissions }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.test_iam_permissions resource: resource, permissions: permissions do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.test_iam_permissions ::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.test_iam_permissions({ resource: resource, permissions: permissions }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.test_iam_permissions(::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, test_iam_permissions_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::SecretManager::V1::SecretManagerService::Rest::Client::Configuration, config
  end
end
