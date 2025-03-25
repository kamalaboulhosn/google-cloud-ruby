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

require "google/analytics/data/v1beta/analytics_data"

class ::Google::Analytics::Data::V1beta::AnalyticsData::ClientPathsTest < Minitest::Test
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

  def test_audience_export_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.audience_export_path property: "value0", audience_export: "value1"
      assert_equal "properties/value0/audienceExports/value1", path
    end
  end

  def test_metadata_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.metadata_path property: "value0"
      assert_equal "properties/value0/metadata", path
    end
  end

  def test_property_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Analytics::Data::V1beta::AnalyticsData::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.property_path property: "value0"
      assert_equal "properties/value0", path
    end
  end
end
