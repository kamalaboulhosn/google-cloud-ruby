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

require "google/cloud/dialogflow/v2/conversation_profile_pb"
require "google/cloud/dialogflow/v2/conversation_profile_services_pb"
require "google/cloud/dialogflow/v2/conversation_profiles"

class ::Google::Cloud::Dialogflow::V2::ConversationProfiles::ClientTest < Minitest::Test
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

  def test_list_conversation_profiles
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::ListConversationProfilesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_conversation_profiles_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_conversation_profiles, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ListConversationProfilesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_conversation_profiles_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_conversation_profiles({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_conversation_profiles parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_conversation_profiles ::Google::Cloud::Dialogflow::V2::ListConversationProfilesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_conversation_profiles({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_conversation_profiles(::Google::Cloud::Dialogflow::V2::ListConversationProfilesRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_conversation_profiles_client_stub.call_rpc_count
    end
  end

  def test_get_conversation_profile
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::ConversationProfile.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_conversation_profile_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_conversation_profile, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::GetConversationProfileRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_conversation_profile_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_conversation_profile({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_conversation_profile name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_conversation_profile ::Google::Cloud::Dialogflow::V2::GetConversationProfileRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_conversation_profile({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_conversation_profile(::Google::Cloud::Dialogflow::V2::GetConversationProfileRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_conversation_profile_client_stub.call_rpc_count
    end
  end

  def test_create_conversation_profile
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::ConversationProfile.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    conversation_profile = {}

    create_conversation_profile_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_conversation_profile, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::CreateConversationProfileRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::ConversationProfile), request["conversation_profile"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_conversation_profile_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_conversation_profile({ parent: parent, conversation_profile: conversation_profile }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_conversation_profile parent: parent, conversation_profile: conversation_profile do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_conversation_profile ::Google::Cloud::Dialogflow::V2::CreateConversationProfileRequest.new(parent: parent, conversation_profile: conversation_profile) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_conversation_profile({ parent: parent, conversation_profile: conversation_profile }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_conversation_profile(::Google::Cloud::Dialogflow::V2::CreateConversationProfileRequest.new(parent: parent, conversation_profile: conversation_profile), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_conversation_profile_client_stub.call_rpc_count
    end
  end

  def test_update_conversation_profile
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::ConversationProfile.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    conversation_profile = {}
    update_mask = {}

    update_conversation_profile_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_conversation_profile, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::UpdateConversationProfileRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::ConversationProfile), request["conversation_profile"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_conversation_profile_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_conversation_profile({ conversation_profile: conversation_profile, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_conversation_profile conversation_profile: conversation_profile, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_conversation_profile ::Google::Cloud::Dialogflow::V2::UpdateConversationProfileRequest.new(conversation_profile: conversation_profile, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_conversation_profile({ conversation_profile: conversation_profile, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_conversation_profile(::Google::Cloud::Dialogflow::V2::UpdateConversationProfileRequest.new(conversation_profile: conversation_profile, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_conversation_profile_client_stub.call_rpc_count
    end
  end

  def test_delete_conversation_profile
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_conversation_profile_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_conversation_profile, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::DeleteConversationProfileRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_conversation_profile_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_conversation_profile({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_conversation_profile name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_conversation_profile ::Google::Cloud::Dialogflow::V2::DeleteConversationProfileRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_conversation_profile({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_conversation_profile(::Google::Cloud::Dialogflow::V2::DeleteConversationProfileRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_conversation_profile_client_stub.call_rpc_count
    end
  end

  def test_set_suggestion_feature_config
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    conversation_profile = "hello world"
    participant_role = :ROLE_UNSPECIFIED
    suggestion_feature_config = {}

    set_suggestion_feature_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :set_suggestion_feature_config, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::SetSuggestionFeatureConfigRequest, request
      assert_equal "hello world", request["conversation_profile"]
      assert_equal :ROLE_UNSPECIFIED, request["participant_role"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::HumanAgentAssistantConfig::SuggestionFeatureConfig), request["suggestion_feature_config"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, set_suggestion_feature_config_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.set_suggestion_feature_config({ conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_config: suggestion_feature_config }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.set_suggestion_feature_config conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_config: suggestion_feature_config do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.set_suggestion_feature_config ::Google::Cloud::Dialogflow::V2::SetSuggestionFeatureConfigRequest.new(conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_config: suggestion_feature_config) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.set_suggestion_feature_config({ conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_config: suggestion_feature_config }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.set_suggestion_feature_config(::Google::Cloud::Dialogflow::V2::SetSuggestionFeatureConfigRequest.new(conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_config: suggestion_feature_config), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, set_suggestion_feature_config_client_stub.call_rpc_count
    end
  end

  def test_clear_suggestion_feature_config
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    conversation_profile = "hello world"
    participant_role = :ROLE_UNSPECIFIED
    suggestion_feature_type = :TYPE_UNSPECIFIED

    clear_suggestion_feature_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :clear_suggestion_feature_config, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ClearSuggestionFeatureConfigRequest, request
      assert_equal "hello world", request["conversation_profile"]
      assert_equal :ROLE_UNSPECIFIED, request["participant_role"]
      assert_equal :TYPE_UNSPECIFIED, request["suggestion_feature_type"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, clear_suggestion_feature_config_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.clear_suggestion_feature_config({ conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_type: suggestion_feature_type }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.clear_suggestion_feature_config conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_type: suggestion_feature_type do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.clear_suggestion_feature_config ::Google::Cloud::Dialogflow::V2::ClearSuggestionFeatureConfigRequest.new(conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_type: suggestion_feature_type) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.clear_suggestion_feature_config({ conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_type: suggestion_feature_type }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.clear_suggestion_feature_config(::Google::Cloud::Dialogflow::V2::ClearSuggestionFeatureConfigRequest.new(conversation_profile: conversation_profile, participant_role: participant_role, suggestion_feature_type: suggestion_feature_type), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, clear_suggestion_feature_config_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Dialogflow::V2::ConversationProfiles::Operations, client.operations_client
  end
end