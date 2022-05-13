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

require "google/cloud/vm_migration/v1/vm_migration"

class ::Google::Cloud::VMMigration::V1::VMMigration::ClientPathsTest < Minitest::Test
  def test_clone_job_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::VMMigration::V1::VMMigration::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.clone_job_path project: "value0", location: "value1", source: "value2", migrating_vm: "value3", clone_job: "value4"
      assert_equal "projects/value0/locations/value1/sources/value2/migratingVms/value3/cloneJobs/value4", path
    end
  end

  def test_cutover_job_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::VMMigration::V1::VMMigration::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.cutover_job_path project: "value0", location: "value1", source: "value2", migrating_vm: "value3", cutover_job: "value4"
      assert_equal "projects/value0/locations/value1/sources/value2/migratingVms/value3/cutoverJobs/value4", path
    end
  end

  def test_datacenter_connector_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::VMMigration::V1::VMMigration::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.datacenter_connector_path project: "value0", location: "value1", source: "value2", datacenter_connector: "value3"
      assert_equal "projects/value0/locations/value1/sources/value2/datacenterConnectors/value3", path
    end
  end

  def test_group_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::VMMigration::V1::VMMigration::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.group_path project: "value0", location: "value1", group: "value2"
      assert_equal "projects/value0/locations/value1/groups/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::VMMigration::V1::VMMigration::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_migrating_vm_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::VMMigration::V1::VMMigration::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.migrating_vm_path project: "value0", location: "value1", source: "value2", migrating_vm: "value3"
      assert_equal "projects/value0/locations/value1/sources/value2/migratingVms/value3", path
    end
  end

  def test_source_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::VMMigration::V1::VMMigration::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.source_path project: "value0", location: "value1", source: "value2"
      assert_equal "projects/value0/locations/value1/sources/value2", path
    end
  end

  def test_target_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::VMMigration::V1::VMMigration::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.target_project_path project: "value0", location: "value1", target_project: "value2"
      assert_equal "projects/value0/locations/value1/targetProjects/value2", path
    end
  end

  def test_utilization_report_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::VMMigration::V1::VMMigration::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.utilization_report_path project: "value0", location: "value1", source: "value2", utilization_report: "value3"
      assert_equal "projects/value0/locations/value1/sources/value2/utilizationReports/value3", path
    end
  end
end