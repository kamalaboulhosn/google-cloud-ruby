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
    module DiscoveryEngine
      module V1beta
        # DataStore captures global settings and configs at the DataStore level.
        # @!attribute [rw] name
        #   @return [::String]
        #     Immutable. The full resource name of the data store.
        #     Format:
        #     `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`.
        #
        #     This field must be a UTF-8 encoded string with a length limit of 1024
        #     characters.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The data store display name.
        #
        #     This field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] industry_vertical
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::IndustryVertical]
        #     Immutable. The industry vertical that the data store registers.
        # @!attribute [rw] solution_types
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::SolutionType>]
        #     The solutions that the data store enrolls. Available solutions for each
        #     {::Google::Cloud::DiscoveryEngine::V1beta::DataStore#industry_vertical industry_vertical}:
        #
        #     * `MEDIA`: `SOLUTION_TYPE_RECOMMENDATION` and `SOLUTION_TYPE_SEARCH`.
        #     * `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is automatically enrolled. Other
        #       solutions cannot be enrolled.
        # @!attribute [r] default_schema_id
        #   @return [::String]
        #     Output only. The id of the default
        #     {::Google::Cloud::DiscoveryEngine::V1beta::Schema Schema} asscociated to this
        #     data store.
        # @!attribute [rw] content_config
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::DataStore::ContentConfig]
        #     Immutable. The content config of the data store. If this field is unset,
        #     the server behavior defaults to
        #     {::Google::Cloud::DiscoveryEngine::V1beta::DataStore::ContentConfig::NO_CONTENT ContentConfig.NO_CONTENT}.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Timestamp the
        #     {::Google::Cloud::DiscoveryEngine::V1beta::DataStore DataStore} was created at.
        # @!attribute [rw] document_processing_config
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::DocumentProcessingConfig]
        #     Configuration for Document understanding and enrichment.
        # @!attribute [rw] starting_schema
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::Schema]
        #     The start schema to use for this
        #     {::Google::Cloud::DiscoveryEngine::V1beta::DataStore DataStore} when
        #     provisioning it. If unset, a default vertical specialized schema will be
        #     used.
        #
        #     This field is only used by [CreateDataStore][] API, and will be ignored if
        #     used in other APIs. This field will be omitted from all API responses
        #     including [CreateDataStore][] API. To retrieve a schema of a
        #     {::Google::Cloud::DiscoveryEngine::V1beta::DataStore DataStore}, use
        #     {::Google::Cloud::DiscoveryEngine::V1beta::SchemaService::Client#get_schema SchemaService.GetSchema}
        #     API instead.
        #
        #     The provided schema will be validated against certain rules on schema.
        #     Learn more from [this
        #     doc](https://cloud.google.com/generative-ai-app-builder/docs/provide-schema).
        class DataStore
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Content config of the data store.
          module ContentConfig
            # Default value.
            CONTENT_CONFIG_UNSPECIFIED = 0

            # Only contains documents without any
            # {::Google::Cloud::DiscoveryEngine::V1beta::Document#content Document.content}.
            NO_CONTENT = 1

            # Only contains documents with
            # {::Google::Cloud::DiscoveryEngine::V1beta::Document#content Document.content}.
            CONTENT_REQUIRED = 2

            # The data store is used for public website search.
            PUBLIC_WEBSITE = 3
          end
        end
      end
    end
  end
end
