# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "google/cloud/dialogflow/v2/knowledge_base_pb"
require "google/cloud/dialogflow/v2/knowledge_base_services_pb"
require "google/cloud/dialogflow/v2/knowledge_bases"

class ::Google::Cloud::Dialogflow::V2::KnowledgeBases::ClientTest < Minitest::Test
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

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_list_knowledge_bases
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::ListKnowledgeBasesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_knowledge_bases_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_knowledge_bases, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ListKnowledgeBasesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_knowledge_bases_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_knowledge_bases({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_knowledge_bases parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_knowledge_bases ::Google::Cloud::Dialogflow::V2::ListKnowledgeBasesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_knowledge_bases({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_knowledge_bases(::Google::Cloud::Dialogflow::V2::ListKnowledgeBasesRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_knowledge_bases_client_stub.call_rpc_count
    end
  end

  def test_get_knowledge_base
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::KnowledgeBase.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_knowledge_base_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_knowledge_base, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::GetKnowledgeBaseRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_knowledge_base_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_knowledge_base({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_knowledge_base name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_knowledge_base ::Google::Cloud::Dialogflow::V2::GetKnowledgeBaseRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_knowledge_base({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_knowledge_base(::Google::Cloud::Dialogflow::V2::GetKnowledgeBaseRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_knowledge_base_client_stub.call_rpc_count
    end
  end

  def test_create_knowledge_base
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::KnowledgeBase.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    knowledge_base = {}

    create_knowledge_base_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_knowledge_base, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::CreateKnowledgeBaseRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::KnowledgeBase), request["knowledge_base"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_knowledge_base_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_knowledge_base({ parent: parent, knowledge_base: knowledge_base }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_knowledge_base parent: parent, knowledge_base: knowledge_base do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_knowledge_base ::Google::Cloud::Dialogflow::V2::CreateKnowledgeBaseRequest.new(parent: parent, knowledge_base: knowledge_base) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_knowledge_base({ parent: parent, knowledge_base: knowledge_base }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_knowledge_base(::Google::Cloud::Dialogflow::V2::CreateKnowledgeBaseRequest.new(parent: parent, knowledge_base: knowledge_base), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_knowledge_base_client_stub.call_rpc_count
    end
  end

  def test_delete_knowledge_base
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    force = true

    delete_knowledge_base_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_knowledge_base, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::DeleteKnowledgeBaseRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["force"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_knowledge_base_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_knowledge_base({ name: name, force: force }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_knowledge_base name: name, force: force do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_knowledge_base ::Google::Cloud::Dialogflow::V2::DeleteKnowledgeBaseRequest.new(name: name, force: force) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_knowledge_base({ name: name, force: force }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_knowledge_base(::Google::Cloud::Dialogflow::V2::DeleteKnowledgeBaseRequest.new(name: name, force: force), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_knowledge_base_client_stub.call_rpc_count
    end
  end

  def test_update_knowledge_base
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::KnowledgeBase.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    knowledge_base = {}
    update_mask = {}

    update_knowledge_base_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_knowledge_base, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::UpdateKnowledgeBaseRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::KnowledgeBase), request["knowledge_base"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_knowledge_base_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_knowledge_base({ knowledge_base: knowledge_base, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_knowledge_base knowledge_base: knowledge_base, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_knowledge_base ::Google::Cloud::Dialogflow::V2::UpdateKnowledgeBaseRequest.new(knowledge_base: knowledge_base, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_knowledge_base({ knowledge_base: knowledge_base, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_knowledge_base(::Google::Cloud::Dialogflow::V2::UpdateKnowledgeBaseRequest.new(knowledge_base: knowledge_base, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_knowledge_base_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::V2::KnowledgeBases::Client::Configuration, config
  end
end
