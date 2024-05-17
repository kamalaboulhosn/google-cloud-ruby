# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "google/shopping/merchant/lfp/v1beta/lfp_sale_service"

class ::Google::Shopping::Merchant::Lfp::V1beta::LfpSaleService::ClientPathsTest < Minitest::Test
  class DummyStub
    def endpoint
      "endpoint.example.com"
    end
  
    def universe_domain
      "example.com"
    end
  end

  def test_lfp_sale_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Shopping::Merchant::Lfp::V1beta::LfpSaleService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.lfp_sale_path account: "value0", sale: "value1"
      assert_equal "accounts/value0/lfpSales/value1", path
    end
  end
end
