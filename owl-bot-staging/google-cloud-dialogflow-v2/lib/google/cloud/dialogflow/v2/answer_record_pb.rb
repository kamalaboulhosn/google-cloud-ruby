# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/answer_record.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/v2/participant_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/v2/answer_record.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.v2.AnswerRecord" do
      optional :name, :string, 1
      optional :answer_feedback, :message, 2, "google.cloud.dialogflow.v2.AnswerFeedback"
      oneof :record do
        optional :agent_assistant_record, :message, 4, "google.cloud.dialogflow.v2.AgentAssistantRecord"
      end
    end
    add_message "google.cloud.dialogflow.v2.ListAnswerRecordsRequest" do
      optional :parent, :string, 1
      optional :filter, :string, 2
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
    end
    add_message "google.cloud.dialogflow.v2.ListAnswerRecordsResponse" do
      repeated :answer_records, :message, 1, "google.cloud.dialogflow.v2.AnswerRecord"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dialogflow.v2.UpdateAnswerRecordRequest" do
      optional :answer_record, :message, 1, "google.cloud.dialogflow.v2.AnswerRecord"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.dialogflow.v2.AnswerFeedback" do
      optional :correctness_level, :enum, 1, "google.cloud.dialogflow.v2.AnswerFeedback.CorrectnessLevel"
      optional :clicked, :bool, 3
      optional :click_time, :message, 5, "google.protobuf.Timestamp"
      optional :displayed, :bool, 4
      optional :display_time, :message, 6, "google.protobuf.Timestamp"
      oneof :detail_feedback do
        optional :agent_assistant_detail_feedback, :message, 2, "google.cloud.dialogflow.v2.AgentAssistantFeedback"
      end
    end
    add_enum "google.cloud.dialogflow.v2.AnswerFeedback.CorrectnessLevel" do
      value :CORRECTNESS_LEVEL_UNSPECIFIED, 0
      value :NOT_CORRECT, 1
      value :PARTIALLY_CORRECT, 2
      value :FULLY_CORRECT, 3
    end
    add_message "google.cloud.dialogflow.v2.AgentAssistantFeedback" do
      optional :answer_relevance, :enum, 1, "google.cloud.dialogflow.v2.AgentAssistantFeedback.AnswerRelevance"
      optional :document_correctness, :enum, 2, "google.cloud.dialogflow.v2.AgentAssistantFeedback.DocumentCorrectness"
      optional :document_efficiency, :enum, 3, "google.cloud.dialogflow.v2.AgentAssistantFeedback.DocumentEfficiency"
    end
    add_enum "google.cloud.dialogflow.v2.AgentAssistantFeedback.AnswerRelevance" do
      value :ANSWER_RELEVANCE_UNSPECIFIED, 0
      value :IRRELEVANT, 1
      value :RELEVANT, 2
    end
    add_enum "google.cloud.dialogflow.v2.AgentAssistantFeedback.DocumentCorrectness" do
      value :DOCUMENT_CORRECTNESS_UNSPECIFIED, 0
      value :INCORRECT, 1
      value :CORRECT, 2
    end
    add_enum "google.cloud.dialogflow.v2.AgentAssistantFeedback.DocumentEfficiency" do
      value :DOCUMENT_EFFICIENCY_UNSPECIFIED, 0
      value :INEFFICIENT, 1
      value :EFFICIENT, 2
    end
    add_message "google.cloud.dialogflow.v2.AgentAssistantRecord" do
      oneof :answer do
        optional :article_suggestion_answer, :message, 5, "google.cloud.dialogflow.v2.ArticleAnswer"
        optional :faq_answer, :message, 6, "google.cloud.dialogflow.v2.FaqAnswer"
      end
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module V2
        AnswerRecord = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AnswerRecord").msgclass
        ListAnswerRecordsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListAnswerRecordsRequest").msgclass
        ListAnswerRecordsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListAnswerRecordsResponse").msgclass
        UpdateAnswerRecordRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.UpdateAnswerRecordRequest").msgclass
        AnswerFeedback = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AnswerFeedback").msgclass
        AnswerFeedback::CorrectnessLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AnswerFeedback.CorrectnessLevel").enummodule
        AgentAssistantFeedback = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AgentAssistantFeedback").msgclass
        AgentAssistantFeedback::AnswerRelevance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AgentAssistantFeedback.AnswerRelevance").enummodule
        AgentAssistantFeedback::DocumentCorrectness = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AgentAssistantFeedback.DocumentCorrectness").enummodule
        AgentAssistantFeedback::DocumentEfficiency = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AgentAssistantFeedback.DocumentEfficiency").enummodule
        AgentAssistantRecord = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.AgentAssistantRecord").msgclass
      end
    end
  end
end