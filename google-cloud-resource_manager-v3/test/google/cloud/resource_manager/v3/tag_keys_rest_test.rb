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
require "google/cloud/resourcemanager/v3/tag_keys_pb"
require "google/cloud/resource_manager/v3/tag_keys/rest"


class ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::ClientTest < Minitest::Test
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

  def test_list_tag_keys
    # Create test objects.
    client_result = ::Google::Cloud::ResourceManager::V3::ListTagKeysResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_tag_keys_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::ServiceStub.stub :transcode_list_tag_keys_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_tag_keys_client_stub do
        # Create client
        client = ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_tag_keys({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_tag_keys parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_tag_keys ::Google::Cloud::ResourceManager::V3::ListTagKeysRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_tag_keys({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_tag_keys(::Google::Cloud::ResourceManager::V3::ListTagKeysRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_tag_keys_client_stub.call_count
      end
    end
  end

  def test_get_tag_key
    # Create test objects.
    client_result = ::Google::Cloud::ResourceManager::V3::TagKey.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_tag_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::ServiceStub.stub :transcode_get_tag_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_tag_key_client_stub do
        # Create client
        client = ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_tag_key({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_tag_key name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_tag_key ::Google::Cloud::ResourceManager::V3::GetTagKeyRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_tag_key({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_tag_key(::Google::Cloud::ResourceManager::V3::GetTagKeyRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_tag_key_client_stub.call_count
      end
    end
  end

  def test_get_namespaced_tag_key
    # Create test objects.
    client_result = ::Google::Cloud::ResourceManager::V3::TagKey.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_namespaced_tag_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::ServiceStub.stub :transcode_get_namespaced_tag_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_namespaced_tag_key_client_stub do
        # Create client
        client = ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_namespaced_tag_key({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_namespaced_tag_key name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_namespaced_tag_key ::Google::Cloud::ResourceManager::V3::GetNamespacedTagKeyRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_namespaced_tag_key({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_namespaced_tag_key(::Google::Cloud::ResourceManager::V3::GetNamespacedTagKeyRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_namespaced_tag_key_client_stub.call_count
      end
    end
  end

  def test_create_tag_key
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    tag_key = {}
    validate_only = true

    create_tag_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::ServiceStub.stub :transcode_create_tag_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_tag_key_client_stub do
        # Create client
        client = ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_tag_key({ tag_key: tag_key, validate_only: validate_only }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_tag_key tag_key: tag_key, validate_only: validate_only do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_tag_key ::Google::Cloud::ResourceManager::V3::CreateTagKeyRequest.new(tag_key: tag_key, validate_only: validate_only) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_tag_key({ tag_key: tag_key, validate_only: validate_only }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_tag_key(::Google::Cloud::ResourceManager::V3::CreateTagKeyRequest.new(tag_key: tag_key, validate_only: validate_only), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_tag_key_client_stub.call_count
      end
    end
  end

  def test_update_tag_key
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    tag_key = {}
    update_mask = {}
    validate_only = true

    update_tag_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::ServiceStub.stub :transcode_update_tag_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_tag_key_client_stub do
        # Create client
        client = ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_tag_key({ tag_key: tag_key, update_mask: update_mask, validate_only: validate_only }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_tag_key tag_key: tag_key, update_mask: update_mask, validate_only: validate_only do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_tag_key ::Google::Cloud::ResourceManager::V3::UpdateTagKeyRequest.new(tag_key: tag_key, update_mask: update_mask, validate_only: validate_only) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_tag_key({ tag_key: tag_key, update_mask: update_mask, validate_only: validate_only }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_tag_key(::Google::Cloud::ResourceManager::V3::UpdateTagKeyRequest.new(tag_key: tag_key, update_mask: update_mask, validate_only: validate_only), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_tag_key_client_stub.call_count
      end
    end
  end

  def test_delete_tag_key
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    validate_only = true
    etag = "hello world"

    delete_tag_key_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::ServiceStub.stub :transcode_delete_tag_key_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_tag_key_client_stub do
        # Create client
        client = ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_tag_key({ name: name, validate_only: validate_only, etag: etag }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_tag_key name: name, validate_only: validate_only, etag: etag do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_tag_key ::Google::Cloud::ResourceManager::V3::DeleteTagKeyRequest.new(name: name, validate_only: validate_only, etag: etag) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_tag_key({ name: name, validate_only: validate_only, etag: etag }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_tag_key(::Google::Cloud::ResourceManager::V3::DeleteTagKeyRequest.new(name: name, validate_only: validate_only, etag: etag), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_tag_key_client_stub.call_count
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

    get_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::ServiceStub.stub :transcode_get_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::Client.new do |config|
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

  def test_set_iam_policy
    # Create test objects.
    client_result = ::Google::Iam::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    policy = {}
    update_mask = {}

    set_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::ServiceStub.stub :transcode_set_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::Client.new do |config|
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

  def test_test_iam_permissions
    # Create test objects.
    client_result = ::Google::Iam::V1::TestIamPermissionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    permissions = ["hello world"]

    test_iam_permissions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::ServiceStub.stub :transcode_test_iam_permissions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, test_iam_permissions_client_stub do
        # Create client
        client = ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::Client.new do |config|
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
      client = ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::ResourceManager::V3::TagKeys::Rest::Client::Configuration, config
  end
end
