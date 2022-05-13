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

require "google/cloud/security/private_ca/v1beta1/certificate_authority_service"

class ::Google::Cloud::Security::PrivateCA::V1beta1::CertificateAuthorityService::ClientPathsTest < Minitest::Test
  def test_certificate_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Security::PrivateCA::V1beta1::CertificateAuthorityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.certificate_path project: "value0", location: "value1", certificate_authority: "value2", certificate: "value3"
      assert_equal "projects/value0/locations/value1/certificateAuthorities/value2/certificates/value3", path
    end
  end

  def test_certificate_authority_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Security::PrivateCA::V1beta1::CertificateAuthorityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.certificate_authority_path project: "value0", location: "value1", certificate_authority: "value2"
      assert_equal "projects/value0/locations/value1/certificateAuthorities/value2", path
    end
  end

  def test_certificate_revocation_list_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Security::PrivateCA::V1beta1::CertificateAuthorityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.certificate_revocation_list_path project: "value0", location: "value1", certificate_authority: "value2", certificate_revocation_list: "value3"
      assert_equal "projects/value0/locations/value1/certificateAuthorities/value2/certificateRevocationLists/value3", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Security::PrivateCA::V1beta1::CertificateAuthorityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_reusable_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Security::PrivateCA::V1beta1::CertificateAuthorityService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.reusable_config_path project: "value0", location: "value1", reusable_config: "value2"
      assert_equal "projects/value0/locations/value1/reusableConfigs/value2", path
    end
  end
end