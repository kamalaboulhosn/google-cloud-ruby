# frozen_string_literal: true

# Copyright 2023 Google LLC
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
    module NetApp
      module V1
        # TransferStats reports all statistics related to replication transfer.
        # @!attribute [rw] transfer_bytes
        #   @return [::Integer]
        #     bytes trasferred so far in current transfer.
        # @!attribute [rw] total_transfer_duration
        #   @return [::Google::Protobuf::Duration]
        #     Total time taken during transfer.
        # @!attribute [rw] last_transfer_bytes
        #   @return [::Integer]
        #     Last transfer size in bytes.
        # @!attribute [rw] last_transfer_duration
        #   @return [::Google::Protobuf::Duration]
        #     Time taken during last transfer.
        # @!attribute [rw] lag_duration
        #   @return [::Google::Protobuf::Duration]
        #     Lag duration indicates the duration by which Destination region volume
        #     content lags behind the primary region volume content.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time when progress was updated last.
        # @!attribute [rw] last_transfer_end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Time when last transfer completed.
        # @!attribute [rw] last_transfer_error
        #   @return [::String]
        #     A message describing the cause of the last transfer failure.
        class TransferStats
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Replication is a nested resource under Volume, that describes a
        # cross-region replication relationship between 2 volumes in different
        # regions.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the Replication.
        #     Format:
        #     `projects/{project_id}/locations/{location}/volumes/{volume_id}/replications/{replication_id}`.
        # @!attribute [r] state
        #   @return [::Google::Cloud::NetApp::V1::Replication::State]
        #     Output only. State of the replication.
        # @!attribute [r] state_details
        #   @return [::String]
        #     Output only. State details of the replication.
        # @!attribute [r] role
        #   @return [::Google::Cloud::NetApp::V1::Replication::ReplicationRole]
        #     Output only. Indicates whether this points to source or destination.
        # @!attribute [rw] replication_schedule
        #   @return [::Google::Cloud::NetApp::V1::Replication::ReplicationSchedule]
        #     Required. Indicates the schedule for replication.
        # @!attribute [r] mirror_state
        #   @return [::Google::Cloud::NetApp::V1::Replication::MirrorState]
        #     Output only. Indicates the state of mirroring.
        # @!attribute [r] healthy
        #   @return [::Boolean]
        #     Output only. Condition of the relationship. Can be one of the following:
        #     - true: The replication relationship is healthy. It has not missed the most
        #     recent scheduled transfer.
        #     - false: The replication relationship is not healthy. It has missed the
        #     most recent scheduled transfer.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Replication create time.
        # @!attribute [r] destination_volume
        #   @return [::String]
        #     Output only. Full name of destination volume resource.
        #     Example : "projects/\\{project}/locations/\\{location}/volumes/\\{volume_id}"
        # @!attribute [r] transfer_stats
        #   @return [::Google::Cloud::NetApp::V1::TransferStats]
        #     Output only. Replication transfer statistics.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Resource labels to represent user provided metadata.
        # @!attribute [rw] description
        #   @return [::String]
        #     A description about this replication relationship.
        # @!attribute [rw] destination_volume_parameters
        #   @return [::Google::Cloud::NetApp::V1::DestinationVolumeParameters]
        #     Required. Input only. Destination volume parameters
        # @!attribute [r] source_volume
        #   @return [::String]
        #     Output only. Full name of source volume resource.
        #     Example : "projects/\\{project}/locations/\\{location}/volumes/\\{volume_id}"
        class Replication
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

          # The replication states
          # New enum values may be added in future to indicate possible new states.
          module State
            # Unspecified replication State
            STATE_UNSPECIFIED = 0

            # Replication is creating.
            CREATING = 1

            # Replication is ready.
            READY = 2

            # Replication is updating.
            UPDATING = 3

            # Replication is deleting.
            DELETING = 5

            # Replication is in error state.
            ERROR = 6
          end

          # New enum values may be added in future to support different replication
          # topology.
          module ReplicationRole
            # Unspecified replication role
            REPLICATION_ROLE_UNSPECIFIED = 0

            # Indicates Source volume.
            SOURCE = 1

            # Indicates Destination volume.
            DESTINATION = 2
          end

          # Schedule for Replication.
          # New enum values may be added in future to support different frequency of
          # replication.
          module ReplicationSchedule
            # Unspecified ReplicationSchedule
            REPLICATION_SCHEDULE_UNSPECIFIED = 0

            # Replication happens once every 10 minutes.
            EVERY_10_MINUTES = 1

            # Replication happens once every hour.
            HOURLY = 2

            # Replication happens once every day.
            DAILY = 3
          end

          # Mirroring states.
          # No new value is expected to be added in future.
          module MirrorState
            # Unspecified MirrorState
            MIRROR_STATE_UNSPECIFIED = 0

            # Destination volume is being prepared.
            PREPARING = 1

            # Destination volume has been initialized and is ready to receive
            # replication transfers.
            MIRRORED = 2

            # Destination volume is not receiving replication transfers.
            STOPPED = 3

            # Replication is in progress.
            TRANSFERRING = 4
          end
        end

        # ListReplications lists replications.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The volume for which to retrieve replication information,
        #     in the format
        #     `projects/{project_id}/locations/{location}/volumes/{volume_id}`.
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
        class ListReplicationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ListReplicationsResponse is the result of ListReplicationsRequest.
        # @!attribute [rw] replications
        #   @return [::Array<::Google::Cloud::NetApp::V1::Replication>]
        #     A list of replications in the project for the specified volume.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token you can use to retrieve the next page of results. Not returned
        #     if there are no more results in the list.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListReplicationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # GetReplicationRequest gets the state of a replication.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The replication resource name, in the format
        #     `projects/{project_id}/locations/{location}/volumes/{volume_id}/replications/{replication_id}`
        class GetReplicationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DestinationVolumeParameters specify input parameters used for creating
        # destination volume.
        # @!attribute [rw] storage_pool
        #   @return [::String]
        #     Required. Existing destination StoragePool name.
        # @!attribute [rw] volume_id
        #   @return [::String]
        #     Desired destination volume resource id. If not specified, source volume's
        #     resource id will be used.
        #     This value must start with a lowercase letter followed by up to 62
        #     lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
        # @!attribute [rw] share_name
        #   @return [::String]
        #     Destination volume's share name. If not specified, source volume's share
        #     name will be used.
        # @!attribute [rw] description
        #   @return [::String]
        #     Description for the destination volume.
        class DestinationVolumeParameters
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # CreateReplicationRequest creates a replication.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The NetApp volume to create the replications of, in the format
        #     `projects/{project_id}/locations/{location}/volumes/{volume_id}`
        # @!attribute [rw] replication
        #   @return [::Google::Cloud::NetApp::V1::Replication]
        #     Required. A replication resource
        # @!attribute [rw] replication_id
        #   @return [::String]
        #     Required. ID of the replication to create.
        #     This value must start with a lowercase letter followed by up to 62
        #     lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
        class CreateReplicationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DeleteReplicationRequest deletes a replication.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The replication resource name, in the format
        #     `projects/*/locations/*/volumes/*/replications/{replication_id}`
        class DeleteReplicationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # UpdateReplicationRequest updates description and/or labels for a replication.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update.  At least one path must be supplied in
        #     this field.
        # @!attribute [rw] replication
        #   @return [::Google::Cloud::NetApp::V1::Replication]
        #     Required. A replication resource
        class UpdateReplicationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # StopReplicationRequest stops a replication until resumed.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the replication, in the format of
        #     projects/\\{project_id}/locations/\\{location}/volumes/\\{volume_id}/replications/\\{replication_id}.
        # @!attribute [rw] force
        #   @return [::Boolean]
        #     Indicates whether to stop replication forcefully while data transfer is in
        #     progress.
        #     Warning! if force is true, this will abort any current transfers
        #     and can lead to data loss due to partial transfer.
        #     If force is false, stop replication will fail while data transfer is in
        #     progress and you will need to retry later.
        class StopReplicationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ResumeReplicationRequest resumes a stopped replication.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the replication, in the format of
        #     projects/\\{project_id}/locations/\\{location}/volumes/\\{volume_id}/replications/\\{replication_id}.
        class ResumeReplicationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # ReverseReplicationDirectionRequest reverses direction of replication. Source
        # becomes destination and destination becomes source.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the replication, in the format of
        #     projects/\\{project_id}/locations/\\{location}/volumes/\\{volume_id}/replications/\\{replication_id}.
        class ReverseReplicationDirectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
