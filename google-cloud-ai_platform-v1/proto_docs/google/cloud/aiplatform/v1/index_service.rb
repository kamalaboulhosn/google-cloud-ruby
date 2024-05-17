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
    module AIPlatform
      module V1
        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexService::Client#create_index IndexService.CreateIndex}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the Index in.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] index
        #   @return [::Google::Cloud::AIPlatform::V1::Index]
        #     Required. The Index to create.
        class CreateIndexRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::IndexService::Client#create_index IndexService.CreateIndex}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        # @!attribute [rw] nearest_neighbor_search_operation_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::NearestNeighborSearchOperationMetadata]
        #     The operation metadata with regard to Matching Engine Index operation.
        class CreateIndexOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexService::Client#get_index IndexService.GetIndex}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Index resource.
        #     Format:
        #     `projects/{project}/locations/{location}/indexes/{index}`
        class GetIndexRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexService::Client#list_indexes IndexService.ListIndexes}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location from which to list the Indexes.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     The standard list filter.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListIndexesResponse#next_page_token ListIndexesResponse.next_page_token}
        #     of the previous
        #     {::Google::Cloud::AIPlatform::V1::IndexService::Client#list_indexes IndexService.ListIndexes}
        #     call.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class ListIndexesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::IndexService::Client#list_indexes IndexService.ListIndexes}.
        # @!attribute [rw] indexes
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Index>]
        #     List of indexes in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to
        #     {::Google::Cloud::AIPlatform::V1::ListIndexesRequest#page_token ListIndexesRequest.page_token}
        #     to obtain that page.
        class ListIndexesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexService::Client#update_index IndexService.UpdateIndex}.
        # @!attribute [rw] index
        #   @return [::Google::Cloud::AIPlatform::V1::Index]
        #     Required. The Index which updates the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The update mask applies to the resource.
        #     For the `FieldMask` definition, see
        #     {::Google::Protobuf::FieldMask google.protobuf.FieldMask}.
        class UpdateIndexRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::IndexService::Client#update_index IndexService.UpdateIndex}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        # @!attribute [rw] nearest_neighbor_search_operation_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::NearestNeighborSearchOperationMetadata]
        #     The operation metadata with regard to Matching Engine Index operation.
        class UpdateIndexOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexService::Client#delete_index IndexService.DeleteIndex}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Index resource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/indexes/{index}`
        class DeleteIndexRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexService::Client#upsert_datapoints IndexService.UpsertDatapoints}
        # @!attribute [rw] index
        #   @return [::String]
        #     Required. The name of the Index resource to be updated.
        #     Format:
        #     `projects/{project}/locations/{location}/indexes/{index}`
        # @!attribute [rw] datapoints
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::IndexDatapoint>]
        #     A list of datapoints to be created/updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Update mask is used to specify the fields to be overwritten in
        #     the datapoints by the update. The fields specified in the update_mask are
        #     relative to each IndexDatapoint inside datapoints, not the full request.
        #
        #     Updatable fields:
        #
        #       * Use `all_restricts` to update both restricts and numeric_restricts.
        class UpsertDatapointsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::IndexService::Client#upsert_datapoints IndexService.UpsertDatapoints}
        class UpsertDatapointsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexService::Client#remove_datapoints IndexService.RemoveDatapoints}
        # @!attribute [rw] index
        #   @return [::String]
        #     Required. The name of the Index resource to be updated.
        #     Format:
        #     `projects/{project}/locations/{location}/indexes/{index}`
        # @!attribute [rw] datapoint_ids
        #   @return [::Array<::String>]
        #     A list of datapoint ids to be deleted.
        class RemoveDatapointsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::IndexService::Client#remove_datapoints IndexService.RemoveDatapoints}
        class RemoveDatapointsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation metadata with regard to Matching Engine Index.
        # @!attribute [rw] content_validation_stats
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::NearestNeighborSearchOperationMetadata::ContentValidationStats>]
        #     The validation stats of the content (per file) to be inserted or
        #     updated on the Matching Engine Index resource. Populated if
        #     contentsDeltaUri is provided as part of
        #     {::Google::Cloud::AIPlatform::V1::Index#metadata Index.metadata}. Please note
        #     that, currently for those files that are broken or has unsupported file
        #     format, we will not have the stats for those files.
        # @!attribute [rw] data_bytes_count
        #   @return [::Integer]
        #     The ingested data size in bytes.
        class NearestNeighborSearchOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] error_type
          #   @return [::Google::Cloud::AIPlatform::V1::NearestNeighborSearchOperationMetadata::RecordError::RecordErrorType]
          #     The error type of this record.
          # @!attribute [rw] error_message
          #   @return [::String]
          #     A human-readable message that is shown to the user to help them fix the
          #     error. Note that this message may change from time to time, your code
          #     should check against error_type as the source of truth.
          # @!attribute [rw] source_gcs_uri
          #   @return [::String]
          #     Cloud Storage URI pointing to the original file in user's bucket.
          # @!attribute [rw] embedding_id
          #   @return [::String]
          #     Empty if the embedding id is failed to parse.
          # @!attribute [rw] raw_record
          #   @return [::String]
          #     The original content of this record.
          class RecordError
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            module RecordErrorType
              # Default, shall not be used.
              ERROR_TYPE_UNSPECIFIED = 0

              # The record is empty.
              EMPTY_LINE = 1

              # Invalid json format.
              INVALID_JSON_SYNTAX = 2

              # Invalid csv format.
              INVALID_CSV_SYNTAX = 3

              # Invalid avro format.
              INVALID_AVRO_SYNTAX = 4

              # The embedding id is not valid.
              INVALID_EMBEDDING_ID = 5

              # The size of the embedding vectors does not match with the specified
              # dimension.
              EMBEDDING_SIZE_MISMATCH = 6

              # The `namespace` field is missing.
              NAMESPACE_MISSING = 7

              # Generic catch-all error. Only used for validation failure where the
              # root cause cannot be easily retrieved programmatically.
              PARSING_ERROR = 8

              # There are multiple restricts with the same `namespace` value.
              DUPLICATE_NAMESPACE = 9

              # Numeric restrict has operator specified in datapoint.
              OP_IN_DATAPOINT = 10

              # Numeric restrict has multiple values specified.
              MULTIPLE_VALUES = 11

              # Numeric restrict has invalid numeric value specified.
              INVALID_NUMERIC_VALUE = 12

              # File is not in UTF_8 format.
              INVALID_ENCODING = 13

              # Token restrict value is invalid.
              INVALID_TOKEN_VALUE = 15
            end
          end

          # @!attribute [rw] source_gcs_uri
          #   @return [::String]
          #     Cloud Storage URI pointing to the original file in user's bucket.
          # @!attribute [rw] valid_record_count
          #   @return [::Integer]
          #     Number of records in this file that were successfully processed.
          # @!attribute [rw] invalid_record_count
          #   @return [::Integer]
          #     Number of records in this file we skipped due to validate errors.
          # @!attribute [rw] partial_errors
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::NearestNeighborSearchOperationMetadata::RecordError>]
          #     The detail information of the partial failures encountered for those
          #     invalid records that couldn't be parsed.
          #     Up to 50 partial errors will be reported.
          class ContentValidationStats
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
