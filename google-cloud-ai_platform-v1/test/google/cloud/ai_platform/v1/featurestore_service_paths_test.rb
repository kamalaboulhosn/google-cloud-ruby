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

require "google/cloud/ai_platform/v1/featurestore_service"

class ::Google::Cloud::AIPlatform::V1::FeaturestoreService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end
  end

  def test_entity_type_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::FeaturestoreService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.entity_type_path project: "value0", location: "value1", featurestore: "value2", entity_type: "value3"
      assert_equal "projects/value0/locations/value1/featurestores/value2/entityTypes/value3", path
    end
  end

  def test_feature_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::FeaturestoreService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.feature_path project: "value0", location: "value1", featurestore: "value2", entity_type: "value3", feature: "value4"
      assert_equal "projects/value0/locations/value1/featurestores/value2/entityTypes/value3/features/value4", path

      path = client.feature_path project: "value0", location: "value1", feature_group: "value2", feature: "value3"
      assert_equal "projects/value0/locations/value1/featureGroups/value2/features/value3", path
    end
  end

  def test_feature_group_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::FeaturestoreService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.feature_group_path project: "value0", location: "value1", feature_group: "value2"
      assert_equal "projects/value0/locations/value1/featureGroups/value2", path
    end
  end

  def test_featurestore_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::FeaturestoreService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.featurestore_path project: "value0", location: "value1", featurestore: "value2"
      assert_equal "projects/value0/locations/value1/featurestores/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AIPlatform::V1::FeaturestoreService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end
end
