# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module Talent
      module V4beta1
        module ProfileService
          # Path helper methods for the ProfileService API.
          module Paths
            ##
            # Create a fully-qualified Profile resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/tenants/{tenant}/profiles/{profile}`
            #
            # @param project [String]
            # @param tenant [String]
            # @param profile [String]
            #
            # @return [::String]
            def profile_path project:, tenant:, profile:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "tenant cannot contain /" if tenant.to_s.include? "/"

              "projects/#{project}/tenants/#{tenant}/profiles/#{profile}"
            end

            ##
            # Create a fully-qualified Tenant resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/tenants/{tenant}`
            #
            # @param project [String]
            # @param tenant [String]
            #
            # @return [::String]
            def tenant_path project:, tenant:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/tenants/#{tenant}"
            end

            extend self
          end
        end
      end
    end
  end
end
