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
    module Monitoring
      module Dashboard
        module V1
          # A widget that displays a list of incidents
          # @!attribute [rw] monitored_resources
          #   @return [::Array<::Google::Api::MonitoredResource>]
          #     Optional. The monitored resource for which incidents are listed.
          #     The resource doesn't need to be fully specified. That is, you can specify
          #     the resource type but not the values of the resource labels.
          #     The resource type and labels are used for filtering.
          # @!attribute [rw] policy_names
          #   @return [::Array<::String>]
          #     Optional. A list of alert policy names to filter the incident list by.
          #     Don't include the project ID prefix in the policy name. For
          #     example, use `alertPolicies/utilization`.
          class IncidentList
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
