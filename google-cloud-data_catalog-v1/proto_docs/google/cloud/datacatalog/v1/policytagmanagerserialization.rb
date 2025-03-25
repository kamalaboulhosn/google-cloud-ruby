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
    module DataCatalog
      module V1
        # A nested protocol buffer that represents a taxonomy and the hierarchy of its
        # policy tags. Used for taxonomy replacement, import, and
        # export.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. Display name of the taxonomy. At most 200 bytes when encoded in
        #     UTF-8.
        # @!attribute [rw] description
        #   @return [::String]
        #     Description of the serialized taxonomy. At most 2000 bytes when
        #     encoded in UTF-8. If not set, defaults to an empty description.
        # @!attribute [rw] policy_tags
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::SerializedPolicyTag>]
        #     Top level policy tags associated with the taxonomy, if any.
        # @!attribute [rw] activated_policy_types
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::Taxonomy::PolicyType>]
        #     A list of policy types that are activated per taxonomy.
        class SerializedTaxonomy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A nested protocol buffer that represents a policy tag and all its
        # descendants.
        # @!attribute [rw] policy_tag
        #   @return [::String]
        #     Resource name of the policy tag.
        #
        #     This field is ignored when calling `ImportTaxonomies`.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. Display name of the policy tag. At most 200 bytes when encoded
        #     in UTF-8.
        # @!attribute [rw] description
        #   @return [::String]
        #     Description of the serialized policy tag. At most
        #     2000 bytes when encoded in UTF-8. If not set, defaults to an
        #     empty description.
        # @!attribute [rw] child_policy_tags
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::SerializedPolicyTag>]
        #     Children of the policy tag, if any.
        class SerializedPolicyTag
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Client#replace_taxonomy ReplaceTaxonomy}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of the taxonomy to update.
        # @!attribute [rw] serialized_taxonomy
        #   @return [::Google::Cloud::DataCatalog::V1::SerializedTaxonomy]
        #     Required. Taxonomy to update along with its child policy tags.
        class ReplaceTaxonomyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Client#import_taxonomies ImportTaxonomies}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name of project that the imported taxonomies will belong
        #     to.
        # @!attribute [rw] inline_source
        #   @return [::Google::Cloud::DataCatalog::V1::InlineSource]
        #     Inline source taxonomy to import.
        #
        #     Note: The following fields are mutually exclusive: `inline_source`, `cross_regional_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] cross_regional_source
        #   @return [::Google::Cloud::DataCatalog::V1::CrossRegionalSource]
        #     Cross-regional source taxonomy to import.
        #
        #     Note: The following fields are mutually exclusive: `cross_regional_source`, `inline_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class ImportTaxonomiesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Inline source containing taxonomies to import.
        # @!attribute [rw] taxonomies
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::SerializedTaxonomy>]
        #     Required. Taxonomies to import.
        class InlineSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Cross-regional source used to import an existing taxonomy into a different
        # region.
        # @!attribute [rw] taxonomy
        #   @return [::String]
        #     Required. The resource name of the source taxonomy to import.
        class CrossRegionalSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Client#import_taxonomies ImportTaxonomies}.
        # @!attribute [rw] taxonomies
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::Taxonomy>]
        #     Imported taxonomies.
        class ImportTaxonomiesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Client#export_taxonomies ExportTaxonomies}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name of the project that the exported taxonomies belong
        #     to.
        # @!attribute [rw] taxonomies
        #   @return [::Array<::String>]
        #     Required. Resource names of the taxonomies to export.
        # @!attribute [rw] serialized_taxonomies
        #   @return [::Boolean]
        #     Serialized export taxonomies that contain all the policy
        #     tags as nested protocol buffers.
        class ExportTaxonomiesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Client#export_taxonomies ExportTaxonomies}.
        # @!attribute [rw] taxonomies
        #   @return [::Array<::Google::Cloud::DataCatalog::V1::SerializedTaxonomy>]
        #     List of taxonomies and policy tags as nested protocol buffers.
        class ExportTaxonomiesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
