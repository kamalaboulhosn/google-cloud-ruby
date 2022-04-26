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

require "google/monitoring/v3/group_service_pb"
require "google/monitoring/v3/group_service_services_pb"
require "google/cloud/monitoring/v3/group_service"

class ::Google::Cloud::Monitoring::V3::GroupService::ClientTest < Minitest::Test
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

  def test_list_groups
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::ListGroupsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    children_of_group = "hello world"
    page_size = 42
    page_token = "hello world"

    list_groups_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_groups, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::ListGroupsRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["children_of_group"]
      assert_equal :children_of_group, request.filter
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_groups_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::GroupService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_groups({ name: name, children_of_group: children_of_group, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_groups name: name, children_of_group: children_of_group, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_groups ::Google::Cloud::Monitoring::V3::ListGroupsRequest.new(name: name, children_of_group: children_of_group, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_groups({ name: name, children_of_group: children_of_group, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_groups(::Google::Cloud::Monitoring::V3::ListGroupsRequest.new(name: name, children_of_group: children_of_group, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_groups_client_stub.call_rpc_count
    end
  end

  def test_get_group
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::Group.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_group, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::GetGroupRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_group_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::GroupService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_group({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_group name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_group ::Google::Cloud::Monitoring::V3::GetGroupRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_group({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_group(::Google::Cloud::Monitoring::V3::GetGroupRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_group_client_stub.call_rpc_count
    end
  end

  def test_create_group
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::Group.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    group = {}
    validate_only = true

    create_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_group, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::CreateGroupRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Monitoring::V3::Group), request["group"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_group_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::GroupService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_group({ name: name, group: group, validate_only: validate_only }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_group name: name, group: group, validate_only: validate_only do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_group ::Google::Cloud::Monitoring::V3::CreateGroupRequest.new(name: name, group: group, validate_only: validate_only) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_group({ name: name, group: group, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_group(::Google::Cloud::Monitoring::V3::CreateGroupRequest.new(name: name, group: group, validate_only: validate_only), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_group_client_stub.call_rpc_count
    end
  end

  def test_update_group
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::Group.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    group = {}
    validate_only = true

    update_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_group, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::UpdateGroupRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Monitoring::V3::Group), request["group"]
      assert_equal true, request["validate_only"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_group_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::GroupService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_group({ group: group, validate_only: validate_only }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_group group: group, validate_only: validate_only do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_group ::Google::Cloud::Monitoring::V3::UpdateGroupRequest.new(group: group, validate_only: validate_only) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_group({ group: group, validate_only: validate_only }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_group(::Google::Cloud::Monitoring::V3::UpdateGroupRequest.new(group: group, validate_only: validate_only), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_group_client_stub.call_rpc_count
    end
  end

  def test_delete_group
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    recursive = true

    delete_group_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_group, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::DeleteGroupRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["recursive"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_group_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::GroupService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_group({ name: name, recursive: recursive }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_group name: name, recursive: recursive do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_group ::Google::Cloud::Monitoring::V3::DeleteGroupRequest.new(name: name, recursive: recursive) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_group({ name: name, recursive: recursive }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_group(::Google::Cloud::Monitoring::V3::DeleteGroupRequest.new(name: name, recursive: recursive), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_group_client_stub.call_rpc_count
    end
  end

  def test_list_group_members
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Monitoring::V3::ListGroupMembersResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    interval = {}

    list_group_members_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_group_members, name
      assert_kind_of ::Google::Cloud::Monitoring::V3::ListGroupMembersRequest, request
      assert_equal "hello world", request["name"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Monitoring::V3::TimeInterval), request["interval"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_group_members_client_stub do
      # Create client
      client = ::Google::Cloud::Monitoring::V3::GroupService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_group_members({ name: name, page_size: page_size, page_token: page_token, filter: filter, interval: interval }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_group_members name: name, page_size: page_size, page_token: page_token, filter: filter, interval: interval do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_group_members ::Google::Cloud::Monitoring::V3::ListGroupMembersRequest.new(name: name, page_size: page_size, page_token: page_token, filter: filter, interval: interval) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_group_members({ name: name, page_size: page_size, page_token: page_token, filter: filter, interval: interval }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_group_members(::Google::Cloud::Monitoring::V3::ListGroupMembersRequest.new(name: name, page_size: page_size, page_token: page_token, filter: filter, interval: interval), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_group_members_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Monitoring::V3::GroupService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Monitoring::V3::GroupService::Client::Configuration, config
  end
end
