# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/osconfig/v1/os_policy_assignments.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/osconfig/v1/os_policy_pb'
require 'google/cloud/osconfig/v1/osconfig_common_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/osconfig/v1/os_policy_assignments.proto", :syntax => :proto3) do
    add_message "google.cloud.osconfig.v1.OSPolicyAssignment" do
      optional :name, :string, 1
      optional :description, :string, 2
      repeated :os_policies, :message, 3, "google.cloud.osconfig.v1.OSPolicy"
      optional :instance_filter, :message, 4, "google.cloud.osconfig.v1.OSPolicyAssignment.InstanceFilter"
      optional :rollout, :message, 5, "google.cloud.osconfig.v1.OSPolicyAssignment.Rollout"
      optional :revision_id, :string, 6
      optional :revision_create_time, :message, 7, "google.protobuf.Timestamp"
      optional :etag, :string, 8
      optional :rollout_state, :enum, 9, "google.cloud.osconfig.v1.OSPolicyAssignment.RolloutState"
      optional :baseline, :bool, 10
      optional :deleted, :bool, 11
      optional :reconciling, :bool, 12
      optional :uid, :string, 13
    end
    add_message "google.cloud.osconfig.v1.OSPolicyAssignment.LabelSet" do
      map :labels, :string, :string, 1
    end
    add_message "google.cloud.osconfig.v1.OSPolicyAssignment.InstanceFilter" do
      optional :all, :bool, 1
      repeated :inclusion_labels, :message, 2, "google.cloud.osconfig.v1.OSPolicyAssignment.LabelSet"
      repeated :exclusion_labels, :message, 3, "google.cloud.osconfig.v1.OSPolicyAssignment.LabelSet"
      repeated :inventories, :message, 4, "google.cloud.osconfig.v1.OSPolicyAssignment.InstanceFilter.Inventory"
    end
    add_message "google.cloud.osconfig.v1.OSPolicyAssignment.InstanceFilter.Inventory" do
      optional :os_short_name, :string, 1
      optional :os_version, :string, 2
    end
    add_message "google.cloud.osconfig.v1.OSPolicyAssignment.Rollout" do
      optional :disruption_budget, :message, 1, "google.cloud.osconfig.v1.FixedOrPercent"
      optional :min_wait_duration, :message, 2, "google.protobuf.Duration"
    end
    add_enum "google.cloud.osconfig.v1.OSPolicyAssignment.RolloutState" do
      value :ROLLOUT_STATE_UNSPECIFIED, 0
      value :IN_PROGRESS, 1
      value :CANCELLING, 2
      value :CANCELLED, 3
      value :SUCCEEDED, 4
    end
    add_message "google.cloud.osconfig.v1.OSPolicyAssignmentOperationMetadata" do
      optional :os_policy_assignment, :string, 1
      optional :api_method, :enum, 2, "google.cloud.osconfig.v1.OSPolicyAssignmentOperationMetadata.APIMethod"
      optional :rollout_state, :enum, 3, "google.cloud.osconfig.v1.OSPolicyAssignmentOperationMetadata.RolloutState"
      optional :rollout_start_time, :message, 4, "google.protobuf.Timestamp"
      optional :rollout_update_time, :message, 5, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.osconfig.v1.OSPolicyAssignmentOperationMetadata.APIMethod" do
      value :API_METHOD_UNSPECIFIED, 0
      value :CREATE, 1
      value :UPDATE, 2
      value :DELETE, 3
    end
    add_enum "google.cloud.osconfig.v1.OSPolicyAssignmentOperationMetadata.RolloutState" do
      value :ROLLOUT_STATE_UNSPECIFIED, 0
      value :IN_PROGRESS, 1
      value :CANCELLING, 2
      value :CANCELLED, 3
      value :SUCCEEDED, 4
    end
    add_message "google.cloud.osconfig.v1.CreateOSPolicyAssignmentRequest" do
      optional :parent, :string, 1
      optional :os_policy_assignment, :message, 2, "google.cloud.osconfig.v1.OSPolicyAssignment"
      optional :os_policy_assignment_id, :string, 3
    end
    add_message "google.cloud.osconfig.v1.UpdateOSPolicyAssignmentRequest" do
      optional :os_policy_assignment, :message, 1, "google.cloud.osconfig.v1.OSPolicyAssignment"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.osconfig.v1.GetOSPolicyAssignmentRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.osconfig.v1.ListOSPolicyAssignmentsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.osconfig.v1.ListOSPolicyAssignmentsResponse" do
      repeated :os_policy_assignments, :message, 1, "google.cloud.osconfig.v1.OSPolicyAssignment"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.osconfig.v1.ListOSPolicyAssignmentRevisionsRequest" do
      optional :name, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.osconfig.v1.ListOSPolicyAssignmentRevisionsResponse" do
      repeated :os_policy_assignments, :message, 1, "google.cloud.osconfig.v1.OSPolicyAssignment"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.osconfig.v1.DeleteOSPolicyAssignmentRequest" do
      optional :name, :string, 1
    end
  end
end

module Google
  module Cloud
    module OsConfig
      module V1
        OSPolicyAssignment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicyAssignment").msgclass
        OSPolicyAssignment::LabelSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicyAssignment.LabelSet").msgclass
        OSPolicyAssignment::InstanceFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicyAssignment.InstanceFilter").msgclass
        OSPolicyAssignment::InstanceFilter::Inventory = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicyAssignment.InstanceFilter.Inventory").msgclass
        OSPolicyAssignment::Rollout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicyAssignment.Rollout").msgclass
        OSPolicyAssignment::RolloutState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicyAssignment.RolloutState").enummodule
        OSPolicyAssignmentOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicyAssignmentOperationMetadata").msgclass
        OSPolicyAssignmentOperationMetadata::APIMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicyAssignmentOperationMetadata.APIMethod").enummodule
        OSPolicyAssignmentOperationMetadata::RolloutState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.OSPolicyAssignmentOperationMetadata.RolloutState").enummodule
        CreateOSPolicyAssignmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.CreateOSPolicyAssignmentRequest").msgclass
        UpdateOSPolicyAssignmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.UpdateOSPolicyAssignmentRequest").msgclass
        GetOSPolicyAssignmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.GetOSPolicyAssignmentRequest").msgclass
        ListOSPolicyAssignmentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ListOSPolicyAssignmentsRequest").msgclass
        ListOSPolicyAssignmentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ListOSPolicyAssignmentsResponse").msgclass
        ListOSPolicyAssignmentRevisionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ListOSPolicyAssignmentRevisionsRequest").msgclass
        ListOSPolicyAssignmentRevisionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.ListOSPolicyAssignmentRevisionsResponse").msgclass
        DeleteOSPolicyAssignmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.osconfig.v1.DeleteOSPolicyAssignmentRequest").msgclass
      end
    end
  end
end
