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
    module CloudControlsPartner
      module V1beta
        # The permissions granted to the partner for a workload
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Format:
        #     organizations/\\{organization}/locations/\\{location}/customers/\\{customer}/workloads/\\{workload}/partnerPermissions
        # @!attribute [rw] partner_permissions
        #   @return [::Array<::Google::Cloud::CloudControlsPartner::V1beta::PartnerPermissions::Permission>]
        #     The partner permissions granted for the workload
        class PartnerPermissions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          module Permission
            # Unspecified partner permission
            PERMISSION_UNSPECIFIED = 0

            # Permission for Access Transparency and emergency logs
            ACCESS_TRANSPARENCY_AND_EMERGENCY_ACCESS_LOGS = 1

            # Permission for Assured Workloads monitoring violations
            ASSURED_WORKLOADS_MONITORING = 2

            # Permission for Access Approval requests
            ACCESS_APPROVAL_REQUESTS = 3

            # Permission for External Key Manager connection status
            ASSURED_WORKLOADS_EKM_CONNECTION_STATUS = 4
          end
        end

        # Request for getting the partner permissions granted for a workload
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the resource to get in the format:
        #     organizations/\\{organization}/locations/\\{location}/customers/\\{customer}/workloads/\\{workload}/partnerPermissions
        class GetPartnerPermissionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
