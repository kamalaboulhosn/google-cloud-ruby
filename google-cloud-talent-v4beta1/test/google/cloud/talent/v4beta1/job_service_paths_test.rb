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

require "google/cloud/talent/v4beta1/job_service"

class ::Google::Cloud::Talent::V4beta1::JobService::ClientPathsTest < Minitest::Test
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

  def test_company_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Talent::V4beta1::JobService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.company_path project: "value0", tenant: "value1", company: "value2"
      assert_equal "projects/value0/tenants/value1/companies/value2", path

      path = client.company_path project: "value0", company: "value1"
      assert_equal "projects/value0/companies/value1", path
    end
  end

  def test_job_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Talent::V4beta1::JobService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.job_path project: "value0", tenant: "value1", job: "value2"
      assert_equal "projects/value0/tenants/value1/jobs/value2", path

      path = client.job_path project: "value0", job: "value1"
      assert_equal "projects/value0/jobs/value1", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Talent::V4beta1::JobService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end

  def test_tenant_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Talent::V4beta1::JobService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.tenant_path project: "value0", tenant: "value1"
      assert_equal "projects/value0/tenants/value1", path
    end
  end
end
