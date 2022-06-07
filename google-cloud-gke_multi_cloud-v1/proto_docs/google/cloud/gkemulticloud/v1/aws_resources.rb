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
    module GkeMultiCloud
      module V1
        # An Anthos cluster running on AWS.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of this resource.
        #
        #     Cluster names are formatted as
        #     `projects/<project-number>/locations/<region>/awsClusters/<cluster-id>`.
        #
        #     See [Resource Names](https://cloud.google.com/apis/design/resource_names)
        #     for more details on GCP resource names.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A human readable description of this cluster.
        #     Cannot be longer than 255 UTF-8 encoded bytes.
        # @!attribute [rw] networking
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsClusterNetworking]
        #     Required. Cluster-wide networking configuration.
        # @!attribute [rw] aws_region
        #   @return [::String]
        #     Required. The AWS region where the cluster runs.
        #
        #     Each Google Cloud region supports a subset of nearby AWS regions.
        #     You can call
        #     {::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client#get_aws_server_config GetAwsServerConfig}
        #     to list all supported AWS regions within a given Google Cloud region.
        # @!attribute [rw] control_plane
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsControlPlane]
        #     Required. Configuration related to the cluster control plane.
        # @!attribute [rw] authorization
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsAuthorization]
        #     Required. Configuration related to the cluster RBAC settings.
        # @!attribute [r] state
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsCluster::State]
        #     Output only. The current state of the cluster.
        # @!attribute [r] endpoint
        #   @return [::String]
        #     Output only. The endpoint of the cluster's API server.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. A globally unique identifier for the cluster.
        # @!attribute [r] reconciling
        #   @return [::Boolean]
        #     Output only. If set, there are currently changes in flight to the cluster.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this cluster was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this cluster was last updated.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Allows clients to perform consistent read-modify-writes
        #     through optimistic concurrency control.
        #
        #     Can be sent on update and delete requests to ensure the
        #     client has an up-to-date value before proceeding.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Annotations on the cluster.
        #
        #     This field has the same restrictions as Kubernetes annotations.
        #     The total size of all keys and values combined is limited to 256k.
        #     Key can have 2 segments: prefix (optional) and name (required),
        #     separated by a slash (/).
        #     Prefix must be a DNS subdomain.
        #     Name must be 63 characters or less, begin and end with alphanumerics,
        #     with dashes (-), underscores (_), dots (.), and alphanumerics between.
        # @!attribute [r] workload_identity_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::WorkloadIdentityConfig]
        #     Output only. Workload Identity settings.
        # @!attribute [r] cluster_ca_certificate
        #   @return [::String]
        #     Output only. PEM encoded x509 certificate of the cluster root of trust.
        # @!attribute [rw] fleet
        #   @return [::Google::Cloud::GkeMultiCloud::V1::Fleet]
        #     Optional. Fleet configuration.
        # @!attribute [rw] logging_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::LoggingConfig]
        #     Optional. Logging configuration for this cluster.
        class AwsCluster
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The lifecycle state of the cluster.
          module State
            # Not set.
            STATE_UNSPECIFIED = 0

            # The PROVISIONING state indicates the cluster is being created.
            PROVISIONING = 1

            # The RUNNING state indicates the cluster has been created and is fully
            # usable.
            RUNNING = 2

            # The RECONCILING state indicates that some work is actively being done on
            # the cluster, such as upgrading the control plane replicas.
            RECONCILING = 3

            # The STOPPING state indicates the cluster is being deleted.
            STOPPING = 4

            # The ERROR state indicates the cluster is in a broken unrecoverable
            # state.
            ERROR = 5

            # The DEGRADED state indicates the cluster requires user action to
            # restore full functionality.
            DEGRADED = 6
          end
        end

        # ControlPlane defines common parameters between control plane nodes.
        # @!attribute [rw] version
        #   @return [::String]
        #     Required. The Kubernetes version to run on control plane replicas
        #     (e.g. `1.19.10-gke.1000`).
        #
        #     You can list all supported versions on a given Google Cloud region by
        #     calling
        #     {::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client#get_aws_server_config GetAwsServerConfig}.
        # @!attribute [rw] instance_type
        #   @return [::String]
        #     Optional. The AWS instance type.
        #
        #     When unspecified, it uses a default based on the cluster's version.
        # @!attribute [rw] ssh_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsSshConfig]
        #     Optional. SSH configuration for how to access the underlying control plane
        #     machines.
        # @!attribute [rw] subnet_ids
        #   @return [::Array<::String>]
        #     Required. The list of subnets where control plane replicas will run.
        #     A replica will be provisioned on each subnet and up to three values
        #     can be provided.
        #     Each subnet must be in a different AWS Availability Zone (AZ).
        # @!attribute [rw] security_group_ids
        #   @return [::Array<::String>]
        #     Optional. The IDs of additional security groups to add to control plane
        #     replicas. The Anthos Multi-Cloud API will automatically create and manage
        #     security groups with the minimum rules needed for a functioning cluster.
        # @!attribute [rw] iam_instance_profile
        #   @return [::String]
        #     Required. The name or ARN of the AWS IAM instance profile to assign to each control
        #     plane replica.
        # @!attribute [rw] root_volume
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsVolumeTemplate]
        #     Optional. Configuration related to the root volume provisioned for each
        #     control plane replica.
        #
        #     Volumes will be provisioned in the availability zone associated
        #     with the corresponding subnet.
        #
        #     When unspecified, it defaults to 32 GiB with the GP2 volume type.
        # @!attribute [rw] main_volume
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsVolumeTemplate]
        #     Optional. Configuration related to the main volume provisioned for each
        #     control plane replica.
        #     The main volume is in charge of storing all of the cluster's etcd state.
        #
        #     Volumes will be provisioned in the availability zone associated
        #     with the corresponding subnet.
        #
        #     When unspecified, it defaults to 8 GiB with the GP2 volume type.
        # @!attribute [rw] database_encryption
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsDatabaseEncryption]
        #     Required. The ARN of the AWS KMS key used to encrypt cluster secrets.
        # @!attribute [rw] tags
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. A set of AWS resource tags to propagate to all underlying managed AWS
        #     resources.
        #
        #     Specify at most 50 pairs containing alphanumerics, spaces, and symbols
        #     (.+-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to
        #     255 Unicode characters.
        # @!attribute [rw] aws_services_authentication
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsServicesAuthentication]
        #     Required. Authentication configuration for management of AWS resources.
        # @!attribute [rw] proxy_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsProxyConfig]
        #     Optional. Proxy configuration for outbound HTTP(S) traffic.
        # @!attribute [rw] config_encryption
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsConfigEncryption]
        #     Required. Config encryption for user data.
        # @!attribute [rw] instance_placement
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsInstancePlacement]
        #     Optional. The placement to use on control plane instances.
        #     When unspecified, the VPC's default tenancy will be used.
        class AwsControlPlane
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class TagsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Authentication configuration for the management of AWS resources.
        # @!attribute [rw] role_arn
        #   @return [::String]
        #     Required. The Amazon Resource Name (ARN) of the role that the Anthos Multi-Cloud API
        #     will assume when managing AWS resources on your account.
        # @!attribute [rw] role_session_name
        #   @return [::String]
        #     Optional. An identifier for the assumed role session.
        #
        #     When unspecified, it defaults to `multicloud-service-agent`.
        class AwsServicesAuthentication
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration related to the cluster RBAC settings.
        # @!attribute [rw] admin_users
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AwsClusterUser>]
        #     Required. Users that can perform operations as a cluster admin. A managed
        #     ClusterRoleBinding will be created to grant the `cluster-admin` ClusterRole
        #     to the users. Up to ten admin users can be provided.
        #
        #     For more info on RBAC, see
        #     https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
        class AwsAuthorization
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Identities of a user-type subject for AWS clusters.
        # @!attribute [rw] username
        #   @return [::String]
        #     Required. The name of the user, e.g. `my-gcp-id@gmail.com`.
        class AwsClusterUser
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration related to application-layer secrets encryption.
        # @!attribute [rw] kms_key_arn
        #   @return [::String]
        #     Required. The ARN of the AWS KMS key used to encrypt cluster secrets.
        class AwsDatabaseEncryption
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Configuration template for AWS EBS volumes.
        # @!attribute [rw] size_gib
        #   @return [::Integer]
        #     Optional. The size of the volume, in GiBs.
        #
        #     When unspecified, a default value is provided. See the specific reference
        #     in the parent resource.
        # @!attribute [rw] volume_type
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsVolumeTemplate::VolumeType]
        #     Optional. Type of the EBS volume.
        #
        #     When unspecified, it defaults to GP2 volume.
        # @!attribute [rw] iops
        #   @return [::Integer]
        #     Optional. The number of I/O operations per second (IOPS) to provision for GP3 volume.
        # @!attribute [rw] kms_key_arn
        #   @return [::String]
        #     Optional. The Amazon Resource Name (ARN) of the Customer Managed Key (CMK) used to
        #     encrypt AWS EBS volumes.
        #
        #     If not specified, the default Amazon managed key associated to
        #     the AWS region where this cluster runs will be used.
        class AwsVolumeTemplate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Types of supported EBS volumes. We currently only support GP2 or GP3
          # volumes.
          # See https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
          # for more information.
          module VolumeType
            # Not set.
            VOLUME_TYPE_UNSPECIFIED = 0

            # GP2 (General Purpose SSD volume type).
            GP2 = 1

            # GP3 (General Purpose SSD volume type).
            GP3 = 2
          end
        end

        # ClusterNetworking defines cluster-wide networking configuration.
        #
        # Anthos clusters on AWS run on a single VPC. This includes control
        # plane replicas and node pool nodes.
        # @!attribute [rw] vpc_id
        #   @return [::String]
        #     Required. The VPC associated with the cluster. All component clusters
        #     (i.e. control plane and node pools) run on a single VPC.
        #
        #     This field cannot be changed after creation.
        # @!attribute [rw] pod_address_cidr_blocks
        #   @return [::Array<::String>]
        #     Required. All pods in the cluster are assigned an IPv4 address from these ranges.
        #     Only a single range is supported.
        #     This field cannot be changed after creation.
        # @!attribute [rw] service_address_cidr_blocks
        #   @return [::Array<::String>]
        #     Required. All services in the cluster are assigned an IPv4 address from these ranges.
        #     Only a single range is supported.
        #     This field cannot be changed after creation.
        class AwsClusterNetworking
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An Anthos node pool running on AWS.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of this resource.
        #
        #     Node pool names are formatted as
        #     `projects/<project-number>/locations/<region>/awsClusters/<cluster-id>/awsNodePools/<node-pool-id>`.
        #
        #     For more details on Google Cloud resource names,
        #     see [Resource Names](https://cloud.google.com/apis/design/resource_names)
        # @!attribute [rw] version
        #   @return [::String]
        #     Required. The Kubernetes version to run on this node pool (e.g. `1.19.10-gke.1000`).
        #
        #     You can list all supported versions on a given Google Cloud region by
        #     calling
        #     {::Google::Cloud::GkeMultiCloud::V1::AwsClusters::Client#get_aws_server_config GetAwsServerConfig}.
        # @!attribute [rw] config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsNodeConfig]
        #     Required. The configuration of the node pool.
        # @!attribute [rw] autoscaling
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsNodePoolAutoscaling]
        #     Required. Autoscaler configuration for this node pool.
        # @!attribute [rw] subnet_id
        #   @return [::String]
        #     Required. The subnet where the node pool node run.
        # @!attribute [r] state
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsNodePool::State]
        #     Output only. The lifecycle state of the node pool.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. A globally unique identifier for the node pool.
        # @!attribute [r] reconciling
        #   @return [::Boolean]
        #     Output only. If set, there are currently changes in flight to the node
        #     pool.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this node pool was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which this node pool was last updated.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Allows clients to perform consistent read-modify-writes
        #     through optimistic concurrency control.
        #
        #     Can be sent on update and delete requests to ensure the
        #     client has an up-to-date value before proceeding.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Annotations on the node pool.
        #
        #     This field has the same restrictions as Kubernetes annotations.
        #     The total size of all keys and values combined is limited to 256k.
        #     Key can have 2 segments: prefix (optional) and name (required),
        #     separated by a slash (/).
        #     Prefix must be a DNS subdomain.
        #     Name must be 63 characters or less, begin and end with alphanumerics,
        #     with dashes (-), underscores (_), dots (.), and alphanumerics between.
        # @!attribute [rw] max_pods_constraint
        #   @return [::Google::Cloud::GkeMultiCloud::V1::MaxPodsConstraint]
        #     Required. The constraint on the maximum number of pods that can be run
        #     simultaneously on a node in the node pool.
        class AwsNodePool
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The lifecycle state of the node pool.
          module State
            # Not set.
            STATE_UNSPECIFIED = 0

            # The PROVISIONING state indicates the node pool is being created.
            PROVISIONING = 1

            # The RUNNING state indicates the node pool has been created
            # and is fully usable.
            RUNNING = 2

            # The RECONCILING state indicates that the node pool is being reconciled.
            RECONCILING = 3

            # The STOPPING state indicates the node pool is being deleted.
            STOPPING = 4

            # The ERROR state indicates the node pool is in a broken unrecoverable
            # state.
            ERROR = 5

            # The DEGRADED state indicates the node pool requires user action to
            # restore full functionality.
            DEGRADED = 6
          end
        end

        # Parameters that describe the nodes in a cluster.
        # @!attribute [rw] instance_type
        #   @return [::String]
        #     Optional. The AWS instance type.
        #
        #     When unspecified, it uses a default based on the node pool's version.
        # @!attribute [rw] root_volume
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsVolumeTemplate]
        #     Optional. Template for the root volume provisioned for node pool nodes.
        #     Volumes will be provisioned in the availability zone assigned
        #     to the node pool subnet.
        #
        #     When unspecified, it defaults to 32 GiB with the GP2 volume type.
        # @!attribute [rw] taints
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::NodeTaint>]
        #     Optional. The initial taints assigned to nodes of this node pool.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The initial labels assigned to nodes of this node pool. An object
        #     containing a list of "key": value pairs. Example: { "name": "wrench",
        #     "mass": "1.3kg", "count": "3" }.
        # @!attribute [rw] tags
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Key/value metadata to assign to each underlying AWS resource. Specify at
        #     most 50 pairs containing alphanumerics, spaces, and symbols (.+-=_:@/).
        #     Keys can be up to 127 Unicode characters.
        #     Values can be up to 255 Unicode characters.
        # @!attribute [rw] iam_instance_profile
        #   @return [::String]
        #     Required. The name or ARN of the AWS IAM role assigned to nodes in the pool.
        # @!attribute [rw] image_type
        #   @return [::String]
        #     Optional. The OS image type to use on node pool instances.
        #     Can have a value of `ubuntu`, or `windows` if the cluster enables
        #     the Windows node pool preview feature.
        #
        #     When unspecified, it defaults to `ubuntu`.
        # @!attribute [rw] ssh_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsSshConfig]
        #     Optional. The SSH configuration.
        # @!attribute [rw] security_group_ids
        #   @return [::Array<::String>]
        #     Optional. The IDs of additional security groups to add to nodes in this pool. The
        #     manager will automatically create security groups with minimum rules
        #     needed for a functioning cluster.
        # @!attribute [rw] proxy_config
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsProxyConfig]
        #     Optional. Proxy configuration for outbound HTTP(S) traffic.
        # @!attribute [rw] config_encryption
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsConfigEncryption]
        #     Required. Config encryption for user data.
        # @!attribute [rw] instance_placement
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsInstancePlacement]
        #     Optional. Placement related info for this node.
        #     When unspecified, the VPC's default tenancy will be used.
        class AwsNodeConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class TagsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # AwsNodePoolAutoscaling contains information required by cluster autoscaler
        # to adjust the size of the node pool to the current cluster usage.
        # @!attribute [rw] min_node_count
        #   @return [::Integer]
        #     Required. Minimum number of nodes in the node pool. Must be greater than or equal to
        #     1 and less than or equal to max_node_count.
        # @!attribute [rw] max_node_count
        #   @return [::Integer]
        #     Required. Maximum number of nodes in the node pool. Must be greater than or equal to
        #     min_node_count and less than or equal to 50.
        class AwsNodePoolAutoscaling
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # AwsServerConfig is the configuration of GKE cluster on AWS.
        # @!attribute [rw] name
        #   @return [::String]
        #     The resource name of the config.
        # @!attribute [rw] valid_versions
        #   @return [::Array<::Google::Cloud::GkeMultiCloud::V1::AwsK8sVersionInfo>]
        #     List of valid Kubernetes versions.
        # @!attribute [rw] supported_aws_regions
        #   @return [::Array<::String>]
        #     The list of supported AWS regions.
        class AwsServerConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Kubernetes version information of GKE cluster on AWS.
        # @!attribute [rw] version
        #   @return [::String]
        #     Kubernetes version name.
        class AwsK8sVersionInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # SSH configuration for AWS resources.
        # @!attribute [rw] ec2_key_pair
        #   @return [::String]
        #     Required. The name of the EC2 key pair used to login into cluster machines.
        class AwsSshConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of a proxy config stored in AWS Secret Manager.
        # @!attribute [rw] secret_arn
        #   @return [::String]
        #     The ARN of the AWS Secret Manager secret that contains the HTTP(S) proxy
        #     configuration.
        # @!attribute [rw] secret_version
        #   @return [::String]
        #     The version string of the AWS Secret Manager secret that contains the
        #     HTTP(S) proxy configuration.
        class AwsProxyConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Config encryption for user data.
        # @!attribute [rw] kms_key_arn
        #   @return [::String]
        #     Required. The ARN of the AWS KMS key used to encrypt user data.
        class AwsConfigEncryption
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of placement information for an instance.
        # Limitations for using the `host` tenancy:
        #
        #  * T3 instances that use the unlimited CPU credit option don't support host
        #  tenancy.
        # @!attribute [rw] tenancy
        #   @return [::Google::Cloud::GkeMultiCloud::V1::AwsInstancePlacement::Tenancy]
        #     Required. The tenancy for instance.
        class AwsInstancePlacement
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Tenancy defines how EC2 instances are distributed across physical hardware.
          module Tenancy
            # Not set.
            TENANCY_UNSPECIFIED = 0

            # Use default VPC tenancy.
            DEFAULT = 1

            # Run a dedicated instance.
            DEDICATED = 2

            # Launch this instance to a dedicated host.
            HOST = 3
          end
        end
      end
    end
  end
end