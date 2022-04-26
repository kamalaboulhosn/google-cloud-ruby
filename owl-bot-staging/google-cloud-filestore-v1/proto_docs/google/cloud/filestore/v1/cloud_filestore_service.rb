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
    module Filestore
      module V1
        # Network configuration for the instance.
        # @!attribute [rw] network
        #   @return [::String]
        #     The name of the Google Compute Engine
        #     [VPC network](https://cloud.google.com/vpc/docs/vpc) to which the
        #     instance is connected.
        # @!attribute [rw] modes
        #   @return [::Array<::Google::Cloud::Filestore::V1::NetworkConfig::AddressMode>]
        #     Internet protocol versions for which the instance has IP addresses
        #     assigned. For this version, only MODE_IPV4 is supported.
        # @!attribute [rw] reserved_ip_range
        #   @return [::String]
        #     A /29 CIDR block in one of the
        #     [internal IP address
        #     ranges](https://www.arin.net/reference/research/statistics/address_filters/)
        #     that identifies the range of IP addresses reserved for this instance. For
        #     example, 10.0.0.0/29 or 192.168.0.0/29. The range you specify can't overlap
        #     with either existing subnets or assigned IP address ranges for other Cloud
        #     Filestore instances in the selected VPC network.
        # @!attribute [r] ip_addresses
        #   @return [::Array<::String>]
        #     Output only. IPv4 addresses in the format
        #     IPv4 addresses in the format `{octet1}.{octet2}.{octet3}.{octet4}` or
        #     IPv6 addresses in the format
        #     `{block1}:{block2}:{block3}:{block4}:{block5}:{block6}:{block7}:{block8}`.
        class NetworkConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Internet protocol versions supported by Cloud Filestore.
          module AddressMode
            # Internet protocol not set.
            ADDRESS_MODE_UNSPECIFIED = 0

            # Use the IPv4 internet protocol.
            MODE_IPV4 = 1
          end
        end

        # File share configuration for the instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the file share (must be 16 characters or less).
        # @!attribute [rw] capacity_gb
        #   @return [::Integer]
        #     File share capacity in gigabytes (GB).
        #     Cloud Filestore defines 1 GB as 1024^3 bytes.
        # @!attribute [rw] source_backup
        #   @return [::String]
        #     The resource name of the backup, in the format
        #     `projects/{project_number}/locations/{location_id}/backups/{backup_id}`,
        #     that this file share has been restored from.
        # @!attribute [rw] nfs_export_options
        #   @return [::Array<::Google::Cloud::Filestore::V1::NfsExportOptions>]
        #     Nfs Export Options.
        #     There is a limit of 10 export options per file share.
        class FileShareConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # NFS export options specifications.
        # @!attribute [rw] ip_ranges
        #   @return [::Array<::String>]
        #     List of either an IPv4 addresses in the format
        #     `{octet1}.{octet2}.{octet3}.{octet4}` or CIDR ranges in the format
        #     `{octet1}.{octet2}.{octet3}.{octet4}/{mask size}` which may mount the
        #     file share.
        #     Overlapping IP ranges are not allowed, both within and across
        #     NfsExportOptions. An error will be returned.
        #     The limit is 64 IP ranges/addresses for each FileShareConfig among all
        #     NfsExportOptions.
        # @!attribute [rw] access_mode
        #   @return [::Google::Cloud::Filestore::V1::NfsExportOptions::AccessMode]
        #     Either READ_ONLY, for allowing only read requests on the exported
        #     directory, or READ_WRITE, for allowing both read and write requests.
        #     The default is READ_WRITE.
        # @!attribute [rw] squash_mode
        #   @return [::Google::Cloud::Filestore::V1::NfsExportOptions::SquashMode]
        #     Either NO_ROOT_SQUASH, for allowing root access on the exported directory,
        #     or ROOT_SQUASH, for not allowing root access. The default is
        #     NO_ROOT_SQUASH.
        # @!attribute [rw] anon_uid
        #   @return [::Integer]
        #     An integer representing the anonymous user id with a default value of
        #     65534.
        #     Anon_uid may only be set with squash_mode of ROOT_SQUASH.  An error will be
        #     returned if this field is specified for other squash_mode settings.
        # @!attribute [rw] anon_gid
        #   @return [::Integer]
        #     An integer representing the anonymous group id with a default value of
        #     65534.
        #     Anon_gid may only be set with squash_mode of ROOT_SQUASH.  An error will be
        #     returned if this field is specified for other squash_mode settings.
        class NfsExportOptions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The access mode.
          module AccessMode
            # AccessMode not set.
            ACCESS_MODE_UNSPECIFIED = 0

            # The client can only read the file share.
            READ_ONLY = 1

            # The client can read and write the file share (default).
            READ_WRITE = 2
          end

          # The squash mode.
          module SquashMode
            # SquashMode not set.
            SQUASH_MODE_UNSPECIFIED = 0

            # The Root user has root access to the file share (default).
            NO_ROOT_SQUASH = 1

            # The Root user has squashed access to the anonymous uid/gid.
            ROOT_SQUASH = 2
          end
        end

        # A Cloud Filestore instance.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the instance, in the format
        #     `projects/{project}/locations/{location}/instances/{instance}`.
        # @!attribute [rw] description
        #   @return [::String]
        #     The description of the instance (2048 characters or less).
        # @!attribute [r] state
        #   @return [::Google::Cloud::Filestore::V1::Instance::State]
        #     Output only. The instance state.
        # @!attribute [r] status_message
        #   @return [::String]
        #     Output only. Additional information about the instance state, if available.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the instance was created.
        # @!attribute [rw] tier
        #   @return [::Google::Cloud::Filestore::V1::Instance::Tier]
        #     The service tier of the instance.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Resource labels to represent user provided metadata.
        # @!attribute [rw] file_shares
        #   @return [::Array<::Google::Cloud::Filestore::V1::FileShareConfig>]
        #     File system shares on the instance.
        #     For this version, only a single file share is supported.
        # @!attribute [rw] networks
        #   @return [::Array<::Google::Cloud::Filestore::V1::NetworkConfig>]
        #     VPC networks to which the instance is connected.
        #     For this version, only a single network is supported.
        # @!attribute [rw] etag
        #   @return [::String]
        #     Server-specified ETag for the instance resource to prevent simultaneous
        #     updates from overwriting each other.
        # @!attribute [r] satisfies_pzs
        #   @return [::Google::Protobuf::BoolValue]
        #     Output only. Reserved for future use.
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

          # The instance state.
          module State
            # State not set.
            STATE_UNSPECIFIED = 0

            # The instance is being created.
            CREATING = 1

            # The instance is available for use.
            READY = 2

            # Work is being done on the instance. You can get further details from the
            # `statusMessage` field of the `Instance` resource.
            REPAIRING = 3

            # The instance is shutting down.
            DELETING = 4

            # The instance is experiencing an issue and might be unusable. You can get
            # further details from the `statusMessage` field of the `Instance`
            # resource.
            ERROR = 6

            # The instance is restoring a backup to an existing file share and may be
            # unusable during this time.
            RESTORING = 7
          end

          # Available service tiers.
          module Tier
            # Not set.
            TIER_UNSPECIFIED = 0

            # STANDARD tier.
            STANDARD = 1

            # PREMIUM tier.
            PREMIUM = 2

            # BASIC instances offer a maximum capacity of 63.9 TB.
            # BASIC_HDD is an alias for STANDARD Tier, offering economical
            # performance backed by HDD.
            BASIC_HDD = 3

            # BASIC instances offer a maximum capacity of 63.9 TB.
            # BASIC_SSD is an alias for PREMIUM Tier, and offers improved
            # performance backed by SSD.
            BASIC_SSD = 4

            # HIGH_SCALE instances offer expanded capacity and performance scaling
            # capabilities.
            HIGH_SCALE_SSD = 5
          end
        end

        # CreateInstanceRequest creates an instance.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The instance's project and location, in the format
        #     `projects/{project_id}/locations/{location}`. In Cloud Filestore,
        #     locations map to GCP zones, for example **us-west1-b**.
        # @!attribute [rw] instance_id
        #   @return [::String]
        #     Required. The name of the instance to create.
        #     The name must be unique for the specified project and location.
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::Filestore::V1::Instance]
        #     Required. An {::Google::Cloud::Filestore::V1::Instance instance resource}
        class CreateInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # GetInstanceRequest gets the state of an instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The instance resource name, in the format
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`.
        class GetInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # UpdateInstanceRequest updates the settings of an instance.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask of fields to update.  At least one path must be supplied in this
        #     field.  The elements of the repeated paths field may only include these
        #     fields:
        #
        #     * "description"
        #     * "file_shares"
        #     * "labels"
        # @!attribute [rw] instance
        #   @return [::Google::Cloud::Filestore::V1::Instance]
        #     Only fields specified in update_mask are updated.
        class UpdateInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # RestoreInstanceRequest restores an existing instances's file share from a
        # backup.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the instance, in the format
        #     `projects/{project_number}/locations/{location_id}/instances/{instance_id}`.
        # @!attribute [rw] file_share
        #   @return [::String]
        #     Required. Name of the file share in the Cloud Filestore instance that the
        #     backup is being restored to.
        # @!attribute [rw] source_backup
        #   @return [::String]
        #     The resource name of the backup, in the format
        #     `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.
        class RestoreInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DeleteInstanceRequest deletes an instance.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The instance resource name, in the format
        #     `projects/{project_id}/locations/{location}/instances/{instance_id}`
        class DeleteInstanceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListInstancesRequest lists instances.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project and location for which to retrieve instance
        #     information, in the format `projects/{project_id}/locations/{location}`. In
        #     Cloud Filestore, locations map to GCP zones, for example **us-west1-b**. To
        #     retrieve instance information for all locations, use "-" for the
        #     `{location}` value.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value to use if there are additional
        #     results to retrieve for this list request.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Sort results. Supported values are "name", "name desc" or "" (unsorted).
        # @!attribute [rw] filter
        #   @return [::String]
        #     List filter.
        class ListInstancesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListInstancesResponse is the result of ListInstancesRequest.
        # @!attribute [rw] instances
        #   @return [::Array<::Google::Cloud::Filestore::V1::Instance>]
        #     A list of instances in the project for the specified location.
        #
        #     If the `{location}` value in the request is "-", the response contains a
        #     list of instances from all locations. If any location is unreachable, the
        #     response will only return instances in reachable locations and the
        #     "unreachable" field will be populated with a list of unreachable locations.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token you can use to retrieve the next page of results. Not returned
        #     if there are no more results in the list.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListInstancesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A Cloud Filestore backup.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the backup, in the format
        #     `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.
        # @!attribute [rw] description
        #   @return [::String]
        #     A description of the backup with 2048 characters or less.
        #     Requests with longer descriptions will be rejected.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Filestore::V1::Backup::State]
        #     Output only. The backup state.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the backup was created.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Resource labels to represent user provided metadata.
        # @!attribute [r] capacity_gb
        #   @return [::Integer]
        #     Output only. Capacity of the source file share when the backup was created.
        # @!attribute [r] storage_bytes
        #   @return [::Integer]
        #     Output only. The size of the storage used by the backup. As backups share
        #     storage, this number is expected to change with backup creation/deletion.
        # @!attribute [rw] source_instance
        #   @return [::String]
        #     The resource name of the source Cloud Filestore instance, in the format
        #     `projects/{project_number}/locations/{location_id}/instances/{instance_id}`,
        #     used to create this backup.
        # @!attribute [rw] source_file_share
        #   @return [::String]
        #     Name of the file share in the source Cloud Filestore instance that the
        #     backup is created from.
        # @!attribute [r] source_instance_tier
        #   @return [::Google::Cloud::Filestore::V1::Instance::Tier]
        #     Output only. The service tier of the source Cloud Filestore instance that
        #     this backup is created from.
        # @!attribute [r] download_bytes
        #   @return [::Integer]
        #     Output only. Amount of bytes that will be downloaded if the backup is
        #     restored. This may be different than storage bytes, since sequential
        #     backups of the same disk will share storage.
        # @!attribute [r] satisfies_pzs
        #   @return [::Google::Protobuf::BoolValue]
        #     Output only. Reserved for future use.
        class Backup
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

          # The backup state.
          module State
            # State not set.
            STATE_UNSPECIFIED = 0

            # Backup is being created.
            CREATING = 1

            # Backup has been taken and the operation is being finalized. At this
            # point, changes to the file share will not be reflected in the backup.
            FINALIZING = 2

            # Backup is available for use.
            READY = 3

            # Backup is being deleted.
            DELETING = 4
          end
        end

        # CreateBackupRequest creates a backup.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The backup's project and location, in the format
        #     `projects/{project_number}/locations/{location}`. In Cloud Filestore,
        #     backup locations map to GCP regions, for example **us-west1**.
        # @!attribute [rw] backup
        #   @return [::Google::Cloud::Filestore::V1::Backup]
        #     Required. A {::Google::Cloud::Filestore::V1::Backup backup resource}
        # @!attribute [rw] backup_id
        #   @return [::String]
        #     Required. The ID to use for the backup.
        #     The ID must be unique within the specified project and location.
        #
        #     This value must start with a lowercase letter followed by up to 62
        #     lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
        #     Values that do not match this pattern will trigger an INVALID_ARGUMENT
        #     error.
        class CreateBackupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DeleteBackupRequest deletes a backup.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The backup resource name, in the format
        #     `projects/{project_number}/locations/{location}/backups/{backup_id}`
        class DeleteBackupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # UpdateBackupRequest updates description and/or labels for a backup.
        # @!attribute [rw] backup
        #   @return [::Google::Cloud::Filestore::V1::Backup]
        #     Required. A {::Google::Cloud::Filestore::V1::Backup backup resource}
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update.  At least one path must be supplied in
        #     this field.
        class UpdateBackupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # GetBackupRequest gets the state of a backup.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The backup resource name, in the format
        #     `projects/{project_number}/locations/{location}/backups/{backup_id}`.
        class GetBackupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListBackupsRequest lists backups.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The project and location for which to retrieve backup
        #     information, in the format
        #     `projects/{project_number}/locations/{location}`. In Cloud Filestore,
        #     backup locations map to GCP regions, for example **us-west1**. To retrieve
        #     backup information for all locations, use "-" for the
        #     `{location}` value.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of items to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value to use if there are additional
        #     results to retrieve for this list request.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Sort results. Supported values are "name", "name desc" or "" (unsorted).
        # @!attribute [rw] filter
        #   @return [::String]
        #     List filter.
        class ListBackupsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListBackupsResponse is the result of ListBackupsRequest.
        # @!attribute [rw] backups
        #   @return [::Array<::Google::Cloud::Filestore::V1::Backup>]
        #     A list of backups in the project for the specified location.
        #
        #     If the `{location}` value in the request is "-", the response contains a
        #     list of backups from all locations. If any location is unreachable, the
        #     response will only return backups in reachable locations and the
        #     "unreachable" field will be populated with a list of unreachable
        #     locations.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token you can use to retrieve the next page of results. Not returned
        #     if there are no more results in the list.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListBackupsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
