# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Redis
      module V1
        # Node specific properties.
        # @!attribute [r] id
        #   @return [::String]
        #     Output only. Node identifying string. e.g. 'node-0', 'node-1'
        # @!attribute [r] zone
        #   @return [::String]
        #     Output only. Location of the node.
        class NodeInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A Memorystore for Redis instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Unique name of the resource in this scope including project and
        #     location using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #
        #     Note: Redis instances are managed and addressed at regional level so
        #     location_id here refers to a GCP region; however, users may choose which
        #     specific zone (or collection of zones for cross-zone instances) an instance
        #     should be provisioned in. Refer to
        #     {::Google::Cloud::Redis::V1::Instance#location_id location_id} and
        #     {::Google::Cloud::Redis::V1::Instance#alternative_location_id alternative_location_id}
        #     fields for more details.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     An arbitrary and optional user-provided name for the instance.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Resource labels to represent user provided metadata
        # @!attribute [rw] location_id
        #   @return [::String]
        #     Optional. The zone where the instance will be provisioned. If not provided,
        #     the service will choose a zone from the specified region for the instance.
        #     For standard tier, additional nodes will be added across multiple zones for
        #     protection against zonal failures. If specified, at least one node will be
        #     provisioned in this zone.
        # @!attribute [rw] alternative_location_id
        #   @return [::String]
        #     Optional. If specified, at least one node will be provisioned in this zone
        #     in addition to the zone specified in location_id. Only applicable to
        #     standard tier. If provided, it must be a different zone from the one
        #     provided in [location_id]. Additional nodes beyond the first 2 will be
        #     placed in zones selected by the service.
        # @!attribute [rw] redis_version
        #   @return [::String]
        #     Optional. The version of Redis software.
        #     If not provided, latest supported version will be used. Currently, the
        #     supported values are:
        #
        #      *   `REDIS_3_2` for Redis 3.2 compatibility
        #      *   `REDIS_4_0` for Redis 4.0 compatibility (default)
        #      *   `REDIS_5_0` for Redis 5.0 compatibility
        #      *   `REDIS_6_X` for Redis 6.x compatibility
        # @!attribute [rw] reserved_ip_range
        #   @return [::String]
        #     Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses
        #     that are reserved for this instance. Range must
        #     be unique and non-overlapping with existing subnets in an authorized
        #     network. For PRIVATE_SERVICE_ACCESS mode, the name of one allocated IP
        #     address ranges associated with this private service access connection.
        #     If not provided, the service will choose an unused /29 block, for
        #     example, 10.0.0.0/29 or 192.168.0.0/29.  For READ_REPLICAS_ENABLED
        #     the default block size is /28.
        # @!attribute [rw] secondary_ip_range
        #   @return [::String]
        #     Optional. Additional IP range for node placement. Required when enabling
        #     read replicas on an existing instance. For DIRECT_PEERING mode value must
        #     be a CIDR range of size /28, or "auto". For PRIVATE_SERVICE_ACCESS mode
        #     value must be the name of an allocated address range associated with the
        #     private service access connection, or "auto".
        # @!attribute [r] host
        #   @return [::String]
        #     Output only. Hostname or IP address of the exposed Redis endpoint used by
        #     clients to connect to the service.
        # @!attribute [r] port
        #   @return [::Integer]
        #     Output only. The port number of the exposed Redis endpoint.
        # @!attribute [r] current_location_id
        #   @return [::String]
        #     Output only. The current zone where the Redis primary node is located. In
        #     basic tier, this will always be the same as [location_id]. In
        #     standard tier, this can be the zone of any node in the instance.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the instance was created.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Redis::V1::Instance::State]
        #     Output only. The current state of this instance.
        # @!attribute [r] status_message
        #   @return [::String]
        #     Output only. Additional information about the current status of this
        #     instance, if available.
        # @!attribute [rw] redis_configs
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Redis configuration parameters, according to
        #     http://redis.io/topics/config. Currently, the only supported parameters
        #     are:
        #
        #      Redis version 3.2 and newer:
        #
        #      *   maxmemory-policy
        #      *   notify-keyspace-events
        #
        #      Redis version 4.0 and newer:
        #
        #      *   activedefrag
        #      *   lfu-decay-time
        #      *   lfu-log-factor
        #      *   maxmemory-gb
        #
        #      Redis version 5.0 and newer:
        #
        #      *   stream-node-max-bytes
        #      *   stream-node-max-entries
        # @!attribute [rw] tier
        #   @return [::Google::Cloud::Redis::V1::Instance::Tier]
        #     Required. The service tier of the instance.
        # @!attribute [rw] memory_size_gb
        #   @return [::Integer]
        #     Required. Redis memory size in GiB.
        # @!attribute [rw] authorized_network
        #   @return [::String]
        #     Optional. The full name of the Google Compute Engine
        #     [network](https://cloud.google.com/vpc/docs/vpc) to which the
        #     instance is connected. If left unspecified, the `default` network
        #     will be used.
        # @!attribute [r] persistence_iam_identity
        #   @return [::String]
        #     Output only. Cloud IAM identity used by import / export operations to
        #     transfer data to/from Cloud Storage. Format is
        #     "serviceAccount:<service_account_email>". The value may change over time
        #     for a given instance so should be checked before each import/export
        #     operation.
        # @!attribute [rw] connect_mode
        #   @return [::Google::Cloud::Redis::V1::Instance::ConnectMode]
        #     Optional. The network connect mode of the Redis instance.
        #     If not provided, the connect mode defaults to DIRECT_PEERING.
        # @!attribute [rw] auth_enabled
        #   @return [::Boolean]
        #     Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If
        #     set to "true" AUTH is enabled on the instance. Default value is "false"
        #     meaning AUTH is disabled.
        # @!attribute [r] server_ca_certs
        #   @return [::Array<::Google::Cloud::Redis::V1::TlsCertificate>]
        #     Output only. List of server CA certificates for the instance.
        # @!attribute [rw] transit_encryption_mode
        #   @return [::Google::Cloud::Redis::V1::Instance::TransitEncryptionMode]
        #     Optional. The TLS mode of the Redis instance.
        #     If not provided, TLS is disabled for the instance.
        # @!attribute [rw] maintenance_policy
        #   @return [::Google::Cloud::Redis::V1::MaintenancePolicy]
        #     Optional. The maintenance policy for the instance. If not provided,
        #     maintenance events can be performed at any time.
        # @!attribute [r] maintenance_schedule
        #   @return [::Google::Cloud::Redis::V1::MaintenanceSchedule]
        #     Output only. Date and time of upcoming maintenance events which have been
        #     scheduled.
        # @!attribute [rw] replica_count
        #   @return [::Integer]
        #     Optional. The number of replica nodes. The valid range for the Standard
        #     Tier with read replicas enabled is [1-5] and defaults to 2. If read
        #     replicas are not enabled for a Standard Tier instance, the only valid value
        #     is 1 and the default is 1. The valid value for basic tier is 0 and the
        #     default is also 0.
        # @!attribute [r] nodes
        #   @return [::Array<::Google::Cloud::Redis::V1::NodeInfo>]
        #     Output only. Info per node.
        # @!attribute [r] read_endpoint
        #   @return [::String]
        #     Output only. Hostname or IP address of the exposed readonly Redis
        #     endpoint. Standard tier only. Targets all healthy replica nodes in
        #     instance. Replication is asynchronous and replica nodes will exhibit some
        #     lag behind the primary. Write requests must target 'host'.
        # @!attribute [r] read_endpoint_port
        #   @return [::Integer]
        #     Output only. The port number of the exposed readonly redis
        #     endpoint. Standard tier only. Write requests should target 'port'.
        # @!attribute [rw] read_replicas_mode
        #   @return [::Google::Cloud::Redis::V1::Instance::ReadReplicasMode]
        #     Optional. Read replicas mode for the instance. Defaults to
        #     READ_REPLICAS_DISABLED.
        # @!attribute [rw] customer_managed_key
        #   @return [::String]
        #     Optional. The KMS key reference that the customer provides when trying to
        #     create the instance.
        # @!attribute [rw] persistence_config
        #   @return [::Google::Cloud::Redis::V1::PersistenceConfig]
        #     Optional. Persistence configuration parameters
        # @!attribute [rw] suspension_reasons
        #   @return [::Array<::Google::Cloud::Redis::V1::Instance::SuspensionReason>]
        #     Optional. reasons that causes instance in "SUSPENDED" state.
        # @!attribute [rw] maintenance_version
        #   @return [::String]
        #     Optional. The self service update maintenance version.
        #     The version is date based such as "20210712_00_00".
        # @!attribute [rw] available_maintenance_versions
        #   @return [::Array<::String>]
        #     Optional. The available maintenance versions that an instance could update
        #     to.
        class Instance
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
          class RedisConfigsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents the different states of a Redis instance.
          module State
            # Not set.
            STATE_UNSPECIFIED = 0

            # Redis instance is being created.
            CREATING = 1

            # Redis instance has been created and is fully usable.
            READY = 2

            # Redis instance configuration is being updated. Certain kinds of updates
            # may cause the instance to become unusable while the update is in
            # progress.
            UPDATING = 3

            # Redis instance is being deleted.
            DELETING = 4

            # Redis instance is being repaired and may be unusable.
            REPAIRING = 5

            # Maintenance is being performed on this Redis instance.
            MAINTENANCE = 6

            # Redis instance is importing data (availability may be affected).
            IMPORTING = 8

            # Redis instance is failing over (availability may be affected).
            FAILING_OVER = 9
          end

          # Available service tiers to choose from
          module Tier
            # Not set.
            TIER_UNSPECIFIED = 0

            # BASIC tier: standalone instance
            BASIC = 1

            # STANDARD_HA tier: highly available primary/replica instances
            STANDARD_HA = 3
          end

          # Available connection modes.
          module ConnectMode
            # Not set.
            CONNECT_MODE_UNSPECIFIED = 0

            # Connect via direct peering to the Memorystore for Redis hosted service.
            DIRECT_PEERING = 1

            # Connect your Memorystore for Redis instance using Private Service
            # Access. Private services access provides an IP address range for multiple
            # Google Cloud services, including Memorystore.
            PRIVATE_SERVICE_ACCESS = 2
          end

          # Available TLS modes.
          module TransitEncryptionMode
            # Not set.
            TRANSIT_ENCRYPTION_MODE_UNSPECIFIED = 0

            # Client to Server traffic encryption enabled with server authentication.
            SERVER_AUTHENTICATION = 1

            # TLS is disabled for the instance.
            DISABLED = 2
          end

          # Read replicas mode.
          module ReadReplicasMode
            # If not set, Memorystore Redis backend will default to
            # READ_REPLICAS_DISABLED.
            READ_REPLICAS_MODE_UNSPECIFIED = 0

            # If disabled, read endpoint will not be provided and the instance cannot
            # scale up or down the number of replicas.
            READ_REPLICAS_DISABLED = 1

            # If enabled, read endpoint will be provided and the instance can scale
            # up and down the number of replicas. Not valid for basic tier.
            READ_REPLICAS_ENABLED = 2
          end

          # Possible reasons for the instance to be in a "SUSPENDED" state.
          module SuspensionReason
            # Not set.
            SUSPENSION_REASON_UNSPECIFIED = 0

            # Something wrong with the CMEK key provided by customer.
            CUSTOMER_MANAGED_KEY_ISSUE = 1
          end
        end

        # Configuration of the persistence functionality.
        # @!attribute [rw] persistence_mode
        #   @return [::Google::Cloud::Redis::V1::PersistenceConfig::PersistenceMode]
        #     Optional. Controls whether Persistence features are enabled.
        #     If not provided, the existing value will be used.
        # @!attribute [rw] rdb_snapshot_period
        #   @return [::Google::Cloud::Redis::V1::PersistenceConfig::SnapshotPeriod]
        #     Optional. Period between RDB snapshots. Snapshots will be attempted every
        #     period starting from the provided snapshot start time. For example, a start
        #     time of 01/01/2033 06:45 and SIX_HOURS snapshot period will do nothing
        #     until 01/01/2033, and then trigger snapshots every day at 06:45, 12:45,
        #     18:45, and 00:45 the next day, and so on. If not provided,
        #     TWENTY_FOUR_HOURS will be used as default.
        # @!attribute [r] rdb_next_snapshot_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The next time that a snapshot attempt is scheduled to occur.
        # @!attribute [rw] rdb_snapshot_start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. Date and time that the first snapshot was/will be attempted, and
        #     to which future snapshots will be aligned. If not provided, the current
        #     time will be used.
        class PersistenceConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Available Persistence modes.
          module PersistenceMode
            # Not set.
            PERSISTENCE_MODE_UNSPECIFIED = 0

            # Persistence is disabled for the instance,
            # and any existing snapshots are deleted.
            DISABLED = 1

            # RDB based Persistence is enabled.
            RDB = 2
          end

          # Available snapshot periods for scheduling.
          module SnapshotPeriod
            # Not set.
            SNAPSHOT_PERIOD_UNSPECIFIED = 0

            # Snapshot every 1 hour.
            ONE_HOUR = 3

            # Snapshot every 6 hours.
            SIX_HOURS = 4

            # Snapshot every 12 hours.
            TWELVE_HOURS = 5

            # Snapshot every 24 hours.
            TWENTY_FOUR_HOURS = 6
          end
        end

        # Request for
        # {::Google::Cloud::Redis::V1::CloudRedis::Client#reschedule_maintenance RescheduleMaintenance}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] reschedule_type
        #   @return [::Google::Cloud::Redis::V1::RescheduleMaintenanceRequest::RescheduleType]
        #     Required. If reschedule type is SPECIFIC_TIME, must set up schedule_time as
        #     well.
        # @!attribute [rw] schedule_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Optional. Timestamp when the maintenance shall be rescheduled to if
        #     reschedule_type=SPECIFIC_TIME, in RFC 3339 format, for
        #     example `2012-11-15T16:19:00.094Z`.
        class RescheduleMaintenanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Reschedule options.
          module RescheduleType
            # Not set.
            RESCHEDULE_TYPE_UNSPECIFIED = 0

            # If the user wants to schedule the maintenance to happen now.
            IMMEDIATE = 1

            # If the user wants to use the existing maintenance policy to find the
            # next available window.
            NEXT_AVAILABLE_WINDOW = 2

            # If the user wants to reschedule the maintenance to a specific time.
            SPECIFIC_TIME = 3
          end
        end

        # Maintenance policy for an instance.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the policy was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the policy was last updated.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of what this policy is for. Create/Update methods
        #     return INVALID_ARGUMENT if the length is greater than 512.
        # @!attribute [rw] weekly_maintenance_window
        #   @return [::Array<::Google::Cloud::Redis::V1::WeeklyMaintenanceWindow>]
        #     Optional. Maintenance window that is applied to resources covered by this
        #     policy. Minimum 1. For the current version, the maximum number of
        #     weekly_window is expected to be one.
        class MaintenancePolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Time window in which disruptive maintenance updates occur. Non-disruptive
        # updates can occur inside or outside this window.
        # @!attribute [rw] day
        #   @return [::Google::Type::DayOfWeek]
        #     Required. The day of week that maintenance updates occur.
        # @!attribute [rw] start_time
        #   @return [::Google::Type::TimeOfDay]
        #     Required. Start time of the window in UTC time.
        # @!attribute [r] duration
        #   @return [::Google::Protobuf::Duration]
        #     Output only. Duration of the maintenance window. The current window is
        #     fixed at 1 hour.
        class WeeklyMaintenanceWindow
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Upcoming maintenance schedule. If no maintenance is scheduled, fields are not
        # populated.
        # @!attribute [r] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The start time of any upcoming scheduled maintenance for this
        #     instance.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The end time of any upcoming scheduled maintenance for this
        #     instance.
        # @!attribute [rw] can_reschedule
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Boolean]
        #     If the scheduled maintenance can be rescheduled, default is true.
        # @!attribute [r] schedule_deadline_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The deadline that the maintenance schedule start time can not
        #     go beyond, including reschedule.
        class MaintenanceSchedule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for {::Google::Cloud::Redis::V1::CloudRedis::Client#list_instances ListInstances}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the instance location using the form:
        #         `projects/{project_id}/locations/{location_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        #
        #     If not specified, a default value of 1000 will be used by the service.
        #     Regardless of the page_size value, the response may include a partial list
        #     and a caller should only rely on response's
        #     {::Google::Cloud::Redis::V1::ListInstancesResponse#next_page_token `next_page_token`}
        #     to determine if there are more instances left to be queried.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The `next_page_token` value returned from a previous
        #     {::Google::Cloud::Redis::V1::CloudRedis::Client#list_instances ListInstances} request, if
        #     any.
        class ListInstancesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for {::Google::Cloud::Redis::V1::CloudRedis::Client#list_instances ListInstances}.
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Cloud::Redis::V1::Instance>]
        #     A list of Redis instances in the project in the specified location,
        #     or across all locations.
        #
        #     If the `location_id` in the parent field of the request is "-", all regions
        #     available to the project are queried, and the results aggregated.
        #     If in such an aggregated query a location is unavailable, a placeholder
        #     Redis entry is included in the response with the `name` field set to a
        #     value of the form
        #     `projects/{project_id}/locations/{location_id}/instances/`- and the
        #     `status` field set to ERROR and `status_message` field set to "location not
        #     available for ListInstances".
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListInstancesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for {::Google::Cloud::Redis::V1::CloudRedis::Client#get_instance GetInstance}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        class GetInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for
        # {::Google::Cloud::Redis::V1::CloudRedis::Client#get_instance_auth_string GetInstanceAuthString}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        class GetInstanceAuthStringRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Instance AUTH string details.
        # @!attribute [rw] auth_string
        #   @return [::String]
        #     AUTH string set on the instance.
        class InstanceAuthString
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for
        # {::Google::Cloud::Redis::V1::CloudRedis::Client#create_instance CreateInstance}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the instance location using the form:
        #         `projects/{project_id}/locations/{location_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] instance_id
        #   @return [::String]
        #     Required. The logical name of the Redis instance in the customer project
        #     with the following restrictions:
        #
        #     * Must contain only lowercase letters, numbers, and hyphens.
        #     * Must start with a letter.
        #     * Must be between 1-40 characters.
        #     * Must end with a number or a letter.
        #     * Must be unique within the customer project / location
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::Redis::V1::Instance]
        #     Required. A Redis [Instance] resource
        class CreateInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for
        # {::Google::Cloud::Redis::V1::CloudRedis::Client#update_instance UpdateInstance}.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update. At least one path must be supplied in
        #     this field. The elements of the repeated paths field may only include these
        #     fields from {::Google::Cloud::Redis::V1::Instance Instance}:
        #
        #      *   `displayName`
        #      *   `labels`
        #      *   `memorySizeGb`
        #      *   `redisConfig`
        #      *   `replica_count`
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::Redis::V1::Instance]
        #     Required. Update description.
        #     Only fields specified in update_mask are updated.
        class UpdateInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for
        # {::Google::Cloud::Redis::V1::CloudRedis::Client#upgrade_instance UpgradeInstance}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] redis_version
        #   @return [::String]
        #     Required. Specifies the target version of Redis software to upgrade to.
        class UpgradeInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for
        # {::Google::Cloud::Redis::V1::CloudRedis::Client#delete_instance DeleteInstance}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        class DeleteInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The Cloud Storage location for the input content
        # @!attribute [rw] uri
        #   @return [::String]
        #     Required. Source data URI. (e.g. 'gs://my_bucket/my_object').
        class GcsSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The input content
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::Redis::V1::GcsSource]
        #     Google Cloud Storage location where input content is located.
        class InputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for {::Google::Cloud::Redis::V1::CloudRedis::Client#import_instance Import}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] input_config
        #   @return [::Google::Cloud::Redis::V1::InputConfig]
        #     Required. Specify data to be imported.
        class ImportInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The Cloud Storage location for the output content
        # @!attribute [rw] uri
        #   @return [::String]
        #     Required. Data destination URI (e.g.
        #     'gs://my_bucket/my_object'). Existing files will be overwritten.
        class GcsDestination
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The output content
        # @!attribute [rw] gcs_destination
        #   @return [::Google::Cloud::Redis::V1::GcsDestination]
        #     Google Cloud Storage destination for output content.
        class OutputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for {::Google::Cloud::Redis::V1::CloudRedis::Client#export_instance Export}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] output_config
        #   @return [::Google::Cloud::Redis::V1::OutputConfig]
        #     Required. Specify data to be exported.
        class ExportInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for {::Google::Cloud::Redis::V1::CloudRedis::Client#failover_instance Failover}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Redis instance resource name using the form:
        #         `projects/{project_id}/locations/{location_id}/instances/{instance_id}`
        #     where `location_id` refers to a GCP region.
        # @!attribute [rw] data_protection_mode
        #   @return [::Google::Cloud::Redis::V1::FailoverInstanceRequest::DataProtectionMode]
        #     Optional. Available data protection modes that the user can choose. If it's
        #     unspecified, data protection mode will be LIMITED_DATA_LOSS by default.
        class FailoverInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Specifies different modes of operation in relation to the data retention.
          module DataProtectionMode
            # Defaults to LIMITED_DATA_LOSS if a data protection mode is not
            # specified.
            DATA_PROTECTION_MODE_UNSPECIFIED = 0

            # Instance failover will be protected with data loss control. More
            # specifically, the failover will only be performed if the current
            # replication offset diff between primary and replica is under a certain
            # threshold.
            LIMITED_DATA_LOSS = 1

            # Instance failover will be performed without data loss control.
            FORCE_DATA_LOSS = 2
          end
        end

        # Represents the v1 metadata of the long-running operation.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Creation timestamp.
        # @!attribute [rw] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     End timestamp.
        # @!attribute [rw] target
        #   @return [::String]
        #     Operation target.
        # @!attribute [rw] verb
        #   @return [::String]
        #     Operation verb.
        # @!attribute [rw] status_detail
        #   @return [::String]
        #     Operation status details.
        # @!attribute [rw] cancel_requested
        #   @return [::Boolean]
        #     Specifies if cancellation was requested for the operation.
        # @!attribute [rw] api_version
        #   @return [::String]
        #     API version.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # This location metadata represents additional configuration options for a
        # given location where a Redis instance may be created. All fields are output
        # only. It is returned as content of the
        # `google.cloud.location.Location.metadata` field.
        # @!attribute [r] available_zones
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::Redis::V1::ZoneMetadata}]
        #     Output only. The set of available zones in the location. The map is keyed
        #     by the lowercase ID of each zone, as defined by GCE. These keys can be
        #     specified in `location_id` or `alternative_location_id` fields when
        #     creating a Redis instance.
        class LocationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::Redis::V1::ZoneMetadata]
          class AvailableZonesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Defines specific information for a particular zone. Currently empty and
        # reserved for future use only.
        class ZoneMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # TlsCertificate Resource
        # @!attribute [rw] serial_number
        #   @return [::String]
        #     Serial number, as extracted from the certificate.
        # @!attribute [rw] cert
        #   @return [::String]
        #     PEM representation.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the certificate was created in [RFC
        #     3339](https://tools.ietf.org/html/rfc3339) format, for example
        #     `2020-05-18T00:00:00.094Z`.
        # @!attribute [r] expire_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the certificate expires in [RFC
        #     3339](https://tools.ietf.org/html/rfc3339) format, for example
        #     `2020-05-18T00:00:00.094Z`.
        # @!attribute [rw] sha1_fingerprint
        #   @return [::String]
        #     Sha1 Fingerprint of the certificate.
        class TlsCertificate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
