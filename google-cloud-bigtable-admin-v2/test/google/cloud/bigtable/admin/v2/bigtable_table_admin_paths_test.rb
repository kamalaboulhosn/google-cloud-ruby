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

require "google/cloud/bigtable/admin/v2/bigtable_table_admin"

class ::Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end
  end

  def test_authorized_view_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.authorized_view_path project: "value0", instance: "value1", table: "value2", authorized_view: "value3"
      assert_equal "projects/value0/instances/value1/tables/value2/authorizedViews/value3", path
    end
  end

  def test_backup_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.backup_path project: "value0", instance: "value1", cluster: "value2", backup: "value3"
      assert_equal "projects/value0/instances/value1/clusters/value2/backups/value3", path
    end
  end

  def test_cluster_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.cluster_path project: "value0", instance: "value1", cluster: "value2"
      assert_equal "projects/value0/instances/value1/clusters/value2", path
    end
  end

  def test_crypto_key_version_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.crypto_key_version_path project: "value0", location: "value1", key_ring: "value2", crypto_key: "value3", crypto_key_version: "value4"
      assert_equal "projects/value0/locations/value1/keyRings/value2/cryptoKeys/value3/cryptoKeyVersions/value4", path
    end
  end

  def test_instance_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.instance_path project: "value0", instance: "value1"
      assert_equal "projects/value0/instances/value1", path
    end
  end

  def test_snapshot_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.snapshot_path project: "value0", instance: "value1", cluster: "value2", snapshot: "value3"
      assert_equal "projects/value0/instances/value1/clusters/value2/snapshots/value3", path
    end
  end

  def test_table_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Bigtable::Admin::V2::BigtableTableAdmin::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.table_path project: "value0", instance: "value1", table: "value2"
      assert_equal "projects/value0/instances/value1/tables/value2", path
    end
  end
end
