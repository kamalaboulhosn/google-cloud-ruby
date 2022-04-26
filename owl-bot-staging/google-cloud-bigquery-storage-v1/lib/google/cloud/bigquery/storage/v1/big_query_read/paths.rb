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


module Google
  module Cloud
    module Bigquery
      module Storage
        module V1
          module BigQueryRead
            # Path helper methods for the BigQueryRead API.
            module Paths
              ##
              # Create a fully-qualified Project resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}`
              #
              # @param project [String]
              #
              # @return [::String]
              def project_path project:
                "projects/#{project}"
              end

              ##
              # Create a fully-qualified ReadSession resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/sessions/{session}`
              #
              # @param project [String]
              # @param location [String]
              # @param session [String]
              #
              # @return [::String]
              def read_session_path project:, location:, session:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                "projects/#{project}/locations/#{location}/sessions/#{session}"
              end

              ##
              # Create a fully-qualified ReadStream resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/locations/{location}/sessions/{session}/streams/{stream}`
              #
              # @param project [String]
              # @param location [String]
              # @param session [String]
              # @param stream [String]
              #
              # @return [::String]
              def read_stream_path project:, location:, session:, stream:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
                raise ::ArgumentError, "session cannot contain /" if session.to_s.include? "/"

                "projects/#{project}/locations/#{location}/sessions/#{session}/streams/#{stream}"
              end

              ##
              # Create a fully-qualified Table resource string.
              #
              # The resource will be in the following format:
              #
              # `projects/{project}/datasets/{dataset}/tables/{table}`
              #
              # @param project [String]
              # @param dataset [String]
              # @param table [String]
              #
              # @return [::String]
              def table_path project:, dataset:, table:
                raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                raise ::ArgumentError, "dataset cannot contain /" if dataset.to_s.include? "/"

                "projects/#{project}/datasets/#{dataset}/tables/#{table}"
              end

              extend self
            end
          end
        end
      end
    end
  end
end
