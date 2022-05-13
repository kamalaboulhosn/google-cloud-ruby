# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataqna/v1alpha/user_feedback.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dataqna/v1alpha/user_feedback.proto", :syntax => :proto3) do
    add_message "google.cloud.dataqna.v1alpha.UserFeedback" do
      optional :name, :string, 1
      optional :free_form_feedback, :string, 2
      optional :rating, :enum, 3, "google.cloud.dataqna.v1alpha.UserFeedback.UserFeedbackRating"
    end
    add_enum "google.cloud.dataqna.v1alpha.UserFeedback.UserFeedbackRating" do
      value :USER_FEEDBACK_RATING_UNSPECIFIED, 0
      value :POSITIVE, 1
      value :NEGATIVE, 2
    end
  end
end

module Google
  module Cloud
    module DataQnA
      module V1alpha
        UserFeedback = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.UserFeedback").msgclass
        UserFeedback::UserFeedbackRating = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataqna.v1alpha.UserFeedback.UserFeedbackRating").enummodule
      end
    end
  end
end