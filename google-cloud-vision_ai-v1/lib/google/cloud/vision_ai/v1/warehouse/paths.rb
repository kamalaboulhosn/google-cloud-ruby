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
    module VisionAI
      module V1
        module Warehouse
          # Path helper methods for the Warehouse API.
          module Paths
            ##
            # Create a fully-qualified Annotation resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project_number}/locations/{location}/corpora/{corpus}/assets/{asset}/annotations/{annotation}`
            #
            # @param project_number [String]
            # @param location [String]
            # @param corpus [String]
            # @param asset [String]
            # @param annotation [String]
            #
            # @return [::String]
            def annotation_path project_number:, location:, corpus:, asset:, annotation:
              raise ::ArgumentError, "project_number cannot contain /" if project_number.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "corpus cannot contain /" if corpus.to_s.include? "/"
              raise ::ArgumentError, "asset cannot contain /" if asset.to_s.include? "/"

              "projects/#{project_number}/locations/#{location}/corpora/#{corpus}/assets/#{asset}/annotations/#{annotation}"
            end

            ##
            # Create a fully-qualified Asset resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project_number}/locations/{location}/corpora/{corpus}/assets/{asset}`
            #
            # @param project_number [String]
            # @param location [String]
            # @param corpus [String]
            # @param asset [String]
            #
            # @return [::String]
            def asset_path project_number:, location:, corpus:, asset:
              raise ::ArgumentError, "project_number cannot contain /" if project_number.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "corpus cannot contain /" if corpus.to_s.include? "/"

              "projects/#{project_number}/locations/#{location}/corpora/#{corpus}/assets/#{asset}"
            end

            ##
            # Create a fully-qualified Collection resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project_number}/locations/{location}/corpora/{corpus}/collections/{collection}`
            #
            # @param project_number [String]
            # @param location [String]
            # @param corpus [String]
            # @param collection [String]
            #
            # @return [::String]
            def collection_path project_number:, location:, corpus:, collection:
              raise ::ArgumentError, "project_number cannot contain /" if project_number.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "corpus cannot contain /" if corpus.to_s.include? "/"

              "projects/#{project_number}/locations/#{location}/corpora/#{corpus}/collections/#{collection}"
            end

            ##
            # Create a fully-qualified Corpus resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project_number}/locations/{location}/corpora/{corpus}`
            #
            # @param project_number [String]
            # @param location [String]
            # @param corpus [String]
            #
            # @return [::String]
            def corpus_path project_number:, location:, corpus:
              raise ::ArgumentError, "project_number cannot contain /" if project_number.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project_number}/locations/#{location}/corpora/#{corpus}"
            end

            ##
            # Create a fully-qualified DataSchema resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project_number}/locations/{location}/corpora/{corpus}/dataSchemas/{data_schema}`
            #
            # @param project_number [String]
            # @param location [String]
            # @param corpus [String]
            # @param data_schema [String]
            #
            # @return [::String]
            def data_schema_path project_number:, location:, corpus:, data_schema:
              raise ::ArgumentError, "project_number cannot contain /" if project_number.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "corpus cannot contain /" if corpus.to_s.include? "/"

              "projects/#{project_number}/locations/#{location}/corpora/#{corpus}/dataSchemas/#{data_schema}"
            end

            ##
            # Create a fully-qualified Index resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project_number}/locations/{location}/corpora/{corpus}/indexes/{index}`
            #
            # @param project_number [String]
            # @param location [String]
            # @param corpus [String]
            # @param index [String]
            #
            # @return [::String]
            def index_path project_number:, location:, corpus:, index:
              raise ::ArgumentError, "project_number cannot contain /" if project_number.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "corpus cannot contain /" if corpus.to_s.include? "/"

              "projects/#{project_number}/locations/#{location}/corpora/#{corpus}/indexes/#{index}"
            end

            ##
            # Create a fully-qualified IndexEndpoint resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/indexEndpoints/{index_endpoint}`
            #
            # @param project [String]
            # @param location [String]
            # @param index_endpoint [String]
            #
            # @return [::String]
            def index_endpoint_path project:, location:, index_endpoint:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/indexEndpoints/#{index_endpoint}"
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
            # Create a fully-qualified SearchConfig resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project_number}/locations/{location}/corpora/{corpus}/searchConfigs/{search_config}`
            #
            # @param project_number [String]
            # @param location [String]
            # @param corpus [String]
            # @param search_config [String]
            #
            # @return [::String]
            def search_config_path project_number:, location:, corpus:, search_config:
              raise ::ArgumentError, "project_number cannot contain /" if project_number.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "corpus cannot contain /" if corpus.to_s.include? "/"

              "projects/#{project_number}/locations/#{location}/corpora/#{corpus}/searchConfigs/#{search_config}"
            end

            ##
            # Create a fully-qualified SearchHypernym resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project_number}/locations/{location}/corpora/{corpus}/searchHypernyms/{search_hypernym}`
            #
            # @param project_number [String]
            # @param location [String]
            # @param corpus [String]
            # @param search_hypernym [String]
            #
            # @return [::String]
            def search_hypernym_path project_number:, location:, corpus:, search_hypernym:
              raise ::ArgumentError, "project_number cannot contain /" if project_number.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "corpus cannot contain /" if corpus.to_s.include? "/"

              "projects/#{project_number}/locations/#{location}/corpora/#{corpus}/searchHypernyms/#{search_hypernym}"
            end

            extend self
          end
        end
      end
    end
  end
end
