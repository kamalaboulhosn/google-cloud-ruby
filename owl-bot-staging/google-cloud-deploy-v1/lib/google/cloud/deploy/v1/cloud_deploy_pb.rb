# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/deploy/v1/cloud_deploy.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/date_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/deploy/v1/cloud_deploy.proto", :syntax => :proto3) do
    add_message "google.cloud.deploy.v1.DeliveryPipeline" do
      optional :name, :string, 1
      optional :uid, :string, 2
      optional :description, :string, 3
      map :annotations, :string, :string, 4
      map :labels, :string, :string, 5
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :update_time, :message, 7, "google.protobuf.Timestamp"
      optional :condition, :message, 11, "google.cloud.deploy.v1.PipelineCondition"
      optional :etag, :string, 10
      oneof :pipeline do
        optional :serial_pipeline, :message, 8, "google.cloud.deploy.v1.SerialPipeline"
      end
    end
    add_message "google.cloud.deploy.v1.SerialPipeline" do
      repeated :stages, :message, 1, "google.cloud.deploy.v1.Stage"
    end
    add_message "google.cloud.deploy.v1.Stage" do
      optional :target_id, :string, 1
      repeated :profiles, :string, 2
    end
    add_message "google.cloud.deploy.v1.PipelineReadyCondition" do
      optional :status, :bool, 3
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.deploy.v1.TargetsPresentCondition" do
      optional :status, :bool, 1
      repeated :missing_targets, :string, 2
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.deploy.v1.PipelineCondition" do
      optional :pipeline_ready_condition, :message, 1, "google.cloud.deploy.v1.PipelineReadyCondition"
      optional :targets_present_condition, :message, 3, "google.cloud.deploy.v1.TargetsPresentCondition"
    end
    add_message "google.cloud.deploy.v1.ListDeliveryPipelinesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.deploy.v1.ListDeliveryPipelinesResponse" do
      repeated :delivery_pipelines, :message, 1, "google.cloud.deploy.v1.DeliveryPipeline"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.deploy.v1.GetDeliveryPipelineRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.deploy.v1.CreateDeliveryPipelineRequest" do
      optional :parent, :string, 1
      optional :delivery_pipeline_id, :string, 2
      optional :delivery_pipeline, :message, 3, "google.cloud.deploy.v1.DeliveryPipeline"
      optional :request_id, :string, 4
      optional :validate_only, :bool, 5
    end
    add_message "google.cloud.deploy.v1.UpdateDeliveryPipelineRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :delivery_pipeline, :message, 2, "google.cloud.deploy.v1.DeliveryPipeline"
      optional :request_id, :string, 3
      optional :allow_missing, :bool, 4
      optional :validate_only, :bool, 5
    end
    add_message "google.cloud.deploy.v1.DeleteDeliveryPipelineRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
      optional :allow_missing, :bool, 3
      optional :validate_only, :bool, 4
      optional :force, :bool, 6
      optional :etag, :string, 5
    end
    add_message "google.cloud.deploy.v1.Target" do
      optional :name, :string, 1
      optional :target_id, :string, 2
      optional :uid, :string, 3
      optional :description, :string, 4
      map :annotations, :string, :string, 5
      map :labels, :string, :string, 6
      optional :require_approval, :bool, 13
      optional :create_time, :message, 8, "google.protobuf.Timestamp"
      optional :update_time, :message, 9, "google.protobuf.Timestamp"
      optional :etag, :string, 12
      repeated :execution_configs, :message, 16, "google.cloud.deploy.v1.ExecutionConfig"
      oneof :deployment_target do
        optional :gke, :message, 15, "google.cloud.deploy.v1.GkeCluster"
        optional :anthos_cluster, :message, 17, "google.cloud.deploy.v1.AnthosCluster"
      end
    end
    add_message "google.cloud.deploy.v1.ExecutionConfig" do
      repeated :usages, :enum, 1, "google.cloud.deploy.v1.ExecutionConfig.ExecutionEnvironmentUsage"
      optional :worker_pool, :string, 4
      optional :service_account, :string, 5
      optional :artifact_storage, :string, 6
      oneof :execution_environment do
        optional :default_pool, :message, 2, "google.cloud.deploy.v1.DefaultPool"
        optional :private_pool, :message, 3, "google.cloud.deploy.v1.PrivatePool"
      end
    end
    add_enum "google.cloud.deploy.v1.ExecutionConfig.ExecutionEnvironmentUsage" do
      value :EXECUTION_ENVIRONMENT_USAGE_UNSPECIFIED, 0
      value :RENDER, 1
      value :DEPLOY, 2
    end
    add_message "google.cloud.deploy.v1.DefaultPool" do
      optional :service_account, :string, 1
      optional :artifact_storage, :string, 2
    end
    add_message "google.cloud.deploy.v1.PrivatePool" do
      optional :worker_pool, :string, 1
      optional :service_account, :string, 2
      optional :artifact_storage, :string, 3
    end
    add_message "google.cloud.deploy.v1.GkeCluster" do
      optional :cluster, :string, 1
      optional :internal_ip, :bool, 2
    end
    add_message "google.cloud.deploy.v1.AnthosCluster" do
      optional :membership, :string, 1
    end
    add_message "google.cloud.deploy.v1.ListTargetsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.deploy.v1.ListTargetsResponse" do
      repeated :targets, :message, 1, "google.cloud.deploy.v1.Target"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.deploy.v1.GetTargetRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.deploy.v1.CreateTargetRequest" do
      optional :parent, :string, 1
      optional :target_id, :string, 2
      optional :target, :message, 3, "google.cloud.deploy.v1.Target"
      optional :request_id, :string, 4
      optional :validate_only, :bool, 5
    end
    add_message "google.cloud.deploy.v1.UpdateTargetRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :target, :message, 2, "google.cloud.deploy.v1.Target"
      optional :request_id, :string, 3
      optional :allow_missing, :bool, 4
      optional :validate_only, :bool, 5
    end
    add_message "google.cloud.deploy.v1.DeleteTargetRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
      optional :allow_missing, :bool, 3
      optional :validate_only, :bool, 4
      optional :etag, :string, 5
    end
    add_message "google.cloud.deploy.v1.Release" do
      optional :name, :string, 1
      optional :uid, :string, 2
      optional :description, :string, 3
      map :annotations, :string, :string, 4
      map :labels, :string, :string, 5
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :render_start_time, :message, 7, "google.protobuf.Timestamp"
      optional :render_end_time, :message, 8, "google.protobuf.Timestamp"
      optional :skaffold_config_uri, :string, 17
      optional :skaffold_config_path, :string, 9
      repeated :build_artifacts, :message, 10, "google.cloud.deploy.v1.BuildArtifact"
      optional :delivery_pipeline_snapshot, :message, 11, "google.cloud.deploy.v1.DeliveryPipeline"
      repeated :target_snapshots, :message, 12, "google.cloud.deploy.v1.Target"
      optional :render_state, :enum, 13, "google.cloud.deploy.v1.Release.RenderState"
      optional :etag, :string, 16
      optional :skaffold_version, :string, 19
      map :target_artifacts, :string, :message, 20, "google.cloud.deploy.v1.TargetArtifact"
      map :target_renders, :string, :message, 22, "google.cloud.deploy.v1.Release.TargetRender"
    end
    add_message "google.cloud.deploy.v1.Release.TargetRender" do
      optional :rendering_build, :string, 1
      optional :rendering_state, :enum, 2, "google.cloud.deploy.v1.Release.TargetRender.TargetRenderState"
      optional :failure_cause, :enum, 4, "google.cloud.deploy.v1.Release.TargetRender.FailureCause"
    end
    add_enum "google.cloud.deploy.v1.Release.TargetRender.TargetRenderState" do
      value :TARGET_RENDER_STATE_UNSPECIFIED, 0
      value :SUCCEEDED, 1
      value :FAILED, 2
      value :IN_PROGRESS, 3
    end
    add_enum "google.cloud.deploy.v1.Release.TargetRender.FailureCause" do
      value :FAILURE_CAUSE_UNSPECIFIED, 0
      value :CLOUD_BUILD_UNAVAILABLE, 1
      value :EXECUTION_FAILED, 2
    end
    add_enum "google.cloud.deploy.v1.Release.RenderState" do
      value :RENDER_STATE_UNSPECIFIED, 0
      value :SUCCEEDED, 1
      value :FAILED, 2
      value :IN_PROGRESS, 3
    end
    add_message "google.cloud.deploy.v1.BuildArtifact" do
      optional :image, :string, 3
      optional :tag, :string, 2
    end
    add_message "google.cloud.deploy.v1.TargetArtifact" do
      optional :skaffold_config_path, :string, 2
      optional :manifest_path, :string, 3
      oneof :uri do
        optional :artifact_uri, :string, 4
      end
    end
    add_message "google.cloud.deploy.v1.ListReleasesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.deploy.v1.ListReleasesResponse" do
      repeated :releases, :message, 1, "google.cloud.deploy.v1.Release"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.deploy.v1.GetReleaseRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.deploy.v1.CreateReleaseRequest" do
      optional :parent, :string, 1
      optional :release_id, :string, 2
      optional :release, :message, 3, "google.cloud.deploy.v1.Release"
      optional :request_id, :string, 4
      optional :validate_only, :bool, 5
    end
    add_message "google.cloud.deploy.v1.Rollout" do
      optional :name, :string, 1
      optional :uid, :string, 2
      optional :description, :string, 3
      map :annotations, :string, :string, 4
      map :labels, :string, :string, 5
      optional :create_time, :message, 6, "google.protobuf.Timestamp"
      optional :approve_time, :message, 7, "google.protobuf.Timestamp"
      optional :enqueue_time, :message, 8, "google.protobuf.Timestamp"
      optional :deploy_start_time, :message, 9, "google.protobuf.Timestamp"
      optional :deploy_end_time, :message, 10, "google.protobuf.Timestamp"
      optional :target_id, :string, 18
      optional :approval_state, :enum, 12, "google.cloud.deploy.v1.Rollout.ApprovalState"
      optional :state, :enum, 13, "google.cloud.deploy.v1.Rollout.State"
      optional :failure_reason, :string, 14
      optional :deploying_build, :string, 17
      optional :etag, :string, 16
      optional :deploy_failure_cause, :enum, 19, "google.cloud.deploy.v1.Rollout.FailureCause"
    end
    add_enum "google.cloud.deploy.v1.Rollout.ApprovalState" do
      value :APPROVAL_STATE_UNSPECIFIED, 0
      value :NEEDS_APPROVAL, 1
      value :DOES_NOT_NEED_APPROVAL, 2
      value :APPROVED, 3
      value :REJECTED, 4
    end
    add_enum "google.cloud.deploy.v1.Rollout.State" do
      value :STATE_UNSPECIFIED, 0
      value :SUCCEEDED, 1
      value :FAILED, 2
      value :IN_PROGRESS, 3
      value :PENDING_APPROVAL, 4
      value :APPROVAL_REJECTED, 5
      value :PENDING, 6
      value :PENDING_RELEASE, 7
    end
    add_enum "google.cloud.deploy.v1.Rollout.FailureCause" do
      value :FAILURE_CAUSE_UNSPECIFIED, 0
      value :CLOUD_BUILD_UNAVAILABLE, 1
      value :EXECUTION_FAILED, 2
      value :DEADLINE_EXCEEDED, 3
      value :RELEASE_FAILED, 4
    end
    add_message "google.cloud.deploy.v1.ListRolloutsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.deploy.v1.ListRolloutsResponse" do
      repeated :rollouts, :message, 1, "google.cloud.deploy.v1.Rollout"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.deploy.v1.GetRolloutRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.deploy.v1.CreateRolloutRequest" do
      optional :parent, :string, 1
      optional :rollout_id, :string, 2
      optional :rollout, :message, 3, "google.cloud.deploy.v1.Rollout"
      optional :request_id, :string, 4
      optional :validate_only, :bool, 5
    end
    add_message "google.cloud.deploy.v1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_message, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
    end
    add_message "google.cloud.deploy.v1.ApproveRolloutRequest" do
      optional :name, :string, 1
      optional :approved, :bool, 2
    end
    add_message "google.cloud.deploy.v1.ApproveRolloutResponse" do
    end
    add_message "google.cloud.deploy.v1.Config" do
      optional :name, :string, 1
      repeated :supported_versions, :message, 2, "google.cloud.deploy.v1.SkaffoldVersion"
      optional :default_skaffold_version, :string, 3
    end
    add_message "google.cloud.deploy.v1.SkaffoldVersion" do
      optional :version, :string, 1
      optional :support_end_date, :message, 2, "google.type.Date"
    end
    add_message "google.cloud.deploy.v1.GetConfigRequest" do
      optional :name, :string, 1
    end
  end
end

module Google
  module Cloud
    module Deploy
      module V1
        DeliveryPipeline = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.DeliveryPipeline").msgclass
        SerialPipeline = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.SerialPipeline").msgclass
        Stage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Stage").msgclass
        PipelineReadyCondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.PipelineReadyCondition").msgclass
        TargetsPresentCondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.TargetsPresentCondition").msgclass
        PipelineCondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.PipelineCondition").msgclass
        ListDeliveryPipelinesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ListDeliveryPipelinesRequest").msgclass
        ListDeliveryPipelinesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ListDeliveryPipelinesResponse").msgclass
        GetDeliveryPipelineRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.GetDeliveryPipelineRequest").msgclass
        CreateDeliveryPipelineRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.CreateDeliveryPipelineRequest").msgclass
        UpdateDeliveryPipelineRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.UpdateDeliveryPipelineRequest").msgclass
        DeleteDeliveryPipelineRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.DeleteDeliveryPipelineRequest").msgclass
        Target = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Target").msgclass
        ExecutionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ExecutionConfig").msgclass
        ExecutionConfig::ExecutionEnvironmentUsage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ExecutionConfig.ExecutionEnvironmentUsage").enummodule
        DefaultPool = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.DefaultPool").msgclass
        PrivatePool = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.PrivatePool").msgclass
        GkeCluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.GkeCluster").msgclass
        AnthosCluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.AnthosCluster").msgclass
        ListTargetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ListTargetsRequest").msgclass
        ListTargetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ListTargetsResponse").msgclass
        GetTargetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.GetTargetRequest").msgclass
        CreateTargetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.CreateTargetRequest").msgclass
        UpdateTargetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.UpdateTargetRequest").msgclass
        DeleteTargetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.DeleteTargetRequest").msgclass
        Release = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Release").msgclass
        Release::TargetRender = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Release.TargetRender").msgclass
        Release::TargetRender::TargetRenderState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Release.TargetRender.TargetRenderState").enummodule
        Release::TargetRender::FailureCause = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Release.TargetRender.FailureCause").enummodule
        Release::RenderState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Release.RenderState").enummodule
        BuildArtifact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.BuildArtifact").msgclass
        TargetArtifact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.TargetArtifact").msgclass
        ListReleasesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ListReleasesRequest").msgclass
        ListReleasesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ListReleasesResponse").msgclass
        GetReleaseRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.GetReleaseRequest").msgclass
        CreateReleaseRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.CreateReleaseRequest").msgclass
        Rollout = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Rollout").msgclass
        Rollout::ApprovalState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Rollout.ApprovalState").enummodule
        Rollout::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Rollout.State").enummodule
        Rollout::FailureCause = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Rollout.FailureCause").enummodule
        ListRolloutsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ListRolloutsRequest").msgclass
        ListRolloutsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ListRolloutsResponse").msgclass
        GetRolloutRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.GetRolloutRequest").msgclass
        CreateRolloutRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.CreateRolloutRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.OperationMetadata").msgclass
        ApproveRolloutRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ApproveRolloutRequest").msgclass
        ApproveRolloutResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.ApproveRolloutResponse").msgclass
        Config = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.Config").msgclass
        SkaffoldVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.SkaffoldVersion").msgclass
        GetConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.deploy.v1.GetConfigRequest").msgclass
      end
    end
  end
end