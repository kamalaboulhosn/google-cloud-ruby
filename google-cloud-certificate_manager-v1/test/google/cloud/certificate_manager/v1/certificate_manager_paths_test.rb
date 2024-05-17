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

require "google/cloud/certificate_manager/v1/certificate_manager"

class ::Google::Cloud::CertificateManager::V1::CertificateManager::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end
  end

  def test_ca_pool_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CertificateManager::V1::CertificateManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.ca_pool_path project: "value0", location: "value1", ca_pool: "value2"
      assert_equal "projects/value0/locations/value1/caPools/value2", path
    end
  end

  def test_certificate_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CertificateManager::V1::CertificateManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.certificate_path project: "value0", location: "value1", certificate: "value2"
      assert_equal "projects/value0/locations/value1/certificates/value2", path
    end
  end

  def test_certificate_issuance_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CertificateManager::V1::CertificateManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.certificate_issuance_config_path project: "value0", location: "value1", certificate_issuance_config: "value2"
      assert_equal "projects/value0/locations/value1/certificateIssuanceConfigs/value2", path
    end
  end

  def test_certificate_map_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CertificateManager::V1::CertificateManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.certificate_map_path project: "value0", location: "value1", certificate_map: "value2"
      assert_equal "projects/value0/locations/value1/certificateMaps/value2", path
    end
  end

  def test_certificate_map_entry_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CertificateManager::V1::CertificateManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.certificate_map_entry_path project: "value0", location: "value1", certificate_map: "value2", certificate_map_entry: "value3"
      assert_equal "projects/value0/locations/value1/certificateMaps/value2/certificateMapEntries/value3", path
    end
  end

  def test_dns_authorization_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CertificateManager::V1::CertificateManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.dns_authorization_path project: "value0", location: "value1", dns_authorization: "value2"
      assert_equal "projects/value0/locations/value1/dnsAuthorizations/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CertificateManager::V1::CertificateManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_trust_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::CertificateManager::V1::CertificateManager::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.trust_config_path project: "value0", location: "value1", trust_config: "value2"
      assert_equal "projects/value0/locations/value1/trustConfigs/value2", path
    end
  end
end
