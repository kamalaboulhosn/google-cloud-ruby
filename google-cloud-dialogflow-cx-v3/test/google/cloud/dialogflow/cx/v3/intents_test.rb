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

require "google/cloud/dialogflow/cx/v3/intent_pb"
require "google/cloud/dialogflow/cx/v3/intent_services_pb"
require "google/cloud/dialogflow/cx/v3/intents"

class ::Google::Cloud::Dialogflow::CX::V3::Intents::ClientTest < Minitest::Test
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

  def test_list_intents
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::ListIntentsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    language_code = "hello world"
    intent_view = :INTENT_VIEW_UNSPECIFIED
    page_size = 42
    page_token = "hello world"

    list_intents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_intents, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::ListIntentsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["language_code"]
      assert_equal :INTENT_VIEW_UNSPECIFIED, request["intent_view"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_intents_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_intents({ parent: parent, language_code: language_code, intent_view: intent_view, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_intents parent: parent, language_code: language_code, intent_view: intent_view, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_intents ::Google::Cloud::Dialogflow::CX::V3::ListIntentsRequest.new(parent: parent, language_code: language_code, intent_view: intent_view, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_intents({ parent: parent, language_code: language_code, intent_view: intent_view, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_intents(::Google::Cloud::Dialogflow::CX::V3::ListIntentsRequest.new(parent: parent, language_code: language_code, intent_view: intent_view, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_intents_client_stub.call_rpc_count
    end
  end

  def test_get_intent
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::Intent.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    language_code = "hello world"

    get_intent_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_intent, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::GetIntentRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_intent_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_intent({ name: name, language_code: language_code }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_intent name: name, language_code: language_code do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_intent ::Google::Cloud::Dialogflow::CX::V3::GetIntentRequest.new(name: name, language_code: language_code) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_intent({ name: name, language_code: language_code }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_intent(::Google::Cloud::Dialogflow::CX::V3::GetIntentRequest.new(name: name, language_code: language_code), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_intent_client_stub.call_rpc_count
    end
  end

  def test_create_intent
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::Intent.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    intent = {}
    language_code = "hello world"

    create_intent_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_intent, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::CreateIntentRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::Intent), request["intent"]
      assert_equal "hello world", request["language_code"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_intent_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_intent({ parent: parent, intent: intent, language_code: language_code }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_intent parent: parent, intent: intent, language_code: language_code do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_intent ::Google::Cloud::Dialogflow::CX::V3::CreateIntentRequest.new(parent: parent, intent: intent, language_code: language_code) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_intent({ parent: parent, intent: intent, language_code: language_code }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_intent(::Google::Cloud::Dialogflow::CX::V3::CreateIntentRequest.new(parent: parent, intent: intent, language_code: language_code), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_intent_client_stub.call_rpc_count
    end
  end

  def test_update_intent
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::Intent.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    intent = {}
    language_code = "hello world"
    update_mask = {}

    update_intent_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_intent, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::UpdateIntentRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::Intent), request["intent"]
      assert_equal "hello world", request["language_code"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_intent_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_intent({ intent: intent, language_code: language_code, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_intent intent: intent, language_code: language_code, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_intent ::Google::Cloud::Dialogflow::CX::V3::UpdateIntentRequest.new(intent: intent, language_code: language_code, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_intent({ intent: intent, language_code: language_code, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_intent(::Google::Cloud::Dialogflow::CX::V3::UpdateIntentRequest.new(intent: intent, language_code: language_code, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_intent_client_stub.call_rpc_count
    end
  end

  def test_delete_intent
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_intent_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_intent, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::DeleteIntentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_intent_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_intent({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_intent name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_intent ::Google::Cloud::Dialogflow::CX::V3::DeleteIntentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_intent({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_intent(::Google::Cloud::Dialogflow::CX::V3::DeleteIntentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_intent_client_stub.call_rpc_count
    end
  end

  def test_import_intents
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    intents_uri = "hello world"
    merge_option = :MERGE_OPTION_UNSPECIFIED

    import_intents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :import_intents, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::ImportIntentsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["intents_uri"]
      assert_equal :intents_uri, request.intents
      assert_equal :MERGE_OPTION_UNSPECIFIED, request["merge_option"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, import_intents_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.import_intents({ parent: parent, intents_uri: intents_uri, merge_option: merge_option }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.import_intents parent: parent, intents_uri: intents_uri, merge_option: merge_option do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.import_intents ::Google::Cloud::Dialogflow::CX::V3::ImportIntentsRequest.new(parent: parent, intents_uri: intents_uri, merge_option: merge_option) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.import_intents({ parent: parent, intents_uri: intents_uri, merge_option: merge_option }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.import_intents(::Google::Cloud::Dialogflow::CX::V3::ImportIntentsRequest.new(parent: parent, intents_uri: intents_uri, merge_option: merge_option), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, import_intents_client_stub.call_rpc_count
    end
  end

  def test_export_intents
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    intents = ["hello world"]
    intents_uri = "hello world"
    data_format = :DATA_FORMAT_UNSPECIFIED

    export_intents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :export_intents, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::ExportIntentsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal ["hello world"], request["intents"]
      assert_equal "hello world", request["intents_uri"]
      assert_equal :intents_uri, request.destination
      assert_equal :DATA_FORMAT_UNSPECIFIED, request["data_format"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, export_intents_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.export_intents({ parent: parent, intents: intents, intents_uri: intents_uri, data_format: data_format }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.export_intents parent: parent, intents: intents, intents_uri: intents_uri, data_format: data_format do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.export_intents ::Google::Cloud::Dialogflow::CX::V3::ExportIntentsRequest.new(parent: parent, intents: intents, intents_uri: intents_uri, data_format: data_format) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.export_intents({ parent: parent, intents: intents, intents_uri: intents_uri, data_format: data_format }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.export_intents(::Google::Cloud::Dialogflow::CX::V3::ExportIntentsRequest.new(parent: parent, intents: intents, intents_uri: intents_uri, data_format: data_format), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, export_intents_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::Intents::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::CX::V3::Intents::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::Intents::Operations, client.operations_client
  end
end
