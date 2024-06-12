# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/managedkafka/v1/managed_kafka.proto for package 'Google.Cloud.ManagedKafka.V1'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/managedkafka/v1/managed_kafka_pb'

module Google
  module Cloud
    module ManagedKafka
      module V1
        module ManagedKafka
          # The service that a client application uses to manage Apache Kafka clusters,
          # topics and consumer groups.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.managedkafka.v1.ManagedKafka'

            # Lists the clusters in a given project and location.
            rpc :ListClusters, ::Google::Cloud::ManagedKafka::V1::ListClustersRequest, ::Google::Cloud::ManagedKafka::V1::ListClustersResponse
            # Returns the properties of a single cluster.
            rpc :GetCluster, ::Google::Cloud::ManagedKafka::V1::GetClusterRequest, ::Google::Cloud::ManagedKafka::V1::Cluster
            # Creates a new cluster in a given project and location.
            rpc :CreateCluster, ::Google::Cloud::ManagedKafka::V1::CreateClusterRequest, ::Google::Longrunning::Operation
            # Updates the properties of a single cluster.
            rpc :UpdateCluster, ::Google::Cloud::ManagedKafka::V1::UpdateClusterRequest, ::Google::Longrunning::Operation
            # Deletes a single cluster.
            rpc :DeleteCluster, ::Google::Cloud::ManagedKafka::V1::DeleteClusterRequest, ::Google::Longrunning::Operation
            # Lists the topics in a given cluster.
            rpc :ListTopics, ::Google::Cloud::ManagedKafka::V1::ListTopicsRequest, ::Google::Cloud::ManagedKafka::V1::ListTopicsResponse
            # Returns the properties of a single topic.
            rpc :GetTopic, ::Google::Cloud::ManagedKafka::V1::GetTopicRequest, ::Google::Cloud::ManagedKafka::V1::Topic
            # Creates a new topic in a given project and location.
            rpc :CreateTopic, ::Google::Cloud::ManagedKafka::V1::CreateTopicRequest, ::Google::Cloud::ManagedKafka::V1::Topic
            # Updates the properties of a single topic.
            rpc :UpdateTopic, ::Google::Cloud::ManagedKafka::V1::UpdateTopicRequest, ::Google::Cloud::ManagedKafka::V1::Topic
            # Deletes a single topic.
            rpc :DeleteTopic, ::Google::Cloud::ManagedKafka::V1::DeleteTopicRequest, ::Google::Protobuf::Empty
            # Lists the consumer groups in a given cluster.
            rpc :ListConsumerGroups, ::Google::Cloud::ManagedKafka::V1::ListConsumerGroupsRequest, ::Google::Cloud::ManagedKafka::V1::ListConsumerGroupsResponse
            # Returns the properties of a single consumer group.
            rpc :GetConsumerGroup, ::Google::Cloud::ManagedKafka::V1::GetConsumerGroupRequest, ::Google::Cloud::ManagedKafka::V1::ConsumerGroup
            # Updates the properties of a single consumer group.
            rpc :UpdateConsumerGroup, ::Google::Cloud::ManagedKafka::V1::UpdateConsumerGroupRequest, ::Google::Cloud::ManagedKafka::V1::ConsumerGroup
            # Deletes a single consumer group.
            rpc :DeleteConsumerGroup, ::Google::Cloud::ManagedKafka::V1::DeleteConsumerGroupRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
