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
    module AIPlatform
      module V1
        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PersistentResourceService::Client#create_persistent_resource PersistentResourceService.CreatePersistentResource}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the
        #     PersistentResource in. Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] persistent_resource
        #   @return [::Google::Cloud::AIPlatform::V1::PersistentResource]
        #     Required. The PersistentResource to create.
        # @!attribute [rw] persistent_resource_id
        #   @return [::String]
        #     Required. The ID to use for the PersistentResource, which become the final
        #     component of the PersistentResource's resource name.
        #
        #     The maximum length is 63 characters, and valid characters
        #     are `/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/`.
        class CreatePersistentResourceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of operations that perform create PersistentResource.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     Operation metadata for PersistentResource.
        # @!attribute [rw] progress_message
        #   @return [::String]
        #     Progress Message for Create LRO
        class CreatePersistentResourceOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of operations that perform update PersistentResource.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     Operation metadata for PersistentResource.
        # @!attribute [rw] progress_message
        #   @return [::String]
        #     Progress Message for Update LRO
        class UpdatePersistentResourceOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of operations that perform reboot PersistentResource.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     Operation metadata for PersistentResource.
        # @!attribute [rw] progress_message
        #   @return [::String]
        #     Progress Message for Reboot LRO
        class RebootPersistentResourceOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PersistentResourceService::Client#get_persistent_resource PersistentResourceService.GetPersistentResource}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the PersistentResource resource.
        #     Format:
        #     `projects/{project_id_or_number}/locations/{location_id}/persistentResources/{persistent_resource_id}`
        class GetPersistentResourceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PersistentResourceService::Client#list_persistent_resources PersistentResourceService.ListPersistentResources}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to list the PersistentResources
        #     from. Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListPersistentResourcesResponse#next_page_token ListPersistentResourcesResponse.next_page_token}
        #     of the previous [PersistentResourceService.ListPersistentResource][] call.
        class ListPersistentResourcesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::PersistentResourceService::Client#list_persistent_resources PersistentResourceService.ListPersistentResources}
        # @!attribute [rw] persistent_resources
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::PersistentResource>]
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to
        #     {::Google::Cloud::AIPlatform::V1::ListPersistentResourcesRequest#page_token ListPersistentResourcesRequest.page_token}
        #     to obtain that page.
        class ListPersistentResourcesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PersistentResourceService::Client#delete_persistent_resource PersistentResourceService.DeletePersistentResource}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the PersistentResource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/persistentResources/{persistent_resource}`
        class DeletePersistentResourceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for UpdatePersistentResource method.
        # @!attribute [rw] persistent_resource
        #   @return [::Google::Cloud::AIPlatform::V1::PersistentResource]
        #     Required. The PersistentResource to update.
        #
        #     The PersistentResource's `name` field is used to identify the
        #     PersistentResource to update. Format:
        #     `projects/{project}/locations/{location}/persistentResources/{persistent_resource}`
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Specify the fields to be overwritten in the PersistentResource by
        #     the update method.
        class UpdatePersistentResourceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::PersistentResourceService::Client#reboot_persistent_resource PersistentResourceService.RebootPersistentResource}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the PersistentResource resource.
        #     Format:
        #     `projects/{project_id_or_number}/locations/{location_id}/persistentResources/{persistent_resource_id}`
        class RebootPersistentResourceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
