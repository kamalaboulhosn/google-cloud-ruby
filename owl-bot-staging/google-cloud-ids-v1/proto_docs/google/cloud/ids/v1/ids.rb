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
    module IDS
      module V1
        # Endpoint describes a single IDS endpoint. It defines a forwarding rule to
        # which packets can be sent for IDS inspection.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The name of the endpoint.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The create time timestamp.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The update time timestamp.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     The labels of the endpoint.
        # @!attribute [rw] network
        #   @return [::String]
        #     Required. The fully qualified URL of the network to which the IDS Endpoint is
        #     attached.
        # @!attribute [r] endpoint_forwarding_rule
        #   @return [::String]
        #     Output only. The fully qualified URL of the endpoint's ILB Forwarding Rule.
        # @!attribute [r] endpoint_ip
        #   @return [::String]
        #     Output only. The IP address of the IDS Endpoint's ILB.
        # @!attribute [rw] description
        #   @return [::String]
        #     User-provided description of the endpoint
        # @!attribute [rw] severity
        #   @return [::Google::Cloud::IDS::V1::Endpoint::Severity]
        #     Required. Lowest threat severity that this endpoint will alert on.
        # @!attribute [r] state
        #   @return [::Google::Cloud::IDS::V1::Endpoint::State]
        #     Output only. Current state of the endpoint.
        # @!attribute [rw] traffic_logs
        #   @return [::Boolean]
        #     Whether the endpoint should report traffic logs in addition to threat logs.
        class Endpoint
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

          # Threat severity levels.
          module Severity
            # Not set.
            SEVERITY_UNSPECIFIED = 0

            # Informational alerts.
            INFORMATIONAL = 1

            # Low severity alerts.
            LOW = 2

            # Medium severity alerts.
            MEDIUM = 3

            # High severity alerts.
            HIGH = 4

            # Critical severity alerts.
            CRITICAL = 5
          end

          # Endpoint state
          module State
            # Not set.
            STATE_UNSPECIFIED = 0

            # Being created.
            CREATING = 1

            # Active and ready for traffic.
            READY = 2

            # Being deleted.
            DELETING = 3
          end
        end

        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent, which owns this collection of endpoints.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of endpoints to return. The service may return fewer
        #     than this value.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token, received from a previous `ListEndpoints` call.
        #     Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListEndpoints` must
        #     match the call that provided the page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. The filter expression, following the syntax outlined in
        #     https://google.aip.dev/160.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. One or more fields to compare and use to sort the output.
        #     See https://google.aip.dev/132#ordering.
        class ListEndpointsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] endpoints
        #   @return [::Array<::Google::Cloud::IDS::V1::Endpoint>]
        #     The list of endpoints response.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListEndpointsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the endpoint to retrieve.
        #     Format: `projects/{project}/locations/{location}/endpoints/{endpoint}`
        class GetEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The endpoint's parent.
        # @!attribute [rw] endpoint_id
        #   @return [::String]
        #     Required. The endpoint identifier. This will be part of the endpoint's
        #     resource name.
        #     This value must start with a lowercase letter followed by up to 62
        #     lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
        #     Values that do not match this pattern will trigger an INVALID_ARGUMENT
        #     error.
        # @!attribute [rw] endpoint
        #   @return [::Google::Cloud::IDS::V1::Endpoint]
        #     Required. The endpoint to create.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     An optional request ID to identify requests. Specify a unique request ID
        #     so that if you must retry your request, the server will know to ignore
        #     the request if it has already been completed. The server will guarantee
        #     that for at least 60 minutes since the first request.
        #
        #     For example, consider a situation where you make an initial request and t
        #     he request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class CreateEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the endpoint to delete.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     An optional request ID to identify requests. Specify a unique request ID
        #     so that if you must retry your request, the server will know to ignore
        #     the request if it has already been completed. The server will guarantee
        #     that for at least 60 minutes after the first request.
        #
        #     For example, consider a situation where you make an initial request and t
        #     he request times out. If you make the request again with the same request
        #     ID, the server can check if original operation with the same request ID
        #     was received, and if so, will ignore the second request. This prevents
        #     clients from accidentally creating duplicate commitments.
        #
        #     The request ID must be a valid UUID with the exception that zero UUID is
        #     not supported (00000000-0000-0000-0000-000000000000).
        class DeleteEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents the metadata of the long-running operation.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation was created.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time the operation finished running.
        # @!attribute [r] target
        #   @return [::String]
        #     Output only. Server-defined resource path for the target of the operation.
        # @!attribute [r] verb
        #   @return [::String]
        #     Output only. Name of the verb executed by the operation.
        # @!attribute [r] status_message
        #   @return [::String]
        #     Output only. Human-readable status of the operation, if any.
        # @!attribute [r] requested_cancellation
        #   @return [::Boolean]
        #     Output only. Identifies whether the user has requested cancellation
        #     of the operation. Operations that have successfully been cancelled
        #     have [Operation.error][] value with a {::Google::Rpc::Status#code google.rpc.Status.code} of 1,
        #     corresponding to `Code.CANCELLED`.
        # @!attribute [r] api_version
        #   @return [::String]
        #     Output only. API version used to start the operation.
        class OperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end