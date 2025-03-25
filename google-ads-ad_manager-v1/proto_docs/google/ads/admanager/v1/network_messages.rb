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


module Google
  module Ads
    module AdManager
      module V1
        # The Network resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the Network.
        #     Format: networks/\\{network_code}
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. Display name for Network.
        # @!attribute [r] network_code
        #   @return [::String]
        #     Output only. Network Code.
        # @!attribute [r] property_code
        #   @return [::String]
        #     Output only. Property code.
        # @!attribute [r] time_zone
        #   @return [::String]
        #     Output only. Time zone associated with the delivery of orders and
        #     reporting.
        # @!attribute [r] currency_code
        #   @return [::String]
        #     Output only. Primary currency code, in ISO-4217 format.
        # @!attribute [rw] secondary_currency_codes
        #   @return [::Array<::String>]
        #     Optional. Currency codes that can be used as an alternative to the primary
        #     currency code for trafficking Line Items.
        # @!attribute [r] effective_root_ad_unit
        #   @return [::String]
        #     Output only. Top most [Ad Unit](google.ads.admanager.v1.AdUnit) to which
        #     descendant Ad Units can be added.
        #     Format: networks/\\{network_code}/adUnit/\\{ad_unit_id}
        # @!attribute [r] test_network
        #   @return [::Boolean]
        #     Output only. Whether this is a test network.
        # @!attribute [r] network_id
        #   @return [::Integer]
        #     Output only. Network ID.
        class Network
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
