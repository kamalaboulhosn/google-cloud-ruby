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
require "google/cloud/orgpolicy/v2/orgpolicy_pb"
require "google/cloud/org_policy/v2/org_policy/rest"


class ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ClientTest < Minitest::Test
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

  def test_list_constraints
    # Create test objects.
    client_result = ::Google::Cloud::OrgPolicy::V2::ListConstraintsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_constraints_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ServiceStub.stub :transcode_list_constraints_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_constraints_client_stub do
        # Create client
        client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_constraints({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_constraints parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_constraints ::Google::Cloud::OrgPolicy::V2::ListConstraintsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_constraints({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_constraints(::Google::Cloud::OrgPolicy::V2::ListConstraintsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_constraints_client_stub.call_count
      end
    end
  end

  def test_list_policies
    # Create test objects.
    client_result = ::Google::Cloud::OrgPolicy::V2::ListPoliciesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_policies_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ServiceStub.stub :transcode_list_policies_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_policies_client_stub do
        # Create client
        client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_policies({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_policies parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_policies ::Google::Cloud::OrgPolicy::V2::ListPoliciesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_policies({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_policies(::Google::Cloud::OrgPolicy::V2::ListPoliciesRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_policies_client_stub.call_count
      end
    end
  end

  def test_get_policy
    # Create test objects.
    client_result = ::Google::Cloud::OrgPolicy::V2::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ServiceStub.stub :transcode_get_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_policy_client_stub do
        # Create client
        client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_policy({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_policy name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_policy ::Google::Cloud::OrgPolicy::V2::GetPolicyRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_policy({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_policy(::Google::Cloud::OrgPolicy::V2::GetPolicyRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_policy_client_stub.call_count
      end
    end
  end

  def test_get_effective_policy
    # Create test objects.
    client_result = ::Google::Cloud::OrgPolicy::V2::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_effective_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ServiceStub.stub :transcode_get_effective_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_effective_policy_client_stub do
        # Create client
        client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_effective_policy({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_effective_policy name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_effective_policy ::Google::Cloud::OrgPolicy::V2::GetEffectivePolicyRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_effective_policy({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_effective_policy(::Google::Cloud::OrgPolicy::V2::GetEffectivePolicyRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_effective_policy_client_stub.call_count
      end
    end
  end

  def test_create_policy
    # Create test objects.
    client_result = ::Google::Cloud::OrgPolicy::V2::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    policy = {}

    create_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ServiceStub.stub :transcode_create_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_policy_client_stub do
        # Create client
        client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_policy({ parent: parent, policy: policy }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_policy parent: parent, policy: policy do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_policy ::Google::Cloud::OrgPolicy::V2::CreatePolicyRequest.new(parent: parent, policy: policy) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_policy({ parent: parent, policy: policy }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_policy(::Google::Cloud::OrgPolicy::V2::CreatePolicyRequest.new(parent: parent, policy: policy), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_policy_client_stub.call_count
      end
    end
  end

  def test_update_policy
    # Create test objects.
    client_result = ::Google::Cloud::OrgPolicy::V2::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    policy = {}
    update_mask = {}

    update_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ServiceStub.stub :transcode_update_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_policy_client_stub do
        # Create client
        client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_policy({ policy: policy, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_policy policy: policy, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_policy ::Google::Cloud::OrgPolicy::V2::UpdatePolicyRequest.new(policy: policy, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_policy({ policy: policy, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_policy(::Google::Cloud::OrgPolicy::V2::UpdatePolicyRequest.new(policy: policy, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_policy_client_stub.call_count
      end
    end
  end

  def test_delete_policy
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"

    delete_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ServiceStub.stub :transcode_delete_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_policy_client_stub do
        # Create client
        client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_policy({ name: name, etag: etag }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_policy name: name, etag: etag do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_policy ::Google::Cloud::OrgPolicy::V2::DeletePolicyRequest.new(name: name, etag: etag) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_policy({ name: name, etag: etag }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_policy(::Google::Cloud::OrgPolicy::V2::DeletePolicyRequest.new(name: name, etag: etag), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_policy_client_stub.call_count
      end
    end
  end

  def test_create_custom_constraint
    # Create test objects.
    client_result = ::Google::Cloud::OrgPolicy::V2::CustomConstraint.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    custom_constraint = {}

    create_custom_constraint_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ServiceStub.stub :transcode_create_custom_constraint_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_custom_constraint_client_stub do
        # Create client
        client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_custom_constraint({ parent: parent, custom_constraint: custom_constraint }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_custom_constraint parent: parent, custom_constraint: custom_constraint do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_custom_constraint ::Google::Cloud::OrgPolicy::V2::CreateCustomConstraintRequest.new(parent: parent, custom_constraint: custom_constraint) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_custom_constraint({ parent: parent, custom_constraint: custom_constraint }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_custom_constraint(::Google::Cloud::OrgPolicy::V2::CreateCustomConstraintRequest.new(parent: parent, custom_constraint: custom_constraint), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_custom_constraint_client_stub.call_count
      end
    end
  end

  def test_update_custom_constraint
    # Create test objects.
    client_result = ::Google::Cloud::OrgPolicy::V2::CustomConstraint.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    custom_constraint = {}

    update_custom_constraint_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ServiceStub.stub :transcode_update_custom_constraint_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_custom_constraint_client_stub do
        # Create client
        client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_custom_constraint({ custom_constraint: custom_constraint }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_custom_constraint custom_constraint: custom_constraint do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_custom_constraint ::Google::Cloud::OrgPolicy::V2::UpdateCustomConstraintRequest.new(custom_constraint: custom_constraint) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_custom_constraint({ custom_constraint: custom_constraint }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_custom_constraint(::Google::Cloud::OrgPolicy::V2::UpdateCustomConstraintRequest.new(custom_constraint: custom_constraint), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_custom_constraint_client_stub.call_count
      end
    end
  end

  def test_get_custom_constraint
    # Create test objects.
    client_result = ::Google::Cloud::OrgPolicy::V2::CustomConstraint.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_custom_constraint_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ServiceStub.stub :transcode_get_custom_constraint_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_custom_constraint_client_stub do
        # Create client
        client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_custom_constraint({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_custom_constraint name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_custom_constraint ::Google::Cloud::OrgPolicy::V2::GetCustomConstraintRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_custom_constraint({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_custom_constraint(::Google::Cloud::OrgPolicy::V2::GetCustomConstraintRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_custom_constraint_client_stub.call_count
      end
    end
  end

  def test_list_custom_constraints
    # Create test objects.
    client_result = ::Google::Cloud::OrgPolicy::V2::ListCustomConstraintsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_custom_constraints_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ServiceStub.stub :transcode_list_custom_constraints_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_custom_constraints_client_stub do
        # Create client
        client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_custom_constraints({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_custom_constraints parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_custom_constraints ::Google::Cloud::OrgPolicy::V2::ListCustomConstraintsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_custom_constraints({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_custom_constraints(::Google::Cloud::OrgPolicy::V2::ListCustomConstraintsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_custom_constraints_client_stub.call_count
      end
    end
  end

  def test_delete_custom_constraint
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_custom_constraint_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::ServiceStub.stub :transcode_delete_custom_constraint_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_custom_constraint_client_stub do
        # Create client
        client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_custom_constraint({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_custom_constraint name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_custom_constraint ::Google::Cloud::OrgPolicy::V2::DeleteCustomConstraintRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_custom_constraint({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_custom_constraint(::Google::Cloud::OrgPolicy::V2::DeleteCustomConstraintRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_custom_constraint_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::OrgPolicy::V2::OrgPolicy::Rest::Client::Configuration, config
  end
end
