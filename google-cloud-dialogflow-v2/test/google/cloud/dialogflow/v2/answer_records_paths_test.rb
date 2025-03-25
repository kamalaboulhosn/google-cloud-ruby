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

require "google/cloud/dialogflow/v2/answer_records"

class ::Google::Cloud::Dialogflow::V2::AnswerRecords::ClientPathsTest < Minitest::Test
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

  def test_answer_record_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::AnswerRecords::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.answer_record_path project: "value0", answer_record: "value1"
      assert_equal "projects/value0/answerRecords/value1", path

      path = client.answer_record_path project: "value0", location: "value1", answer_record: "value2"
      assert_equal "projects/value0/locations/value1/answerRecords/value2", path
    end
  end

  def test_context_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::AnswerRecords::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.context_path project: "value0", session: "value1", context: "value2"
      assert_equal "projects/value0/agent/sessions/value1/contexts/value2", path

      path = client.context_path project: "value0", environment: "value1", user: "value2", session: "value3", context: "value4"
      assert_equal "projects/value0/agent/environments/value1/users/value2/sessions/value3/contexts/value4", path

      path = client.context_path project: "value0", location: "value1", session: "value2", context: "value3"
      assert_equal "projects/value0/locations/value1/agent/sessions/value2/contexts/value3", path

      path = client.context_path project: "value0", location: "value1", environment: "value2", user: "value3", session: "value4", context: "value5"
      assert_equal "projects/value0/locations/value1/agent/environments/value2/users/value3/sessions/value4/contexts/value5", path
    end
  end

  def test_intent_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::AnswerRecords::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.intent_path project: "value0", intent: "value1"
      assert_equal "projects/value0/agent/intents/value1", path

      path = client.intent_path project: "value0", location: "value1", intent: "value2"
      assert_equal "projects/value0/locations/value1/agent/intents/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::AnswerRecords::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::AnswerRecords::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end
end
