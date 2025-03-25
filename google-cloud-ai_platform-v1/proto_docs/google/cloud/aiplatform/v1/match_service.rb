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
    module AIPlatform
      module V1
        # The request message for
        # {::Google::Cloud::AIPlatform::V1::MatchService::Client#find_neighbors MatchService.FindNeighbors}.
        # @!attribute [rw] index_endpoint
        #   @return [::String]
        #     Required. The name of the index endpoint.
        #     Format:
        #     `projects/{project}/locations/{location}/indexEndpoints/{index_endpoint}`
        # @!attribute [rw] deployed_index_id
        #   @return [::String]
        #     The ID of the DeployedIndex that will serve the request. This request is
        #     sent to a specific IndexEndpoint, as per the IndexEndpoint.network. That
        #     IndexEndpoint also has IndexEndpoint.deployed_indexes, and each such index
        #     has a DeployedIndex.id field.
        #     The value of the field below must equal one of the DeployedIndex.id
        #     fields of the IndexEndpoint that is being called for this request.
        # @!attribute [rw] queries
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::FindNeighborsRequest::Query>]
        #     The list of queries.
        # @!attribute [rw] return_full_datapoint
        #   @return [::Boolean]
        #     If set to true, the full datapoints (including all vector values and
        #     restricts) of the nearest neighbors are returned.
        #     Note that returning full datapoint will significantly increase the
        #     latency and cost of the query.
        class FindNeighborsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A query to find a number of the nearest neighbors (most similar vectors)
          # of a vector.
          # @!attribute [rw] rrf
          #   @return [::Google::Cloud::AIPlatform::V1::FindNeighborsRequest::Query::RRF]
          #     Optional. Represents RRF algorithm that combines search results.
          # @!attribute [rw] datapoint
          #   @return [::Google::Cloud::AIPlatform::V1::IndexDatapoint]
          #     Required. The datapoint/vector whose nearest neighbors should be searched
          #     for.
          # @!attribute [rw] neighbor_count
          #   @return [::Integer]
          #     The number of nearest neighbors to be retrieved from database for each
          #     query. If not set, will use the default from the service configuration
          #     (https://cloud.google.com/vertex-ai/docs/matching-engine/configuring-indexes#nearest-neighbor-search-config).
          # @!attribute [rw] per_crowding_attribute_neighbor_count
          #   @return [::Integer]
          #     Crowding is a constraint on a neighbor list produced by nearest neighbor
          #     search requiring that no more than some value k' of the k neighbors
          #     returned have the same value of crowding_attribute.
          #     It's used for improving result diversity.
          #     This field is the maximum number of matches with the same crowding tag.
          # @!attribute [rw] approximate_neighbor_count
          #   @return [::Integer]
          #     The number of neighbors to find via approximate search before
          #     exact reordering is performed. If not set, the default value from scam
          #     config is used; if set, this value must be > 0.
          # @!attribute [rw] fraction_leaf_nodes_to_search_override
          #   @return [::Float]
          #     The fraction of the number of leaves to search, set at query time allows
          #     user to tune search performance. This value increase result in both
          #     search accuracy and latency increase. The value should be between 0.0
          #     and 1.0. If not set or set to 0.0, query uses the default value specified
          #     in
          #     NearestNeighborSearchConfig.TreeAHConfig.fraction_leaf_nodes_to_search.
          class Query
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Parameters for RRF algorithm that combines search results.
            # @!attribute [rw] alpha
            #   @return [::Float]
            #     Required. Users can provide an alpha value to give more weight to dense
            #     vs sparse results. For example, if the alpha is 0, we only return
            #     sparse and if the alpha is 1, we only return dense.
            class RRF
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end
          end
        end

        # The response message for
        # {::Google::Cloud::AIPlatform::V1::MatchService::Client#find_neighbors MatchService.FindNeighbors}.
        # @!attribute [rw] nearest_neighbors
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::FindNeighborsResponse::NearestNeighbors>]
        #     The nearest neighbors of the query datapoints.
        class FindNeighborsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A neighbor of the query vector.
          # @!attribute [rw] datapoint
          #   @return [::Google::Cloud::AIPlatform::V1::IndexDatapoint]
          #     The datapoint of the neighbor.
          #     Note that full datapoints are returned only when "return_full_datapoint"
          #     is set to true. Otherwise, only the "datapoint_id" and "crowding_tag"
          #     fields are populated.
          # @!attribute [rw] distance
          #   @return [::Float]
          #     The distance between the neighbor and the dense embedding query.
          # @!attribute [rw] sparse_distance
          #   @return [::Float]
          #     The distance between the neighbor and the query sparse_embedding.
          class Neighbor
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Nearest neighbors for one query.
          # @!attribute [rw] id
          #   @return [::String]
          #     The ID of the query datapoint.
          # @!attribute [rw] neighbors
          #   @return [::Array<::Google::Cloud::AIPlatform::V1::FindNeighborsResponse::Neighbor>]
          #     All its neighbors.
          class NearestNeighbors
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The request message for
        # {::Google::Cloud::AIPlatform::V1::MatchService::Client#read_index_datapoints MatchService.ReadIndexDatapoints}.
        # @!attribute [rw] index_endpoint
        #   @return [::String]
        #     Required. The name of the index endpoint.
        #     Format:
        #     `projects/{project}/locations/{location}/indexEndpoints/{index_endpoint}`
        # @!attribute [rw] deployed_index_id
        #   @return [::String]
        #     The ID of the DeployedIndex that will serve the request.
        # @!attribute [rw] ids
        #   @return [::Array<::String>]
        #     IDs of the datapoints to be searched for.
        class ReadIndexDatapointsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::AIPlatform::V1::MatchService::Client#read_index_datapoints MatchService.ReadIndexDatapoints}.
        # @!attribute [rw] datapoints
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::IndexDatapoint>]
        #     The result list of datapoints.
        class ReadIndexDatapointsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
