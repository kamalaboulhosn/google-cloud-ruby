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
  module Identity
    module AccessContextManager
      module V1
        # A request to list all `AccessPolicies` for a container.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name for the container to list AccessPolicy instances
        #     from.
        #
        #     Format:
        #     `organizations/{org_id}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Number of AccessPolicy instances to include in the list. Default 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Next page token for the next batch of AccessPolicy instances. Defaults to
        #     the first page of results.
        class ListAccessPoliciesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response to `ListAccessPoliciesRequest`.
        # @!attribute [rw] access_policies
        #   @return [::Array<::Google::Identity::AccessContextManager::V1::AccessPolicy>]
        #     List of the AccessPolicy instances.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The pagination token to retrieve the next page of results. If the value is
        #     empty, no further results remain.
        class ListAccessPoliciesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to get a particular `AccessPolicy`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name for the access policy to get.
        #
        #     Format `accessPolicies/{policy_id}`
        class GetAccessPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to update an `AccessPolicy`.
        # @!attribute [rw] policy
        #   @return [::Google::Identity::AccessContextManager::V1::AccessPolicy]
        #     Required. The updated AccessPolicy.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask to control which fields get updated. Must be non-empty.
        class UpdateAccessPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to delete an `AccessPolicy`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name for the access policy to delete.
        #
        #     Format `accessPolicies/{policy_id}`
        class DeleteAccessPolicyRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to list all `AccessLevels` in an `AccessPolicy`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name for the access policy to list [Access Levels]
        #     [google.identity.accesscontextmanager.v1.AccessLevel] from.
        #
        #     Format:
        #     `accessPolicies/{policy_id}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Number of [Access Levels]
        #     [google.identity.accesscontextmanager.v1.AccessLevel] to include in
        #     the list. Default 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Next page token for the next batch of [Access Level]
        #     [google.identity.accesscontextmanager.v1.AccessLevel] instances.
        #     Defaults to the first page of results.
        # @!attribute [rw] access_level_format
        #   @return [::Google::Identity::AccessContextManager::V1::LevelFormat]
        #     Whether to return `BasicLevels` in the Cloud Common Expression language, as
        #     `CustomLevels`, rather than as `BasicLevels`. Defaults to returning
        #     `AccessLevels` in the format they were defined.
        class ListAccessLevelsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response to `ListAccessLevelsRequest`.
        # @!attribute [rw] access_levels
        #   @return [::Array<::Google::Identity::AccessContextManager::V1::AccessLevel>]
        #     List of the [Access Level]
        #     [google.identity.accesscontextmanager.v1.AccessLevel] instances.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The pagination token to retrieve the next page of results. If the value is
        #     empty, no further results remain.
        class ListAccessLevelsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to get a particular `AccessLevel`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name for the [Access Level]
        #     [google.identity.accesscontextmanager.v1.AccessLevel].
        #
        #     Format:
        #     `accessPolicies/{policy_id}/accessLevels/{access_level_id}`
        # @!attribute [rw] access_level_format
        #   @return [::Google::Identity::AccessContextManager::V1::LevelFormat]
        #     Whether to return `BasicLevels` in the Cloud Common Expression
        #     Language rather than as `BasicLevels`. Defaults to AS_DEFINED, where
        #     [Access Levels] [google.identity.accesscontextmanager.v1.AccessLevel]
        #     are returned as `BasicLevels` or `CustomLevels` based on how they were
        #     created. If set to CEL, all [Access Levels]
        #     [google.identity.accesscontextmanager.v1.AccessLevel] are returned as
        #     `CustomLevels`. In the CEL case, `BasicLevels` are translated to equivalent
        #     `CustomLevels`.
        class GetAccessLevelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to create an `AccessLevel`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name for the access policy which owns this [Access
        #     Level] [google.identity.accesscontextmanager.v1.AccessLevel].
        #
        #     Format: `accessPolicies/{policy_id}`
        # @!attribute [rw] access_level
        #   @return [::Google::Identity::AccessContextManager::V1::AccessLevel]
        #     Required. The [Access Level]
        #     [google.identity.accesscontextmanager.v1.AccessLevel] to create.
        #     Syntactic correctness of the [Access Level]
        #     [google.identity.accesscontextmanager.v1.AccessLevel] is a
        #     precondition for creation.
        class CreateAccessLevelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to update an `AccessLevel`.
        # @!attribute [rw] access_level
        #   @return [::Google::Identity::AccessContextManager::V1::AccessLevel]
        #     Required. The updated [Access Level]
        #     [google.identity.accesscontextmanager.v1.AccessLevel]. Syntactic
        #     correctness of the [Access Level]
        #     [google.identity.accesscontextmanager.v1.AccessLevel] is a
        #     precondition for creation.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask to control which fields get updated. Must be non-empty.
        class UpdateAccessLevelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to delete an `AccessLevel`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name for the [Access Level]
        #     [google.identity.accesscontextmanager.v1.AccessLevel].
        #
        #     Format:
        #     `accessPolicies/{policy_id}/accessLevels/{access_level_id}`
        class DeleteAccessLevelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to replace all existing Access Levels in an Access Policy with
        # the Access Levels provided. This is done atomically.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name for the access policy which owns these
        #     [Access Levels]
        #     [google.identity.accesscontextmanager.v1.AccessLevel].
        #
        #     Format: `accessPolicies/{policy_id}`
        # @!attribute [rw] access_levels
        #   @return [::Array<::Google::Identity::AccessContextManager::V1::AccessLevel>]
        #     Required. The desired [Access Levels]
        #     [google.identity.accesscontextmanager.v1.AccessLevel] that should
        #     replace all existing [Access Levels]
        #     [google.identity.accesscontextmanager.v1.AccessLevel] in the
        #     [Access Policy]
        #     [google.identity.accesscontextmanager.v1.AccessPolicy].
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. The etag for the version of the [Access Policy]
        #     [google.identity.accesscontextmanager.v1.AccessPolicy] that this
        #     replace operation is to be performed on. If, at the time of replace, the
        #     etag for the Access Policy stored in Access Context Manager is different
        #     from the specified etag, then the replace operation will not be performed
        #     and the call will fail. This field is not required. If etag is not
        #     provided, the operation will be performed as if a valid etag is provided.
        class ReplaceAccessLevelsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response to ReplaceAccessLevelsRequest. This will be put inside of
        # Operation.response field.
        # @!attribute [rw] access_levels
        #   @return [::Array<::Google::Identity::AccessContextManager::V1::AccessLevel>]
        #     List of the [Access Level]
        #     [google.identity.accesscontextmanager.v1.AccessLevel] instances.
        class ReplaceAccessLevelsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to list all `ServicePerimeters` in an `AccessPolicy`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name for the access policy to list [Service Perimeters]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter] from.
        #
        #     Format:
        #     `accessPolicies/{policy_id}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Number of [Service Perimeters]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter] to include
        #     in the list. Default 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Next page token for the next batch of [Service Perimeter]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter] instances.
        #     Defaults to the first page of results.
        class ListServicePerimetersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response to `ListServicePerimetersRequest`.
        # @!attribute [rw] service_perimeters
        #   @return [::Array<::Google::Identity::AccessContextManager::V1::ServicePerimeter>]
        #     List of the [Service Perimeter]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter] instances.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The pagination token to retrieve the next page of results. If the value is
        #     empty, no further results remain.
        class ListServicePerimetersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to get a particular `ServicePerimeter`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name for the [Service Perimeter]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter].
        #
        #     Format:
        #     `accessPolicies/{policy_id}/servicePerimeters/{service_perimeters_id}`
        class GetServicePerimeterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to create a `ServicePerimeter`.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name for the access policy which owns this [Service
        #     Perimeter] [google.identity.accesscontextmanager.v1.ServicePerimeter].
        #
        #     Format: `accessPolicies/{policy_id}`
        # @!attribute [rw] service_perimeter
        #   @return [::Google::Identity::AccessContextManager::V1::ServicePerimeter]
        #     Required. The [Service Perimeter]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter] to create.
        #     Syntactic correctness of the [Service Perimeter]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter] is a
        #     precondition for creation.
        class CreateServicePerimeterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to update a `ServicePerimeter`.
        # @!attribute [rw] service_perimeter
        #   @return [::Google::Identity::AccessContextManager::V1::ServicePerimeter]
        #     Required. The updated `ServicePerimeter`. Syntactic correctness of the
        #     `ServicePerimeter` is a precondition for creation.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask to control which fields get updated. Must be non-empty.
        class UpdateServicePerimeterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to delete a `ServicePerimeter`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name for the [Service Perimeter]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter].
        #
        #     Format:
        #     `accessPolicies/{policy_id}/servicePerimeters/{service_perimeter_id}`
        class DeleteServicePerimeterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to replace all existing Service Perimeters in an Access Policy
        # with the Service Perimeters provided. This is done atomically.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name for the access policy which owns these
        #     [Service Perimeters]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter].
        #
        #     Format: `accessPolicies/{policy_id}`
        # @!attribute [rw] service_perimeters
        #   @return [::Array<::Google::Identity::AccessContextManager::V1::ServicePerimeter>]
        #     Required. The desired [Service Perimeters]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter] that should
        #     replace all existing [Service Perimeters]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter] in the
        #     [Access Policy]
        #     [google.identity.accesscontextmanager.v1.AccessPolicy].
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. The etag for the version of the [Access Policy]
        #     [google.identity.accesscontextmanager.v1.AccessPolicy] that this
        #     replace operation is to be performed on. If, at the time of replace, the
        #     etag for the Access Policy stored in Access Context Manager is different
        #     from the specified etag, then the replace operation will not be performed
        #     and the call will fail. This field is not required. If etag is not
        #     provided, the operation will be performed as if a valid etag is provided.
        class ReplaceServicePerimetersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response to ReplaceServicePerimetersRequest. This will be put inside of
        # Operation.response field.
        # @!attribute [rw] service_perimeters
        #   @return [::Array<::Google::Identity::AccessContextManager::V1::ServicePerimeter>]
        #     List of the [Service Perimeter]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter] instances.
        class ReplaceServicePerimetersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to commit dry-run specs in all [Service Perimeters]
        # [google.identity.accesscontextmanager.v1.ServicePerimeter] belonging to
        # an {::Google::Identity::AccessContextManager::V1::AccessPolicy Access Policy}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Resource name for the parent [Access Policy]
        #     [google.identity.accesscontextmanager.v1.AccessPolicy] which owns all
        #     [Service Perimeters]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter] in scope for
        #     the commit operation.
        #
        #     Format: `accessPolicies/{policy_id}`
        # @!attribute [rw] etag
        #   @return [::String]
        #     Optional. The etag for the version of the [Access Policy]
        #     [google.identity.accesscontextmanager.v1alpha.AccessPolicy] that this
        #     commit operation is to be performed on. If, at the time of commit, the
        #     etag for the Access Policy stored in Access Context Manager is different
        #     from the specified etag, then the commit operation will not be performed
        #     and the call will fail. This field is not required. If etag is not
        #     provided, the operation will be performed as if a valid etag is provided.
        class CommitServicePerimetersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A response to CommitServicePerimetersRequest. This will be put inside of
        # Operation.response field.
        # @!attribute [rw] service_perimeters
        #   @return [::Array<::Google::Identity::AccessContextManager::V1::ServicePerimeter>]
        #     List of all the [Service Perimeter]
        #     [google.identity.accesscontextmanager.v1.ServicePerimeter] instances in
        #     the [Access Policy]
        #     [google.identity.accesscontextmanager.v1.AccessPolicy].
        class CommitServicePerimetersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request of [ListGcpUserAccessBindings]
        # [google.identity.accesscontextmanager.v1.AccessContextManager.ListGcpUserAccessBindings].
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Example: "organizations/256"
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of items to return. The server may return fewer items.
        #     If left blank, the server may return any number of items.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. If left blank, returns the first page. To enumerate all items, use the
        #     [next_page_token]
        #     [google.identity.accesscontextmanager.v1.ListGcpUserAccessBindingsResponse.next_page_token]
        #     from your previous list operation.
        class ListGcpUserAccessBindingsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of [ListGcpUserAccessBindings]
        # [google.identity.accesscontextmanager.v1.AccessContextManager.ListGcpUserAccessBindings].
        # @!attribute [rw] gcp_user_access_bindings
        #   @return [::Array<::Google::Identity::AccessContextManager::V1::GcpUserAccessBinding>]
        #     [GcpUserAccessBinding]
        #     [google.identity.accesscontextmanager.v1.GcpUserAccessBinding]
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to get the next page of items. If blank, there are no more items.
        class ListGcpUserAccessBindingsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request of [GetGcpUserAccessBinding]
        # [google.identity.accesscontextmanager.v1.AccessContextManager.GetGcpUserAccessBinding].
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
        class GetGcpUserAccessBindingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request of [CreateGcpUserAccessBinding]
        # [google.identity.accesscontextmanager.v1.AccessContextManager.CreateGcpUserAccessBinding].
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Example: "organizations/256"
        # @!attribute [rw] gcp_user_access_binding
        #   @return [::Google::Identity::AccessContextManager::V1::GcpUserAccessBinding]
        #     Required. [GcpUserAccessBinding]
        #     [google.identity.accesscontextmanager.v1.GcpUserAccessBinding]
        class CreateGcpUserAccessBindingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request of [UpdateGcpUserAccessBinding]
        # [google.identity.accesscontextmanager.v1.AccessContextManager.UpdateGcpUserAccessBinding].
        # @!attribute [rw] gcp_user_access_binding
        #   @return [::Google::Identity::AccessContextManager::V1::GcpUserAccessBinding]
        #     Required. [GcpUserAccessBinding]
        #     [google.identity.accesscontextmanager.v1.GcpUserAccessBinding]
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Only the fields specified in this mask are updated. Because name and
        #     group_key cannot be changed, update_mask is required and must always be:
        #
        #     update_mask {
        #     paths: "access_levels"
        #     }
        class UpdateGcpUserAccessBindingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request of [DeleteGcpUserAccessBinding]
        # [google.identity.accesscontextmanager.v1.AccessContextManager.DeleteGcpUserAccessBinding].
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
        class DeleteGcpUserAccessBindingRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Currently, a completed operation means nothing. In the future, this metadata
        # and a completed operation may indicate that the binding has taken effect and
        # is affecting access decisions for all users.
        class GcpUserAccessBindingOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata of Access Context Manager's Long Running Operations.
        class AccessContextManagerOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The format used in an `AccessLevel`.
        module LevelFormat
          # The format was not specified.
          LEVEL_FORMAT_UNSPECIFIED = 0

          # Uses the format the resource was defined in. BasicLevels are returned as
          # BasicLevels, CustomLevels are returned as CustomLevels.
          AS_DEFINED = 1

          # Use Cloud Common Expression Language when returning the resource.  Both
          # BasicLevels and CustomLevels are returned as CustomLevels.
          CEL = 2
        end
      end
    end
  end
end