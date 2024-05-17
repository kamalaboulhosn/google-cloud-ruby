# frozen_string_literal: true

# Copyright 2024 Google LLC
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
    module Firestore
      module Admin
        module V1
          # A Backup of a Cloud Firestore Database.
          #
          # The backup contains all documents and index configurations for the given
          # database at a specific point in time.
          # @!attribute [r] name
          #   @return [::String]
          #     Output only. The unique resource name of the Backup.
          #
          #     Format is `projects/{project}/locations/{location}/backups/{backup}`.
          # @!attribute [r] database
          #   @return [::String]
          #     Output only. Name of the Firestore database that the backup is from.
          #
          #     Format is `projects/{project}/databases/{database}`.
          # @!attribute [r] database_uid
          #   @return [::String]
          #     Output only. The system-generated UUID4 for the Firestore database that the
          #     backup is from.
          # @!attribute [r] snapshot_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The backup contains an externally consistent copy of the
          #     database at this time.
          # @!attribute [r] expire_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The timestamp at which this backup expires.
          # @!attribute [r] stats
          #   @return [::Google::Cloud::Firestore::Admin::V1::Backup::Stats]
          #     Output only. Statistics about the backup.
          #
          #     This data only becomes available after the backup is fully materialized to
          #     secondary storage. This field will be empty till then.
          # @!attribute [r] state
          #   @return [::Google::Cloud::Firestore::Admin::V1::Backup::State]
          #     Output only. The current state of the backup.
          class Backup
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Backup specific statistics.
            # @!attribute [r] size_bytes
            #   @return [::Integer]
            #     Output only. Summation of the size of all documents and index entries in
            #     the backup, measured in bytes.
            # @!attribute [r] document_count
            #   @return [::Integer]
            #     Output only. The total number of documents contained in the backup.
            # @!attribute [r] index_count
            #   @return [::Integer]
            #     Output only. The total number of index entries contained in the backup.
            class Stats
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Indicate the current state of the backup.
            module State
              # The state is unspecified.
              STATE_UNSPECIFIED = 0

              # The pending backup is still being created. Operations on the
              # backup will be rejected in this state.
              CREATING = 1

              # The backup is complete and ready to use.
              READY = 2

              # The backup is not available at this moment.
              NOT_AVAILABLE = 3
            end
          end
        end
      end
    end
  end
end
