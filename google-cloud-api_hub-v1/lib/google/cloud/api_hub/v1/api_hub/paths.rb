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
    module ApiHub
      module V1
        module ApiHub
          # Path helper methods for the ApiHub API.
          module Paths
            ##
            # Create a fully-qualified Api resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/apis/{api}`
            #
            # @param project [String]
            # @param location [String]
            # @param api [String]
            #
            # @return [::String]
            def api_path project:, location:, api:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/apis/#{api}"
            end

            ##
            # Create a fully-qualified ApiOperation resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/apis/{api}/versions/{version}/operations/{operation}`
            #
            # @param project [String]
            # @param location [String]
            # @param api [String]
            # @param version [String]
            # @param operation [String]
            #
            # @return [::String]
            def api_operation_path project:, location:, api:, version:, operation:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "api cannot contain /" if api.to_s.include? "/"
              raise ::ArgumentError, "version cannot contain /" if version.to_s.include? "/"

              "projects/#{project}/locations/#{location}/apis/#{api}/versions/#{version}/operations/#{operation}"
            end

            ##
            # Create a fully-qualified Attribute resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/attributes/{attribute}`
            #
            # @param project [String]
            # @param location [String]
            # @param attribute [String]
            #
            # @return [::String]
            def attribute_path project:, location:, attribute:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/attributes/#{attribute}"
            end

            ##
            # Create a fully-qualified Definition resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/apis/{api}/versions/{version}/definitions/{definition}`
            #
            # @param project [String]
            # @param location [String]
            # @param api [String]
            # @param version [String]
            # @param definition [String]
            #
            # @return [::String]
            def definition_path project:, location:, api:, version:, definition:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "api cannot contain /" if api.to_s.include? "/"
              raise ::ArgumentError, "version cannot contain /" if version.to_s.include? "/"

              "projects/#{project}/locations/#{location}/apis/#{api}/versions/#{version}/definitions/#{definition}"
            end

            ##
            # Create a fully-qualified Deployment resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/deployments/{deployment}`
            #
            # @param project [String]
            # @param location [String]
            # @param deployment [String]
            #
            # @return [::String]
            def deployment_path project:, location:, deployment:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/deployments/#{deployment}"
            end

            ##
            # Create a fully-qualified ExternalApi resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/externalApis/{external_api}`
            #
            # @param project [String]
            # @param location [String]
            # @param external_api [String]
            #
            # @return [::String]
            def external_api_path project:, location:, external_api:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/externalApis/#{external_api}"
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Spec resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}`
            #
            # @param project [String]
            # @param location [String]
            # @param api [String]
            # @param version [String]
            # @param spec [String]
            #
            # @return [::String]
            def spec_path project:, location:, api:, version:, spec:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "api cannot contain /" if api.to_s.include? "/"
              raise ::ArgumentError, "version cannot contain /" if version.to_s.include? "/"

              "projects/#{project}/locations/#{location}/apis/#{api}/versions/#{version}/specs/#{spec}"
            end

            ##
            # Create a fully-qualified Version resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
            #
            # @param project [String]
            # @param location [String]
            # @param api [String]
            # @param version [String]
            #
            # @return [::String]
            def version_path project:, location:, api:, version:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "api cannot contain /" if api.to_s.include? "/"

              "projects/#{project}/locations/#{location}/apis/#{api}/versions/#{version}"
            end

            extend self
          end
        end
      end
    end
  end
end
