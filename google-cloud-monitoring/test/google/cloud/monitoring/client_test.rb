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
require "google/cloud/monitoring"
require "gapic/common"
require "gapic/grpc"

class Google::Cloud::Monitoring::ClientConstructionMinitest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_alert_policy_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Monitoring.alert_policy_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Monitoring::V3::AlertPolicyService::Client, client
    end
  end

  def test_group_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Monitoring.group_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Monitoring::V3::GroupService::Client, client
    end
  end

  def test_metric_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Monitoring.metric_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Monitoring::V3::MetricService::Client, client
    end
  end

  def test_notification_channel_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Monitoring.notification_channel_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Monitoring::V3::NotificationChannelService::Client, client
    end
  end

  def test_query_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Monitoring.query_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Monitoring::V3::QueryService::Client, client
    end
  end

  def test_service_monitoring_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Monitoring.service_monitoring_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Monitoring::V3::ServiceMonitoringService::Client, client
    end
  end

  def test_snooze_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Monitoring.snooze_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Monitoring::V3::SnoozeService::Client, client
    end
  end

  def test_uptime_check_service_grpc
    Gapic::ServiceStub.stub :new, DummyStub.new do
      grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
      client = Google::Cloud::Monitoring.uptime_check_service do |config|
        config.credentials = grpc_channel
      end
      assert_kind_of Google::Cloud::Monitoring::V3::UptimeCheckService::Client, client
    end
  end
end
