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
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          # Request message for the `GetRegion` method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the region to retrieve.
          #     Format: `accounts/{account}/regions/{region}`
          class GetRegionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `CreateRegion` method.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The account to create a region for.
          #     Format: `accounts/{account}`
          # @!attribute [rw] region_id
          #   @return [::String]
          #     Required. The identifier for the region, unique over all regions of the
          #     same account.
          # @!attribute [rw] region
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::Region]
          #     Required. The region to create.
          class CreateRegionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `UpdateRegion` method.
          # @!attribute [rw] region
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::Region]
          #     Required. The updated region.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Optional. The comma-separated field mask indicating the fields to update.
          #     Example:
          #     `"displayName,postalCodeArea.regionCode"`.
          class UpdateRegionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `DeleteRegion` method.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. The name of the region to delete.
          #     Format: `accounts/{account}/regions/{region}`
          class DeleteRegionRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Request message for the `ListRegions` method.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The account to list regions for.
          #     Format: `accounts/{account}`
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Optional. The maximum number of regions to return. The service may return
          #     fewer than this value.
          #     If unspecified, at most 50 regions will be returned.
          #     The maximum value is 1000; values above 1000 will be coerced to 1000.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     Optional. A page token, received from a previous `ListRegions` call.
          #     Provide this to retrieve the subsequent page.
          #
          #     When paginating, all other parameters provided to `ListRegions` must
          #     match the call that provided the page token.
          class ListRegionsRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Response message for the `ListRegions` method.
          # @!attribute [rw] regions
          #   @return [::Array<::Google::Shopping::Merchant::Accounts::V1beta::Region>]
          #     The regions from the specified merchant.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     A token, which can be sent as `page_token` to retrieve the next page.
          #     If this field is omitted, there are no subsequent pages.
          class ListRegionsResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a geographic region that you can use as a target with both the
          # `RegionalInventory` and `ShippingSettings` services. You can define regions
          # as collections of either postal codes or, in some countries, using predefined
          # geotargets. For more information, see [Set up regions
          # ](https://support.google.com/merchants/answer/7410946#zippy=%2Ccreate-a-new-region)
          # for more information.
          # @!attribute [rw] name
          #   @return [::String]
          #     Identifier. The resource name of the region.
          #     Format: `accounts/{account}/regions/{region}`
          # @!attribute [rw] display_name
          #   @return [::String]
          #     Optional. The display name of the region.
          # @!attribute [rw] postal_code_area
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::Region::PostalCodeArea]
          #     Optional. A list of postal codes that defines the region area.
          # @!attribute [rw] geotarget_area
          #   @return [::Google::Shopping::Merchant::Accounts::V1beta::Region::GeoTargetArea]
          #     Optional. A list of geotargets that defines the region area.
          # @!attribute [r] regional_inventory_eligible
          #   @return [::Google::Protobuf::BoolValue]
          #     Output only. Indicates if the region is eligible for use in the Regional
          #     Inventory configuration.
          # @!attribute [r] shipping_eligible
          #   @return [::Google::Protobuf::BoolValue]
          #     Output only. Indicates if the region is eligible for use in the Shipping
          #     Services configuration.
          class Region
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # A list of postal codes that defines the region area.
            # Note: All regions defined using postal codes are accessible through the
            # account's `ShippingSettings.postalCodeGroups` resource.
            # @!attribute [rw] region_code
            #   @return [::String]
            #     Required. [CLDR territory
            #     code](http://www.unicode.org/repos/cldr/tags/latest/common/main/en.xml)
            #     or the country the postal code group applies to.
            # @!attribute [rw] postal_codes
            #   @return [::Array<::Google::Shopping::Merchant::Accounts::V1beta::Region::PostalCodeArea::PostalCodeRange>]
            #     Required. A range of postal codes.
            class PostalCodeArea
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # A range of postal codes that defines the region area.
              # @!attribute [rw] begin
              #   @return [::String]
              #     Required. A postal code or a pattern of the form prefix* denoting the
              #     inclusive lower bound of the range defining the area. Examples values:
              #     `94108`, `9410*`, `9*`.
              # @!attribute [rw] end
              #   @return [::String]
              #     Optional. A postal code or a pattern of the form `prefix*` denoting the
              #     inclusive upper bound of the range defining the area. It must have the
              #     same length as postalCodeRangeBegin: if postalCodeRangeBegin is a
              #     postal code then postalCodeRangeEnd must be a postal code too; if
              #     postalCodeRangeBegin is a pattern then postalCodeRangeEnd must be a
              #     pattern with the same prefix length. Optional: if not set, then the
              #     area is defined as being all the postal codes matching
              #     postalCodeRangeBegin.
              class PostalCodeRange
                include ::Google::Protobuf::MessageExts
                extend ::Google::Protobuf::MessageExts::ClassMethods
              end
            end

            # A list of geotargets that defines the region area.
            # @!attribute [rw] geotarget_criteria_ids
            #   @return [::Array<::Integer>]
            #     Required. A non-empty list of [location
            #     IDs](https://developers.google.com/adwords/api/docs/appendix/geotargeting).
            #     They must all be of the same location type (for example, state).
            class GeoTargetArea
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end
      end
    end
  end
end
