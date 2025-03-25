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

require "google/cloud/dialogflow/v2/conversation_models"

class ::Google::Cloud::Dialogflow::V2::ConversationModels::ClientPathsTest < Minitest::Test
  class DummyStub
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

  def test_conversation_dataset_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::ConversationModels::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.conversation_dataset_path project: "value0", location: "value1", conversation_dataset: "value2"
      assert_equal "projects/value0/locations/value1/conversationDatasets/value2", path
    end
  end

  def test_conversation_model_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::ConversationModels::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.conversation_model_path project: "value0", location: "value1", conversation_model: "value2"
      assert_equal "projects/value0/locations/value1/conversationModels/value2", path

      path = client.conversation_model_path project: "value0", conversation_model: "value1"
      assert_equal "projects/value0/conversationModels/value1", path
    end
  end

  def test_conversation_model_evaluation_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::ConversationModels::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.conversation_model_evaluation_path project: "value0", conversation_model: "value1", evaluation: "value2"
      assert_equal "projects/value0/conversationModels/value1/evaluations/value2", path

      path = client.conversation_model_evaluation_path project: "value0", location: "value1", conversation_model: "value2", evaluation: "value3"
      assert_equal "projects/value0/locations/value1/conversationModels/value2/evaluations/value3", path
    end
  end

  def test_document_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::ConversationModels::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.document_path project: "value0", knowledge_base: "value1", document: "value2"
      assert_equal "projects/value0/knowledgeBases/value1/documents/value2", path

      path = client.document_path project: "value0", location: "value1", knowledge_base: "value2", document: "value3"
      assert_equal "projects/value0/locations/value1/knowledgeBases/value2/documents/value3", path
    end
  end
end
