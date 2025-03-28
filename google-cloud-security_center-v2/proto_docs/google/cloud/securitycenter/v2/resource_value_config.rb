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
  module Cloud
    module SecurityCenter
      module V2
        # A resource value configuration (RVC) is a mapping configuration of user's
        # resources to resource values. Used in Attack path simulations.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Name for the resource value configuration
        # @!attribute [rw] resource_value
        #   @return [::Google::Cloud::SecurityCenter::V2::ResourceValue]
        #     Resource value level this expression represents
        #     Only required when there is no Sensitive Data Protection mapping in the
        #     request
        # @!attribute [rw] tag_values
        #   @return [::Array<::String>]
        #     Tag values combined with `AND` to check against.
        #     For Google Cloud resources, they are tag value IDs in the form of
        #     "tagValues/123". Example: `[ "tagValues/123", "tagValues/456",
        #     "tagValues/789" ]`
        #     https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing
        # @!attribute [rw] resource_type
        #   @return [::String]
        #     Apply resource_value only to resources that match resource_type.
        #     resource_type will be checked with `AND` of other resources.
        #     For example, "storage.googleapis.com/Bucket" with resource_value "HIGH"
        #     will apply "HIGH" value only to "storage.googleapis.com/Bucket" resources.
        # @!attribute [rw] scope
        #   @return [::String]
        #     Project or folder to scope this configuration to.
        #     For example, "project/456" would apply this configuration only to resources
        #     in "project/456" scope and will be checked with `AND` of other resources.
        # @!attribute [rw] resource_labels_selector
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     List of resource labels to search for, evaluated with `AND`.
        #     For example, "resource_labels_selector": \\{"key": "value", "env": "prod"}
        #     will match resources with labels "key": "value" `AND` "env":
        #     "prod"
        #     https://cloud.google.com/resource-manager/docs/creating-managing-labels
        # @!attribute [rw] description
        #   @return [::String]
        #     Description of the resource value configuration.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp this resource value configuration was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp this resource value configuration was last updated.
        # @!attribute [rw] cloud_provider
        #   @return [::Google::Cloud::SecurityCenter::V2::CloudProvider]
        #     Cloud provider this configuration applies to
        # @!attribute [rw] sensitive_data_protection_mapping
        #   @return [::Google::Cloud::SecurityCenter::V2::ResourceValueConfig::SensitiveDataProtectionMapping]
        #     A mapping of the sensitivity on Sensitive Data Protection finding to
        #     resource values. This mapping can only be used in combination with a
        #     resource_type that is related to BigQuery, e.g.
        #     "bigquery.googleapis.com/Dataset".
        class ResourceValueConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Resource value mapping for Sensitive Data Protection findings
          # If any of these mappings have a resource value that is not unspecified,
          # the resource_value field will be ignored when reading this configuration.
          # @!attribute [rw] high_sensitivity_mapping
          #   @return [::Google::Cloud::SecurityCenter::V2::ResourceValue]
          #     Resource value mapping for high-sensitivity Sensitive Data Protection
          #     findings
          # @!attribute [rw] medium_sensitivity_mapping
          #   @return [::Google::Cloud::SecurityCenter::V2::ResourceValue]
          #     Resource value mapping for medium-sensitivity Sensitive Data Protection
          #     findings
          class SensitiveDataProtectionMapping
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class ResourceLabelsSelectorEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Value enum to map to a resource
        module ResourceValue
          # Unspecific value
          RESOURCE_VALUE_UNSPECIFIED = 0

          # High resource value
          HIGH = 1

          # Medium resource value
          MEDIUM = 2

          # Low resource value
          LOW = 3

          # No resource value, e.g. ignore these resources
          NONE = 4
        end
      end
    end
  end
end
