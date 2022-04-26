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
    module Optimization
      module V1
        # The desired input location information.
        # @!attribute [rw] gcs_source
        #   @return [::Google::Cloud::Optimization::V1::GcsSource]
        #     The Google Cloud Storage location to read the input from. This must be a
        #     single file.
        # @!attribute [rw] data_format
        #   @return [::Google::Cloud::Optimization::V1::DataFormat]
        #     The input data format that used to store the model in Cloud Storage.
        class InputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The desired output location.
        # @!attribute [rw] gcs_destination
        #   @return [::Google::Cloud::Optimization::V1::GcsDestination]
        #     The Google Cloud Storage location to write the output to.
        # @!attribute [rw] data_format
        #   @return [::Google::Cloud::Optimization::V1::DataFormat]
        #     The output data format that used to store the results in Cloud Storage.
        class OutputConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The Google Cloud Storage location where the input file will be read from.
        # @!attribute [rw] uri
        #   @return [::String]
        #     Required. URI of the Google Cloud Storage location.
        class GcsSource
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The Google Cloud Storage location where the output file will be written to.
        # @!attribute [rw] uri
        #   @return [::String]
        #     Required. URI of the Google Cloud Storage location.
        class GcsDestination
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The long running operation metadata for async model related methods.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Optimization::V1::AsyncModelMetadata::State]
        #     The state of the current operation.
        # @!attribute [rw] state_message
        #   @return [::String]
        #     A message providing more details about the current state of the operation.
        #     For example, the error message if the operation is failed.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The creation time of the operation.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The last update time of the operation.
        class AsyncModelMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Possible states of the operation.
          module State
            # The default value. This value is used if the state is omitted.
            STATE_UNSPECIFIED = 0

            # Request is being processed.
            RUNNING = 1

            # The operation completed successfully.
            SUCCEEDED = 2

            # The operation was cancelled.
            CANCELLED = 3

            # The operation has failed.
            FAILED = 4
          end
        end

        # Data formats for input and output files.
        module DataFormat
          # Default value.
          DATA_FORMAT_UNSPECIFIED = 0

          # Input data in json format.
          JSON = 1

          # Input data in string format.
          STRING = 2
        end
      end
    end
  end
end
