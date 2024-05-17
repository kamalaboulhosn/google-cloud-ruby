# frozen_string_literal: true

# Copyright 2023 Google LLC
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
    module DocumentAI
      module V1beta3
        # A singleton resource under a
        # {::Google::Cloud::DocumentAI::V1beta3::Processor Processor} which configures a
        # collection of documents.
        # @!attribute [rw] gcs_managed_config
        #   @return [::Google::Cloud::DocumentAI::V1beta3::Dataset::GCSManagedConfig]
        #     Optional. User-managed Cloud Storage dataset configuration. Use this
        #     configuration if the dataset documents are stored under a user-managed
        #     Cloud Storage location.
        # @!attribute [rw] document_warehouse_config
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Google::Cloud::DocumentAI::V1beta3::Dataset::DocumentWarehouseConfig]
        #     Optional. Deprecated. Warehouse-based dataset configuration is not
        #     supported.
        # @!attribute [rw] unmanaged_dataset_config
        #   @return [::Google::Cloud::DocumentAI::V1beta3::Dataset::UnmanagedDatasetConfig]
        #     Optional. Unmanaged dataset configuration. Use this configuration if the
        #     dataset documents are managed by the document service internally (not
        #     user-managed).
        # @!attribute [rw] spanner_indexing_config
        #   @return [::Google::Cloud::DocumentAI::V1beta3::Dataset::SpannerIndexingConfig]
        #     Optional. A lightweight indexing source with low latency and high
        #     reliability, but lacking advanced features like CMEK and content-based
        #     search.
        # @!attribute [rw] name
        #   @return [::String]
        #     Dataset resource name.
        #     Format:
        #     `projects/{project}/locations/{location}/processors/{processor}/dataset`
        # @!attribute [rw] state
        #   @return [::Google::Cloud::DocumentAI::V1beta3::Dataset::State]
        #     Required. State of the dataset. Ignored when updating dataset.
        class Dataset
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Configuration specific to the Cloud Storage-based implementation.
          # @!attribute [rw] gcs_prefix
          #   @return [::Google::Cloud::DocumentAI::V1beta3::GcsPrefix]
          #     Required. The Cloud Storage URI (a directory) where the documents
          #     belonging to the dataset must be stored.
          class GCSManagedConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Configuration specific to the Document AI Warehouse-based implementation.
          # @!attribute [r] collection
          #   @return [::String]
          #     Output only. The collection in Document AI Warehouse associated with the
          #     dataset.
          # @!attribute [r] schema
          #   @return [::String]
          #     Output only. The schema in Document AI Warehouse associated with the
          #     dataset.
          class DocumentWarehouseConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Configuration specific to an unmanaged dataset.
          class UnmanagedDatasetConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Configuration specific to spanner-based indexing.
          class SpannerIndexingConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Different states of a dataset.
          module State
            # Default unspecified enum, should not be used.
            STATE_UNSPECIFIED = 0

            # Dataset has not been initialized.
            UNINITIALIZED = 1

            # Dataset is being initialized.
            INITIALIZING = 2

            # Dataset has been initialized.
            INITIALIZED = 3
          end
        end

        # Document Identifier.
        # @!attribute [rw] gcs_managed_doc_id
        #   @return [::Google::Cloud::DocumentAI::V1beta3::DocumentId::GCSManagedDocumentId]
        #     A document id within user-managed Cloud Storage.
        # @!attribute [rw] unmanaged_doc_id
        #   @return [::Google::Cloud::DocumentAI::V1beta3::DocumentId::UnmanagedDocumentId]
        #     A document id within unmanaged dataset.
        # @!attribute [rw] revision_ref
        #   @return [::Google::Cloud::DocumentAI::V1beta3::RevisionRef]
        #     Points to a specific revision of the document if set.
        class DocumentId
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Identifies a document uniquely within the scope of a dataset in the
          # user-managed Cloud Storage option.
          # @!attribute [rw] gcs_uri
          #   @return [::String]
          #     Required. The Cloud Storage URI where the actual document is stored.
          # @!attribute [rw] cw_doc_id
          #   @deprecated This field is deprecated and may be removed in the next major version update.
          #   @return [::String]
          #     Id of the document (indexed) managed by Content Warehouse.
          class GCSManagedDocumentId
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Identifies a document uniquely within the scope of a dataset in unmanaged
          # option.
          # @!attribute [rw] doc_id
          #   @return [::String]
          #     Required. The id of the document.
          class UnmanagedDocumentId
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Dataset Schema.
        # @!attribute [rw] name
        #   @return [::String]
        #     Dataset schema resource name.
        #     Format:
        #     `projects/{project}/locations/{location}/processors/{processor}/dataset/datasetSchema`
        # @!attribute [rw] document_schema
        #   @return [::Google::Cloud::DocumentAI::V1beta3::DocumentSchema]
        #     Optional. Schema of the dataset.
        class DatasetSchema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Dataset documents that the batch operation will be applied to.
        # @!attribute [rw] individual_document_ids
        #   @return [::Google::Cloud::DocumentAI::V1beta3::BatchDatasetDocuments::IndividualDocumentIds]
        #     Document identifiers.
        # @!attribute [rw] filter
        #   @return [::String]
        #     A filter matching the documents.
        #     Follows the same format and restriction as
        #     [google.cloud.documentai.master.ListDocumentsRequest.filter].
        class BatchDatasetDocuments
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # List of individual DocumentIds.
          # @!attribute [rw] document_ids
          #   @return [::Array<::Google::Cloud::DocumentAI::V1beta3::DocumentId>]
          #     Required. List of Document IDs indicating where the actual documents are
          #     stored.
          class IndividualDocumentIds
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
