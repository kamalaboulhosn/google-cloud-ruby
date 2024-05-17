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

require "google/cloud/document_ai/v1/document_processor_service"

class ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end
  end

  def test_evaluation_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.evaluation_path project: "value0", location: "value1", processor: "value2", processor_version: "value3", evaluation: "value4"
      assert_equal "projects/value0/locations/value1/processors/value2/processorVersions/value3/evaluations/value4", path
    end
  end

  def test_human_review_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.human_review_config_path project: "value0", location: "value1", processor: "value2"
      assert_equal "projects/value0/locations/value1/processors/value2/humanReviewConfig", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_processor_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.processor_path project: "value0", location: "value1", processor: "value2"
      assert_equal "projects/value0/locations/value1/processors/value2", path
    end
  end

  def test_processor_type_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.processor_type_path project: "value0", location: "value1", processor_type: "value2"
      assert_equal "projects/value0/locations/value1/processorTypes/value2", path
    end
  end

  def test_processor_version_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.processor_version_path project: "value0", location: "value1", processor: "value2", processor_version: "value3"
      assert_equal "projects/value0/locations/value1/processors/value2/processorVersions/value3", path
    end
  end
end
