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
    module DocumentAI
      module V1beta3
        # Request message for the process document method.
        # @!attribute [rw] inline_document
        #   @return [::Google::Cloud::DocumentAI::V1beta3::Document]
        #     An inline document proto.
        # @!attribute [rw] raw_document
        #   @return [::Google::Cloud::DocumentAI::V1beta3::RawDocument]
        #     A raw document content (bytes).
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor resource name.
        # @!attribute [rw] document
        #   @return [::Google::Cloud::DocumentAI::V1beta3::Document]
        #     The document payload, the [content] and [mime_type] fields must be set.
        # @!attribute [rw] skip_human_review
        #   @return [::Boolean]
        #     Whether Human Review feature should be skipped for this request. Default to
        #     false.
        class ProcessRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The status of human review on a processed document.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::DocumentAI::V1beta3::HumanReviewStatus::State]
        #     The state of human review on the processing request.
        # @!attribute [rw] state_message
        #   @return [::String]
        #     A message providing more details about the human review state.
        # @!attribute [rw] human_review_operation
        #   @return [::String]
        #     The name of the operation triggered by the processed document. This field
        #     is populated only when the [state] is [HUMAN_REVIEW_IN_PROGRESS]. It has
        #     the same response type and metadata as the long running operation returned
        #     by [ReviewDocument] method.
        class HumanReviewStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The final state of human review on a processed document.
          module State
            # Human review state is unspecified. Most likely due to an internal error.
            STATE_UNSPECIFIED = 0

            # Human review is skipped for the document. This can happen because human
            # review is not enabled on the processor or the processing request has
            # been set to skip this document.
            SKIPPED = 1

            # Human review validation is triggered and passed, so no review is needed.
            VALIDATION_PASSED = 2

            # Human review validation is triggered and the document is under review.
            IN_PROGRESS = 3

            # Some error happened during triggering human review, see the
            # [state_message] for details.
            ERROR = 4
          end
        end

        # Response message for the process document method.
        # @!attribute [rw] document
        #   @return [::Google::Cloud::DocumentAI::V1beta3::Document]
        #     The document payload, will populate fields based on the processor's
        #     behavior.
        # @!attribute [rw] human_review_operation
        #   @return [::String]
        #     The name of the operation triggered by the processed document. If the human
        #     review process is not triggered, this field will be empty. It has the same
        #     response type and metadata as the long running operation returned by
        #     ReviewDocument method.
        # @!attribute [rw] human_review_status
        #   @return [::Google::Cloud::DocumentAI::V1beta3::HumanReviewStatus]
        #     The status of human review on the processed document.
        class ProcessResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for batch process document method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor resource name.
        # @!attribute [rw] input_configs
        #   @return [::Array<::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest::BatchInputConfig>]
        #     The input config for each single document in the batch process.
        # @!attribute [rw] output_config
        #   @return [::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest::BatchOutputConfig]
        #     The overall output config for batch process.
        # @!attribute [rw] input_documents
        #   @return [::Google::Cloud::DocumentAI::V1beta3::BatchDocumentsInputConfig]
        #     The input documents for batch process.
        # @!attribute [rw] document_output_config
        #   @return [::Google::Cloud::DocumentAI::V1beta3::DocumentOutputConfig]
        #     The overall output config for batch process.
        # @!attribute [rw] skip_human_review
        #   @return [::Boolean]
        #     Whether Human Review feature should be skipped for this request. Default to
        #     false.
        class BatchProcessRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The message for input config in batch process.
          # @!attribute [rw] gcs_source
          #   @return [::String]
          #     The Cloud Storage location as the source of the document.
          # @!attribute [rw] mime_type
          #   @return [::String]
          #     Mimetype of the input. If the input is a raw document, the supported
          #     mimetypes are application/pdf, image/tiff, and image/gif.
          #     If the input is a [Document] proto, the type should be application/json.
          class BatchInputConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The message for output config in batch process.
          # @!attribute [rw] gcs_destination
          #   @return [::String]
          #     The output Cloud Storage directory to put the processed documents.
          class BatchOutputConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message for batch process document method.
        class BatchProcessResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for batch process method.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::DocumentAI::V1beta3::BatchProcessMetadata::State]
        #     The state of the current batch processing.
        # @!attribute [rw] state_message
        #   @return [::String]
        #     A message providing more details about the current state of processing.
        #     For example, the error message if the operation is failed.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The creation time of the operation.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The last update time of the operation.
        # @!attribute [rw] individual_process_statuses
        #   @return [::Array<::Google::Cloud::DocumentAI::V1beta3::BatchProcessMetadata::IndividualProcessStatus>]
        #     The list of response details of each document.
        class BatchProcessMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The status of a each individual document in the batch process.
          # @!attribute [rw] input_gcs_source
          #   @return [::String]
          #     The source of the document, same as the [input_gcs_source] field in the
          #     request when the batch process started. The batch process is started by
          #     take snapshot of that document, since a user can move or change that
          #     document during the process.
          # @!attribute [rw] status
          #   @return [::Google::Rpc::Status]
          #     The status of the processing of the document.
          # @!attribute [rw] output_gcs_destination
          #   @return [::String]
          #     The output_gcs_destination (in the request as 'output_gcs_destination')
          #     of the processed document if it was successful, otherwise empty.
          # @!attribute [rw] human_review_operation
          #   @return [::String]
          #     The name of the operation triggered by the processed document. If the
          #     human review process is not triggered, this field will be empty. It has
          #     the same response type and metadata as the long running operation
          #     returned by ReviewDocument method.
          # @!attribute [rw] human_review_status
          #   @return [::Google::Cloud::DocumentAI::V1beta3::HumanReviewStatus]
          #     The status of human review on the processed document.
          class IndividualProcessStatus
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Possible states of the batch processing operation.
          module State
            # The default value. This value is used if the state is omitted.
            STATE_UNSPECIFIED = 0

            # Request operation is waiting for scheduling.
            WAITING = 1

            # Request is being processed.
            RUNNING = 2

            # The batch processing completed successfully.
            SUCCEEDED = 3

            # The batch processing was being cancelled.
            CANCELLING = 4

            # The batch processing was cancelled.
            CANCELLED = 5

            # The batch processing has failed.
            FAILED = 6
          end
        end

        # Request message for fetch processor types.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project of processor type to list.
        #     Format: projects/\\{project}/locations/\\{location}
        class FetchProcessorTypesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for fetch processor types.
        # @!attribute [rw] processor_types
        #   @return [::Array<::Google::Cloud::DocumentAI::V1beta3::ProcessorType>]
        #     The list of processor types.
        class FetchProcessorTypesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for list all processors belongs to a project.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent (project and location) which owns this collection of Processors.
        #     Format: projects/\\{project}/locations/\\{location}
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of processors to return.
        #     If unspecified, at most 50 processors will be returned.
        #     The maximum value is 100; values above 100 will be coerced to 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     We will return the processors sorted by creation time. The page token
        #     will point to the next processor.
        class ListProcessorsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for list processors.
        # @!attribute [rw] processors
        #   @return [::Array<::Google::Cloud::DocumentAI::V1beta3::Processor>]
        #     The list of processors.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Points to the next processor, otherwise empty.
        class ListProcessorsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for create a processor. Notice this request is sent to
        # a regionalized backend service, and if the processor type is not available
        # on that region, the creation will fail.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent (project and location) under which to create the processor.
        #     Format: projects/\\{project}/locations/\\{location}
        # @!attribute [rw] processor
        #   @return [::Google::Cloud::DocumentAI::V1beta3::Processor]
        #     Required. The processor to be created, requires [processor_type] and [display_name]
        #     to be set. Also, the processor is under CMEK if CMEK fields are set.
        class CreateProcessorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the delete processor method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor resource name to be deleted.
        class DeleteProcessorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for delete processor method.
        # @!attribute [rw] common_metadata
        #   @return [::Google::Cloud::DocumentAI::V1beta3::CommonOperationMetadata]
        #     The basic metadata of the long running operation.
        class DeleteProcessorMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the enable processor method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor resource name to be enabled.
        class EnableProcessorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for the enable processor method.
        class EnableProcessorResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for enable processor method.
        # @!attribute [rw] common_metadata
        #   @return [::Google::Cloud::DocumentAI::V1beta3::CommonOperationMetadata]
        #     The basic metadata of the long running operation.
        class EnableProcessorMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for the disable processor method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The processor resource name to be disabled.
        class DisableProcessorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for the disable processor method.
        class DisableProcessorResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for disable processor method.
        # @!attribute [rw] common_metadata
        #   @return [::Google::Cloud::DocumentAI::V1beta3::CommonOperationMetadata]
        #     The basic metadata of the long running operation.
        class DisableProcessorMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for review document method.
        # Next Id: 6.
        # @!attribute [rw] inline_document
        #   @return [::Google::Cloud::DocumentAI::V1beta3::Document]
        #     An inline document proto.
        # @!attribute [rw] human_review_config
        #   @return [::String]
        #     Required. The resource name of the HumanReviewConfig that the document will be
        #     reviewed with.
        # @!attribute [rw] document
        #   @return [::Google::Cloud::DocumentAI::V1beta3::Document]
        #     The document that needs human review.
        # @!attribute [rw] enable_schema_validation
        #   @return [::Boolean]
        #     Whether the validation should be performed on the ad-hoc review request.
        # @!attribute [rw] priority
        #   @return [::Google::Cloud::DocumentAI::V1beta3::ReviewDocumentRequest::Priority]
        #     The priority of the human review task.
        class ReviewDocumentRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The priority level of the human review task.
          module Priority
            # The default priority level.
            DEFAULT = 0

            # The urgent priority level. The labeling manager should allocate labeler
            # resource to the urgent task queue to respect this priority level.
            URGENT = 1
          end
        end

        # Response message for review document method.
        # @!attribute [rw] gcs_destination
        #   @return [::String]
        #     The Cloud Storage uri for the human reviewed document.
        class ReviewDocumentResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for review document method.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::DocumentAI::V1beta3::ReviewDocumentOperationMetadata::State]
        #     Used only when Operation.done is false.
        # @!attribute [rw] state_message
        #   @return [::String]
        #     A message providing more details about the current state of processing.
        #     For example, the error message if the operation is failed.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The creation time of the operation.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The last update time of the operation.
        # @!attribute [rw] common_metadata
        #   @return [::Google::Cloud::DocumentAI::V1beta3::CommonOperationMetadata]
        #     The basic metadata of the long running operation.
        # @!attribute [rw] question_id
        #   @return [::String]
        #     The question ID.
        class ReviewDocumentOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # State of the longrunning operation.
          module State
            # Unspecified state.
            STATE_UNSPECIFIED = 0

            # Operation is still running.
            RUNNING = 1

            # Operation is being cancelled.
            CANCELLING = 2

            # Operation succeeded.
            SUCCEEDED = 3

            # Operation failed.
            FAILED = 4

            # Operation is cancelled.
            CANCELLED = 5
          end
        end
      end
    end
  end
end
