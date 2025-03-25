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

require "google/cloud/bigquery/datapolicies/v1/datapolicy_pb"
require "google/cloud/bigquery/datapolicies/v1/datapolicy_services_pb"
require "google/cloud/bigquery/data_policies/v1/data_policy_service"

class ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::ClientTest < Minitest::Test
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

  def test_create_data_policy
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    data_policy = {}

    create_data_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_data_policy, name
      assert_kind_of ::Google::Cloud::Bigquery::DataPolicies::V1::CreateDataPolicyRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicy), request["data_policy"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_data_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_data_policy({ parent: parent, data_policy: data_policy }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_data_policy parent: parent, data_policy: data_policy do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_data_policy ::Google::Cloud::Bigquery::DataPolicies::V1::CreateDataPolicyRequest.new(parent: parent, data_policy: data_policy) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_data_policy({ parent: parent, data_policy: data_policy }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_data_policy(::Google::Cloud::Bigquery::DataPolicies::V1::CreateDataPolicyRequest.new(parent: parent, data_policy: data_policy), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_data_policy_client_stub.call_rpc_count
    end
  end

  def test_update_data_policy
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    data_policy = {}
    update_mask = {}

    update_data_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_data_policy, name
      assert_kind_of ::Google::Cloud::Bigquery::DataPolicies::V1::UpdateDataPolicyRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicy), request["data_policy"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_data_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_data_policy({ data_policy: data_policy, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_data_policy data_policy: data_policy, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_data_policy ::Google::Cloud::Bigquery::DataPolicies::V1::UpdateDataPolicyRequest.new(data_policy: data_policy, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_data_policy({ data_policy: data_policy, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_data_policy(::Google::Cloud::Bigquery::DataPolicies::V1::UpdateDataPolicyRequest.new(data_policy: data_policy, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_data_policy_client_stub.call_rpc_count
    end
  end

  def test_rename_data_policy
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    new_data_policy_id = "hello world"

    rename_data_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :rename_data_policy, name
      assert_kind_of ::Google::Cloud::Bigquery::DataPolicies::V1::RenameDataPolicyRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["new_data_policy_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, rename_data_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.rename_data_policy({ name: name, new_data_policy_id: new_data_policy_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.rename_data_policy name: name, new_data_policy_id: new_data_policy_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.rename_data_policy ::Google::Cloud::Bigquery::DataPolicies::V1::RenameDataPolicyRequest.new(name: name, new_data_policy_id: new_data_policy_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.rename_data_policy({ name: name, new_data_policy_id: new_data_policy_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.rename_data_policy(::Google::Cloud::Bigquery::DataPolicies::V1::RenameDataPolicyRequest.new(name: name, new_data_policy_id: new_data_policy_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, rename_data_policy_client_stub.call_rpc_count
    end
  end

  def test_delete_data_policy
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_data_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_data_policy, name
      assert_kind_of ::Google::Cloud::Bigquery::DataPolicies::V1::DeleteDataPolicyRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_data_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_data_policy({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_data_policy name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_data_policy ::Google::Cloud::Bigquery::DataPolicies::V1::DeleteDataPolicyRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_data_policy({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_data_policy(::Google::Cloud::Bigquery::DataPolicies::V1::DeleteDataPolicyRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_data_policy_client_stub.call_rpc_count
    end
  end

  def test_get_data_policy
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_data_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_data_policy, name
      assert_kind_of ::Google::Cloud::Bigquery::DataPolicies::V1::GetDataPolicyRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_data_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_data_policy({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_data_policy name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_data_policy ::Google::Cloud::Bigquery::DataPolicies::V1::GetDataPolicyRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_data_policy({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_data_policy(::Google::Cloud::Bigquery::DataPolicies::V1::GetDataPolicyRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_data_policy_client_stub.call_rpc_count
    end
  end

  def test_list_data_policies
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::DataPolicies::V1::ListDataPoliciesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_data_policies_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_data_policies, name
      assert_kind_of ::Google::Cloud::Bigquery::DataPolicies::V1::ListDataPoliciesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_data_policies_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_data_policies({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_data_policies parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_data_policies ::Google::Cloud::Bigquery::DataPolicies::V1::ListDataPoliciesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_data_policies({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_data_policies(::Google::Cloud::Bigquery::DataPolicies::V1::ListDataPoliciesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_data_policies_client_stub.call_rpc_count
    end
  end

  def test_get_iam_policy
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    options = {}

    get_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_iam_policy, name
      assert_kind_of ::Google::Iam::V1::GetIamPolicyRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1::GetPolicyOptions), request["options"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_iam_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_iam_policy({ resource: resource, options: options }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_iam_policy resource: resource, options: options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_iam_policy ::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_iam_policy({ resource: resource, options: options }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_iam_policy(::Google::Iam::V1::GetIamPolicyRequest.new(resource: resource, options: options), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_set_iam_policy
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::Policy.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    policy = {}
    update_mask = {}

    set_iam_policy_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :set_iam_policy, name
      assert_kind_of ::Google::Iam::V1::SetIamPolicyRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Iam::V1::Policy), request["policy"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, set_iam_policy_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.set_iam_policy resource: resource, policy: policy, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.set_iam_policy ::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.set_iam_policy({ resource: resource, policy: policy, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.set_iam_policy(::Google::Iam::V1::SetIamPolicyRequest.new(resource: resource, policy: policy, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, set_iam_policy_client_stub.call_rpc_count
    end
  end

  def test_test_iam_permissions
    # Create GRPC objects.
    grpc_response = ::Google::Iam::V1::TestIamPermissionsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    resource = "hello world"
    permissions = ["hello world"]

    test_iam_permissions_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :test_iam_permissions, name
      assert_kind_of ::Google::Iam::V1::TestIamPermissionsRequest, request
      assert_equal "hello world", request["resource"]
      assert_equal ["hello world"], request["permissions"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, test_iam_permissions_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.test_iam_permissions({ resource: resource, permissions: permissions }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.test_iam_permissions resource: resource, permissions: permissions do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.test_iam_permissions ::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.test_iam_permissions({ resource: resource, permissions: permissions }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.test_iam_permissions(::Google::Iam::V1::TestIamPermissionsRequest.new(resource: resource, permissions: permissions), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, test_iam_permissions_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Bigquery::DataPolicies::V1::DataPolicyService::Client::Configuration, config
  end
end
