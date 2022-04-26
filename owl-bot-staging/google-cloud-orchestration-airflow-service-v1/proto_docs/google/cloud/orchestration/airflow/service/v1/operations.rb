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
    module Orchestration
      module Airflow
        module Service
          module V1
            # Metadata describing an operation.
            # @!attribute [rw] state
            #   @return [::Google::Cloud::Orchestration::Airflow::Service::V1::OperationMetadata::State]
            #     Output only. The current operation state.
            # @!attribute [rw] operation_type
            #   @return [::Google::Cloud::Orchestration::Airflow::Service::V1::OperationMetadata::Type]
            #     Output only. The type of operation being performed.
            # @!attribute [rw] resource
            #   @return [::String]
            #     Output only. The resource being operated on, as a [relative resource name](
            #     /apis/design/resource_names#relative_resource_name).
            # @!attribute [rw] resource_uuid
            #   @return [::String]
            #     Output only. The UUID of the resource being operated on.
            # @!attribute [rw] create_time
            #   @return [::Google::Protobuf::Timestamp]
            #     Output only. The time the operation was submitted to the server.
            # @!attribute [rw] end_time
            #   @return [::Google::Protobuf::Timestamp]
            #     Output only. The time when the operation terminated, regardless of its success.
            #     This field is unset if the operation is still ongoing.
            class OperationMetadata
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # An enum describing the overall state of an operation.
              module State
                # Unused.
                STATE_UNSPECIFIED = 0

                # The operation has been created but is not yet started.
                PENDING = 1

                # The operation is underway.
                RUNNING = 2

                # The operation completed successfully.
                SUCCEEDED = 3

                SUCCESSFUL = 3

                # The operation is no longer running but did not succeed.
                FAILED = 4
              end

              # Type of longrunning operation.
              module Type
                # Unused.
                TYPE_UNSPECIFIED = 0

                # A resource creation operation.
                CREATE = 1

                # A resource deletion operation.
                DELETE = 2

                # A resource update operation.
                UPDATE = 3

                # A resource check operation.
                CHECK = 4
              end
            end
          end
        end
      end
    end
  end
end
