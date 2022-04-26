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
    module Kms
      module V1
        # Request message for [KeyManagementService.ListEkmConnections][].
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the location associated with the
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnections} to list, in the format
        #     `projects/*/locations/*`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Optional limit on the number of
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnections} to include in the
        #     response. Further {::Google::Cloud::Kms::V1::EkmConnection EkmConnections} can
        #     subsequently be obtained by including the
        #     {::Google::Cloud::Kms::V1::ListEkmConnectionsResponse#next_page_token ListEkmConnectionsResponse.next_page_token}
        #     in a subsequent request. If unspecified, the server will pick an
        #     appropriate default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. Optional pagination token, returned earlier via
        #     {::Google::Cloud::Kms::V1::ListEkmConnectionsResponse#next_page_token ListEkmConnectionsResponse.next_page_token}.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Only include resources that match the filter in the response. For
        #     more information, see
        #     [Sorting and filtering list
        #     results](https://cloud.google.com/kms/docs/sorting-and-filtering).
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Specify how the results should be sorted. If not specified, the
        #     results will be sorted in the default order.  For more information, see
        #     [Sorting and filtering list
        #     results](https://cloud.google.com/kms/docs/sorting-and-filtering).
        class ListEkmConnectionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for [KeyManagementService.ListEkmConnections][].
        # @!attribute [rw] ekm_connections
        #   @return [::Array<::Google::Cloud::Kms::V1::EkmConnection>]
        #     The list of {::Google::Cloud::Kms::V1::EkmConnection EkmConnections}.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results. Pass this value in
        #     {::Google::Cloud::Kms::V1::ListEkmConnectionsRequest#page_token ListEkmConnectionsRequest.page_token}
        #     to retrieve the next page of results.
        # @!attribute [rw] total_size
        #   @return [::Integer]
        #     The total number of {::Google::Cloud::Kms::V1::EkmConnection EkmConnections}
        #     that matched the query.
        class ListEkmConnectionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [KeyManagementService.GetEkmConnection][].
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The {::Google::Cloud::Kms::V1::EkmConnection#name name} of the
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} to get.
        class GetEkmConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [KeyManagementService.CreateEkmConnection][].
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the location associated with the
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnection}, in the format
        #     `projects/*/locations/*`.
        # @!attribute [rw] ekm_connection_id
        #   @return [::String]
        #     Required. It must be unique within a location and match the regular
        #     expression `[a-zA-Z0-9_-]{1,63}`.
        # @!attribute [rw] ekm_connection
        #   @return [::Google::Cloud::Kms::V1::EkmConnection]
        #     Required. An {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} with
        #     initial field values.
        class CreateEkmConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for [KeyManagementService.UpdateEkmConnection][].
        # @!attribute [rw] ekm_connection
        #   @return [::Google::Cloud::Kms::V1::EkmConnection]
        #     Required. {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} with updated
        #     values.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. List of fields to be updated in this request.
        class UpdateEkmConnectionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A {::Google::Cloud::Kms::V1::Certificate Certificate} represents an X.509
        # certificate used to authenticate HTTPS connections to EKM replicas.
        # @!attribute [rw] raw_der
        #   @return [::String]
        #     Required. The raw certificate bytes in DER format.
        # @!attribute [r] parsed
        #   @return [::Boolean]
        #     Output only. True if the certificate was parsed successfully.
        # @!attribute [r] issuer
        #   @return [::String]
        #     Output only. The issuer distinguished name in RFC 2253 format. Only present
        #     if {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        # @!attribute [r] subject
        #   @return [::String]
        #     Output only. The subject distinguished name in RFC 2253 format. Only
        #     present if {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        # @!attribute [r] subject_alternative_dns_names
        #   @return [::Array<::String>]
        #     Output only. The subject Alternative DNS names. Only present if
        #     {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        # @!attribute [r] not_before_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The certificate is not valid before this time. Only present if
        #     {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        # @!attribute [r] not_after_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The certificate is not valid after this time. Only present if
        #     {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        # @!attribute [r] serial_number
        #   @return [::String]
        #     Output only. The certificate serial number as a hex string. Only present if
        #     {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        # @!attribute [r] sha256_fingerprint
        #   @return [::String]
        #     Output only. The SHA-256 certificate fingerprint as a hex string. Only
        #     present if {::Google::Cloud::Kms::V1::Certificate#parsed parsed} is true.
        class Certificate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} represents an
        # individual EKM connection. It can be used for creating
        # {::Google::Cloud::Kms::V1::CryptoKey CryptoKeys} and
        # {::Google::Cloud::Kms::V1::CryptoKeyVersion CryptoKeyVersions} with a
        # {::Google::Cloud::Kms::V1::ProtectionLevel ProtectionLevel} of
        # [EXTERNAL_VPC][CryptoKeyVersion.ProtectionLevel.EXTERNAL_VPC], as well as
        # performing cryptographic operations using keys created within the
        # {::Google::Cloud::Kms::V1::EkmConnection EkmConnection}.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name for the
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} in the format
        #     `projects/*/locations/*/ekmConnections/*`.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time at which the
        #     {::Google::Cloud::Kms::V1::EkmConnection EkmConnection} was created.
        # @!attribute [rw] service_resolvers
        #   @return [::Array<::Google::Cloud::Kms::V1::EkmConnection::ServiceResolver>]
        #     A list of
        #     {::Google::Cloud::Kms::V1::EkmConnection::ServiceResolver ServiceResolvers} where
        #     the EKM can be reached. There should be one ServiceResolver per EKM
        #     replica. Currently, only a single
        #     {::Google::Cloud::Kms::V1::EkmConnection::ServiceResolver ServiceResolver} is
        #     supported.
        # @!attribute [rw] etag
        #   @return [::String]
        #     This checksum is computed by the server based on the value of other fields,
        #     and may be sent on update requests to ensure the client has an up-to-date
        #     value before proceeding.
        class EkmConnection
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A {::Google::Cloud::Kms::V1::EkmConnection::ServiceResolver ServiceResolver}
          # represents an EKM replica that can be reached within an
          # {::Google::Cloud::Kms::V1::EkmConnection EkmConnection}.
          # @!attribute [rw] service_directory_service
          #   @return [::String]
          #     Required. The resource name of the Service Directory service pointing to
          #     an EKM replica, in the format
          #     `projects/*/locations/*/namespaces/*/services/*`.
          # @!attribute [rw] endpoint_filter
          #   @return [::String]
          #     Optional. The filter applied to the endpoints of the resolved service. If
          #     no filter is specified, all endpoints will be considered. An endpoint
          #     will be chosen arbitrarily from the filtered list for each request.
          #
          #     For endpoint filter syntax and examples, see
          #     https://cloud.google.com/service-directory/docs/reference/rpc/google.cloud.servicedirectory.v1#resolveservicerequest.
          # @!attribute [rw] hostname
          #   @return [::String]
          #     Required. The hostname of the EKM replica used at TLS and HTTP layers.
          # @!attribute [rw] server_certificates
          #   @return [::Array<::Google::Cloud::Kms::V1::Certificate>]
          #     Required. A list of leaf server certificates used to authenticate HTTPS
          #     connections to the EKM replica.
          class ServiceResolver
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
