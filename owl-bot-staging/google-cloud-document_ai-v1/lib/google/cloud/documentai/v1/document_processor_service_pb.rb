# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/documentai/v1/document_processor_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/documentai/v1/document_pb'
require 'google/cloud/documentai/v1/document_io_pb'
require 'google/cloud/documentai/v1/operation_metadata_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/documentai/v1/document_processor_service.proto", :syntax => :proto3) do
    add_message "google.cloud.documentai.v1.ProcessRequest" do
      optional :name, :string, 1
      optional :skip_human_review, :bool, 3
      oneof :source do
        optional :inline_document, :message, 4, "google.cloud.documentai.v1.Document"
        optional :raw_document, :message, 5, "google.cloud.documentai.v1.RawDocument"
      end
    end
    add_message "google.cloud.documentai.v1.HumanReviewStatus" do
      optional :state, :enum, 1, "google.cloud.documentai.v1.HumanReviewStatus.State"
      optional :state_message, :string, 2
      optional :human_review_operation, :string, 3
    end
    add_enum "google.cloud.documentai.v1.HumanReviewStatus.State" do
      value :STATE_UNSPECIFIED, 0
      value :SKIPPED, 1
      value :VALIDATION_PASSED, 2
      value :IN_PROGRESS, 3
      value :ERROR, 4
    end
    add_message "google.cloud.documentai.v1.ProcessResponse" do
      optional :document, :message, 1, "google.cloud.documentai.v1.Document"
      optional :human_review_status, :message, 3, "google.cloud.documentai.v1.HumanReviewStatus"
    end
    add_message "google.cloud.documentai.v1.BatchProcessRequest" do
      optional :name, :string, 1
      optional :input_documents, :message, 5, "google.cloud.documentai.v1.BatchDocumentsInputConfig"
      optional :document_output_config, :message, 6, "google.cloud.documentai.v1.DocumentOutputConfig"
      optional :skip_human_review, :bool, 4
    end
    add_message "google.cloud.documentai.v1.BatchProcessResponse" do
    end
    add_message "google.cloud.documentai.v1.BatchProcessMetadata" do
      optional :state, :enum, 1, "google.cloud.documentai.v1.BatchProcessMetadata.State"
      optional :state_message, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
      repeated :individual_process_statuses, :message, 5, "google.cloud.documentai.v1.BatchProcessMetadata.IndividualProcessStatus"
    end
    add_message "google.cloud.documentai.v1.BatchProcessMetadata.IndividualProcessStatus" do
      optional :input_gcs_source, :string, 1
      optional :status, :message, 2, "google.rpc.Status"
      optional :output_gcs_destination, :string, 3
      optional :human_review_status, :message, 5, "google.cloud.documentai.v1.HumanReviewStatus"
    end
    add_enum "google.cloud.documentai.v1.BatchProcessMetadata.State" do
      value :STATE_UNSPECIFIED, 0
      value :WAITING, 1
      value :RUNNING, 2
      value :SUCCEEDED, 3
      value :CANCELLING, 4
      value :CANCELLED, 5
      value :FAILED, 6
    end
    add_message "google.cloud.documentai.v1.ReviewDocumentRequest" do
      optional :human_review_config, :string, 1
      optional :enable_schema_validation, :bool, 3
      optional :priority, :enum, 5, "google.cloud.documentai.v1.ReviewDocumentRequest.Priority"
      oneof :source do
        optional :inline_document, :message, 4, "google.cloud.documentai.v1.Document"
      end
    end
    add_enum "google.cloud.documentai.v1.ReviewDocumentRequest.Priority" do
      value :DEFAULT, 0
      value :URGENT, 1
    end
    add_message "google.cloud.documentai.v1.ReviewDocumentResponse" do
      optional :gcs_destination, :string, 1
    end
    add_message "google.cloud.documentai.v1.ReviewDocumentOperationMetadata" do
      optional :common_metadata, :message, 5, "google.cloud.documentai.v1.CommonOperationMetadata"
      optional :question_id, :string, 6
    end
  end
end

module Google
  module Cloud
    module DocumentAI
      module V1
        ProcessRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ProcessRequest").msgclass
        HumanReviewStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.HumanReviewStatus").msgclass
        HumanReviewStatus::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.HumanReviewStatus.State").enummodule
        ProcessResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ProcessResponse").msgclass
        BatchProcessRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.BatchProcessRequest").msgclass
        BatchProcessResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.BatchProcessResponse").msgclass
        BatchProcessMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.BatchProcessMetadata").msgclass
        BatchProcessMetadata::IndividualProcessStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.BatchProcessMetadata.IndividualProcessStatus").msgclass
        BatchProcessMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.BatchProcessMetadata.State").enummodule
        ReviewDocumentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ReviewDocumentRequest").msgclass
        ReviewDocumentRequest::Priority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ReviewDocumentRequest.Priority").enummodule
        ReviewDocumentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ReviewDocumentResponse").msgclass
        ReviewDocumentOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1.ReviewDocumentOperationMetadata").msgclass
      end
    end
  end
end