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
    module AIPlatform
      module V1
        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#create_index_endpoint IndexEndpointService.CreateIndexEndpoint}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to create the IndexEndpoint in.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] index_endpoint
        #   @return [::Google::Cloud::AIPlatform::V1::IndexEndpoint]
        #     Required. The IndexEndpoint to create.
        class CreateIndexEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#create_index_endpoint IndexEndpointService.CreateIndexEndpoint}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class CreateIndexEndpointOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#get_index_endpoint IndexEndpointService.GetIndexEndpoint}
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the IndexEndpoint resource.
        #     Format:
        #     `projects/{project}/locations/{location}/indexEndpoints/{index_endpoint}`
        class GetIndexEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#list_index_endpoints IndexEndpointService.ListIndexEndpoints}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location from which to list the
        #     IndexEndpoints. Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. An expression for filtering the results of the request. For field
        #     names both snake_case and camelCase are supported.
        #
        #       * `index_endpoint` supports = and !=. `index_endpoint` represents the
        #          IndexEndpoint ID, ie. the last segment of the IndexEndpoint's
        #          {::Google::Cloud::AIPlatform::V1::IndexEndpoint#name resourcename}.
        #       * `display_name` supports =, != and regex()
        #                 (uses [re2](https://github.com/google/re2/wiki/Syntax) syntax)
        #       * `labels` supports general map functions that is:
        #                 `labels.key=value` - key:value equality
        #                 `labels.key:* or labels:key - key existence
        #                  A key including a space must be quoted. `labels."a key"`.
        #
        #     Some examples:
        #       * `index_endpoint="1"`
        #       * `display_name="myDisplayName"`
        #       * `regex(display_name, "^A") -> The display name starts with an A.
        #       * `labels.myKey="myValue"`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListIndexEndpointsResponse#next_page_token ListIndexEndpointsResponse.next_page_token}
        #     of the previous
        #     {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#list_index_endpoints IndexEndpointService.ListIndexEndpoints}
        #     call.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. Mask specifying which fields to read.
        class ListIndexEndpointsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#list_index_endpoints IndexEndpointService.ListIndexEndpoints}.
        # @!attribute [rw] index_endpoints
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::IndexEndpoint>]
        #     List of IndexEndpoints in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to
        #     {::Google::Cloud::AIPlatform::V1::ListIndexEndpointsRequest#page_token ListIndexEndpointsRequest.page_token}
        #     to obtain that page.
        class ListIndexEndpointsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#update_index_endpoint IndexEndpointService.UpdateIndexEndpoint}.
        # @!attribute [rw] index_endpoint
        #   @return [::Google::Cloud::AIPlatform::V1::IndexEndpoint]
        #     Required. The IndexEndpoint which replaces the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The update mask applies to the resource. See
        #     {::Google::Protobuf::FieldMask google.protobuf.FieldMask}.
        class UpdateIndexEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#delete_index_endpoint IndexEndpointService.DeleteIndexEndpoint}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the IndexEndpoint resource to be deleted.
        #     Format:
        #     `projects/{project}/locations/{location}/indexEndpoints/{index_endpoint}`
        class DeleteIndexEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#deploy_index IndexEndpointService.DeployIndex}.
        # @!attribute [rw] index_endpoint
        #   @return [::String]
        #     Required. The name of the IndexEndpoint resource into which to deploy an
        #     Index. Format:
        #     `projects/{project}/locations/{location}/indexEndpoints/{index_endpoint}`
        # @!attribute [rw] deployed_index
        #   @return [::Google::Cloud::AIPlatform::V1::DeployedIndex]
        #     Required. The DeployedIndex to be created within the IndexEndpoint.
        class DeployIndexRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#deploy_index IndexEndpointService.DeployIndex}.
        # @!attribute [rw] deployed_index
        #   @return [::Google::Cloud::AIPlatform::V1::DeployedIndex]
        #     The DeployedIndex that had been deployed in the IndexEndpoint.
        class DeployIndexResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#deploy_index IndexEndpointService.DeployIndex}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        # @!attribute [rw] deployed_index_id
        #   @return [::String]
        #     The unique index id specified by user
        class DeployIndexOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#undeploy_index IndexEndpointService.UndeployIndex}.
        # @!attribute [rw] index_endpoint
        #   @return [::String]
        #     Required. The name of the IndexEndpoint resource from which to undeploy an
        #     Index. Format:
        #     `projects/{project}/locations/{location}/indexEndpoints/{index_endpoint}`
        # @!attribute [rw] deployed_index_id
        #   @return [::String]
        #     Required. The ID of the DeployedIndex to be undeployed from the
        #     IndexEndpoint.
        class UndeployIndexRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#undeploy_index IndexEndpointService.UndeployIndex}.
        class UndeployIndexResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#undeploy_index IndexEndpointService.UndeployIndex}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        class UndeployIndexOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#mutate_deployed_index IndexEndpointService.MutateDeployedIndex}.
        # @!attribute [rw] index_endpoint
        #   @return [::String]
        #     Required. The name of the IndexEndpoint resource into which to deploy an
        #     Index. Format:
        #     `projects/{project}/locations/{location}/indexEndpoints/{index_endpoint}`
        # @!attribute [rw] deployed_index
        #   @return [::Google::Cloud::AIPlatform::V1::DeployedIndex]
        #     Required. The DeployedIndex to be updated within the IndexEndpoint.
        #     Currently, the updatable fields are
        #     {::Google::Cloud::AIPlatform::V1::DeployedIndex#automatic_resources DeployedIndex.automatic_resources}
        #     and
        #     {::Google::Cloud::AIPlatform::V1::DeployedIndex#dedicated_resources DeployedIndex.dedicated_resources}
        class MutateDeployedIndexRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#mutate_deployed_index IndexEndpointService.MutateDeployedIndex}.
        # @!attribute [rw] deployed_index
        #   @return [::Google::Cloud::AIPlatform::V1::DeployedIndex]
        #     The DeployedIndex that had been updated in the IndexEndpoint.
        class MutateDeployedIndexResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Runtime operation information for
        # {::Google::Cloud::AIPlatform::V1::IndexEndpointService::Client#mutate_deployed_index IndexEndpointService.MutateDeployedIndex}.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The operation generic information.
        # @!attribute [rw] deployed_index_id
        #   @return [::String]
        #     The unique index id specified by user
        class MutateDeployedIndexOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
