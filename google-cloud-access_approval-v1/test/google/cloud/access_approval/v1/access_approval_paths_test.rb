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

require "google/cloud/access_approval/v1/access_approval"

class ::Google::Cloud::AccessApproval::V1::AccessApproval::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end
  end

  def test_access_approval_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.access_approval_settings_path project: "value0"
      assert_equal "projects/value0/accessApprovalSettings", path

      path = client.access_approval_settings_path folder: "value0"
      assert_equal "folders/value0/accessApprovalSettings", path

      path = client.access_approval_settings_path organization: "value0"
      assert_equal "organizations/value0/accessApprovalSettings", path
    end
  end

  def test_approval_request_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.approval_request_path project: "value0", approval_request: "value1"
      assert_equal "projects/value0/approvalRequests/value1", path

      path = client.approval_request_path folder: "value0", approval_request: "value1"
      assert_equal "folders/value0/approvalRequests/value1", path

      path = client.approval_request_path organization: "value0", approval_request: "value1"
      assert_equal "organizations/value0/approvalRequests/value1", path
    end
  end

  def test_folder_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.folder_path folder: "value0"
      assert_equal "folders/value0", path
    end
  end

  def test_organization_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.organization_path organization: "value0"
      assert_equal "organizations/value0", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::AccessApproval::V1::AccessApproval::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end
end
