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
    module ManagedKafka
      module V1
        # Request for ListClusters.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent location whose clusters are to be listed. Structured
        #     like `projects/{project}/locations/{location}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of clusters to return. The service may return
        #     fewer than this value. If unspecified, server will pick an appropriate
        #     default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token, received from a previous `ListClusters` call.
        #     Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListClusters` must match
        #     the call that provided the page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter expression for the result.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Order by fields for the result.
        class ListClustersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for ListClusters.
        # @!attribute [rw] clusters
        #   @return [::Array<::Google::Cloud::ManagedKafka::V1::Cluster>]
        #     The list of Clusters in the requested parent.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as `page_token` to retrieve the next page of
        #     results. If this field is omitted, there are no more results.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListClustersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for GetCluster.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the cluster whose configuration to return.
        class GetClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for CreateCluster.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent region in which to create the cluster. Structured like
        #     `projects/{project}/locations/{location}`.
        # @!attribute [rw] cluster_id
        #   @return [::String]
        #     Required. The ID to use for the cluster, which will become the final
        #     component of the cluster's name. The ID must be 1-63 characters long, and
        #     match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` to comply with
        #     RFC 1035.
        #
        #     This value is structured like: `my-cluster-id`.
        # @!attribute [rw] cluster
        #   @return [::Google::Cloud::ManagedKafka::V1::Cluster]
        #     Required. Configuration of the cluster to create. Its `name` field is
        #     ignored.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID to avoid duplication of requests. If a request times out or
        #     fails, retrying with the same ID allows the server to recognize the
        #     previous attempt. For at least 60 minutes, the server ignores duplicate
        #     requests bearing the same ID.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request ID
        #     within 60 minutes of the last request, the server checks if an original
        #     operation with the same request ID was received. If so, the server ignores
        #     the second request.
        #
        #     The request ID must be a valid UUID. A zero UUID is not supported
        #     (00000000-0000-0000-0000-000000000000).
        class CreateClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for UpdateCluster.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Field mask is used to specify the fields to be overwritten in the
        #     cluster resource by the update. The fields specified in the update_mask are
        #     relative to the resource, not the full request. A field will be overwritten
        #     if it is in the mask. The mask is required and a value of * will update all
        #     fields.
        # @!attribute [rw] cluster
        #   @return [::Google::Cloud::ManagedKafka::V1::Cluster]
        #     Required. The cluster to update. Its `name` field must be populated.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID to avoid duplication of requests. If a request times out or
        #     fails, retrying with the same ID allows the server to recognize the
        #     previous attempt. For at least 60 minutes, the server ignores duplicate
        #     requests bearing the same ID.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request ID
        #     within 60 minutes of the last request, the server checks if an original
        #     operation with the same request ID was received. If so, the server ignores
        #     the second request.
        #
        #     The request ID must be a valid UUID. A zero UUID is not supported
        #     (00000000-0000-0000-0000-000000000000).
        class UpdateClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for DeleteCluster.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the cluster to delete.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. An optional request ID to identify requests. Specify a unique
        #     request ID to avoid duplication of requests. If a request times out or
        #     fails, retrying with the same ID allows the server to recognize the
        #     previous attempt. For at least 60 minutes, the server ignores duplicate
        #     requests bearing the same ID.
        #
        #     For example, consider a situation where you make an initial request and the
        #     request times out. If you make the request again with the same request ID
        #     within 60 minutes of the last request, the server checks if an original
        #     operation with the same request ID was received. If so, the server ignores
        #     the second request.
        #
        #     The request ID must be a valid UUID. A zero UUID is not supported
        #     (00000000-0000-0000-0000-000000000000).
        class DeleteClusterRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for ListTopics.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent cluster whose topics are to be listed. Structured like
        #     `projects/{project}/locations/{location}/clusters/{cluster}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of topics to return. The service may return
        #     fewer than this value. If unset or zero, all topics for the parent is
        #     returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token, received from a previous `ListTopics` call.
        #     Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListTopics` must match
        #     the call that provided the page token.
        class ListTopicsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for ListTopics.
        # @!attribute [rw] topics
        #   @return [::Array<::Google::Cloud::ManagedKafka::V1::Topic>]
        #     The list of topics in the requested parent. The order of the topics is
        #     unspecified.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as `page_token` to retrieve the next page of
        #     results. If this field is omitted, there are no more results.
        class ListTopicsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for GetTopic.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the topic whose configuration to return. Structured
        #     like:
        #     projects/\\{project}/locations/\\{location}/clusters/\\{cluster}/topics/\\{topic}.
        class GetTopicRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for CreateTopic.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent cluster in which to create the topic.
        #     Structured like
        #     `projects/{project}/locations/{location}/clusters/{cluster}`.
        # @!attribute [rw] topic_id
        #   @return [::String]
        #     Required. The ID to use for the topic, which will become the final
        #     component of the topic's name.
        #
        #     This value is structured like: `my-topic-name`.
        # @!attribute [rw] topic
        #   @return [::Google::Cloud::ManagedKafka::V1::Topic]
        #     Required. Configuration of the topic to create. Its `name` field is
        #     ignored.
        class CreateTopicRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for UpdateTopic.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Field mask is used to specify the fields to be overwritten in the
        #     Topic resource by the update. The fields specified in the update_mask are
        #     relative to the resource, not the full request. A field will be overwritten
        #     if it is in the mask. The mask is required and a value of * will update all
        #     fields.
        # @!attribute [rw] topic
        #   @return [::Google::Cloud::ManagedKafka::V1::Topic]
        #     Required. The topic to update. Its `name` field must be populated.
        class UpdateTopicRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for DeleteTopic.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the topic to delete.
        #     `projects/{project}/locations/{location}/clusters/{cluster}/topics/{topic}`.
        class DeleteTopicRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for ListConsumerGroups.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent cluster whose consumer groups are to be listed.
        #     Structured like
        #     `projects/{project}/locations/{location}/clusters/{cluster}`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of consumer groups to return. The service may
        #     return fewer than this value. If unset or zero, all consumer groups for the
        #     parent is returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token, received from a previous `ListConsumerGroups` call.
        #     Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListConsumerGroups` must
        #     match the call that provided the page token.
        class ListConsumerGroupsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for ListConsumerGroups.
        # @!attribute [rw] consumer_groups
        #   @return [::Array<::Google::Cloud::ManagedKafka::V1::ConsumerGroup>]
        #     The list of consumer group in the requested parent. The order of the
        #     consumer groups is unspecified.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as `page_token` to retrieve the next page of
        #     results. If this field is omitted, there are no more results.
        class ListConsumerGroupsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for GetConsumerGroup.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the consumer group whose configuration to return.
        #     `projects/{project}/locations/{location}/clusters/{cluster}/consumerGroups/{consumerGroup}`.
        class GetConsumerGroupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for UpdateConsumerGroup.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Field mask is used to specify the fields to be overwritten in the
        #     ConsumerGroup resource by the update.
        #     The fields specified in the update_mask are relative to the resource, not
        #     the full request. A field will be overwritten if it is in the mask. The
        #     mask is required and a value of * will update all fields.
        # @!attribute [rw] consumer_group
        #   @return [::Google::Cloud::ManagedKafka::V1::ConsumerGroup]
        #     Required. The consumer group to update. Its `name` field must be populated.
        class UpdateConsumerGroupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for DeleteConsumerGroup.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the consumer group to delete.
        #     `projects/{project}/locations/{location}/clusters/{cluster}/consumerGroups/{consumerGroup}`.
        class DeleteConsumerGroupRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
