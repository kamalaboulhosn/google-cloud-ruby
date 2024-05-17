# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "google/cloud/logging/v2/config_service"

class ::Google::Cloud::Logging::V2::ConfigService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end
  end

  def test_billing_account_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.billing_account_path billing_account: "value0"
      assert_equal "billingAccounts/value0", path
    end
  end

  def test_billing_account_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.billing_account_location_path billing_account: "value0", location: "value1"
      assert_equal "billingAccounts/value0/locations/value1", path
    end
  end

  def test_cmek_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.cmek_settings_path project: "value0"
      assert_equal "projects/value0/cmekSettings", path

      path = client.cmek_settings_path organization: "value0"
      assert_equal "organizations/value0/cmekSettings", path

      path = client.cmek_settings_path folder: "value0"
      assert_equal "folders/value0/cmekSettings", path

      path = client.cmek_settings_path billing_account: "value0"
      assert_equal "billingAccounts/value0/cmekSettings", path
    end
  end

  def test_folder_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.folder_path folder: "value0"
      assert_equal "folders/value0", path
    end
  end

  def test_folder_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.folder_location_path folder: "value0", location: "value1"
      assert_equal "folders/value0/locations/value1", path
    end
  end

  def test_link_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.link_path project: "value0", location: "value1", bucket: "value2", link: "value3"
      assert_equal "projects/value0/locations/value1/buckets/value2/links/value3", path

      path = client.link_path organization: "value0", location: "value1", bucket: "value2", link: "value3"
      assert_equal "organizations/value0/locations/value1/buckets/value2/links/value3", path

      path = client.link_path folder: "value0", location: "value1", bucket: "value2", link: "value3"
      assert_equal "folders/value0/locations/value1/buckets/value2/links/value3", path

      path = client.link_path billing_account: "value0", location: "value1", bucket: "value2", link: "value3"
      assert_equal "billingAccounts/value0/locations/value1/buckets/value2/links/value3", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_log_bucket_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.log_bucket_path project: "value0", location: "value1", bucket: "value2"
      assert_equal "projects/value0/locations/value1/buckets/value2", path

      path = client.log_bucket_path organization: "value0", location: "value1", bucket: "value2"
      assert_equal "organizations/value0/locations/value1/buckets/value2", path

      path = client.log_bucket_path folder: "value0", location: "value1", bucket: "value2"
      assert_equal "folders/value0/locations/value1/buckets/value2", path

      path = client.log_bucket_path billing_account: "value0", location: "value1", bucket: "value2"
      assert_equal "billingAccounts/value0/locations/value1/buckets/value2", path
    end
  end

  def test_log_exclusion_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.log_exclusion_path project: "value0", exclusion: "value1"
      assert_equal "projects/value0/exclusions/value1", path

      path = client.log_exclusion_path organization: "value0", exclusion: "value1"
      assert_equal "organizations/value0/exclusions/value1", path

      path = client.log_exclusion_path folder: "value0", exclusion: "value1"
      assert_equal "folders/value0/exclusions/value1", path

      path = client.log_exclusion_path billing_account: "value0", exclusion: "value1"
      assert_equal "billingAccounts/value0/exclusions/value1", path
    end
  end

  def test_log_sink_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.log_sink_path project: "value0", sink: "value1"
      assert_equal "projects/value0/sinks/value1", path

      path = client.log_sink_path organization: "value0", sink: "value1"
      assert_equal "organizations/value0/sinks/value1", path

      path = client.log_sink_path folder: "value0", sink: "value1"
      assert_equal "folders/value0/sinks/value1", path

      path = client.log_sink_path billing_account: "value0", sink: "value1"
      assert_equal "billingAccounts/value0/sinks/value1", path
    end
  end

  def test_log_view_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.log_view_path project: "value0", location: "value1", bucket: "value2", view: "value3"
      assert_equal "projects/value0/locations/value1/buckets/value2/views/value3", path

      path = client.log_view_path organization: "value0", location: "value1", bucket: "value2", view: "value3"
      assert_equal "organizations/value0/locations/value1/buckets/value2/views/value3", path

      path = client.log_view_path folder: "value0", location: "value1", bucket: "value2", view: "value3"
      assert_equal "folders/value0/locations/value1/buckets/value2/views/value3", path

      path = client.log_view_path billing_account: "value0", location: "value1", bucket: "value2", view: "value3"
      assert_equal "billingAccounts/value0/locations/value1/buckets/value2/views/value3", path
    end
  end

  def test_organization_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.organization_path organization: "value0"
      assert_equal "organizations/value0", path
    end
  end

  def test_organization_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.organization_location_path organization: "value0", location: "value1"
      assert_equal "organizations/value0/locations/value1", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end

  def test_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Logging::V2::ConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.settings_path project: "value0"
      assert_equal "projects/value0/settings", path

      path = client.settings_path organization: "value0"
      assert_equal "organizations/value0/settings", path

      path = client.settings_path folder: "value0"
      assert_equal "folders/value0/settings", path

      path = client.settings_path billing_account: "value0"
      assert_equal "billingAccounts/value0/settings", path
    end
  end
end
