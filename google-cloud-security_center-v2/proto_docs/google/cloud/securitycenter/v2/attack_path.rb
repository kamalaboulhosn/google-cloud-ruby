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
    module SecurityCenter
      module V2
        # A path that an attacker could take to reach an exposed resource.
        # @!attribute [rw] name
        #   @return [::String]
        #     The attack path name, for example,
        #      `organizations/12/simulations/34/valuedResources/56/attackPaths/78`
        # @!attribute [rw] path_nodes
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::AttackPath::AttackPathNode>]
        #     A list of nodes that exist in this attack path.
        # @!attribute [rw] edges
        #   @return [::Array<::Google::Cloud::SecurityCenter::V2::AttackPath::AttackPathEdge>]
        #     A list of the edges between nodes in this attack path.
        class AttackPath
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents one point that an attacker passes through in this attack path.
          # @!attribute [rw] resource
          #   @return [::String]
          #     The name of the resource at this point in the attack path.
          #     The format of the name follows the Cloud Asset Inventory [resource
          #     name
          #     format]("https://cloud.google.com/asset-inventory/docs/resource-name-format")
          # @!attribute [rw] resource_type
          #   @return [::String]
          #     The [supported resource
          #     type](https://cloud.google.com/asset-inventory/docs/supported-asset-types")
          # @!attribute [rw] display_name
          #   @return [::String]
          #     Human-readable name of this resource.
          # @!attribute [rw] associated_findings
          #   @return [::Array<::Google::Cloud::SecurityCenter::V2::AttackPath::AttackPathNode::PathNodeAssociatedFinding>]
          #     The findings associated with this node in the attack path.
          # @!attribute [rw] uuid
          #   @return [::String]
          #     Unique id of the attack path node.
          # @!attribute [rw] attack_steps
          #   @return [::Array<::Google::Cloud::SecurityCenter::V2::AttackPath::AttackPathNode::AttackStepNode>]
          #     A list of attack step nodes that exist in this attack path node.
          class AttackPathNode
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # A finding that is associated with this node in the attack path.
            # @!attribute [rw] canonical_finding
            #   @return [::String]
            #     Canonical name of the associated findings. Example:
            #     organizations/123/sources/456/findings/789
            # @!attribute [rw] finding_category
            #   @return [::String]
            #     The additional taxonomy group within findings from a given source.
            # @!attribute [rw] name
            #   @return [::String]
            #     Full resource name of the finding.
            class PathNodeAssociatedFinding
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Detailed steps the attack can take between path nodes.
            # @!attribute [rw] uuid
            #   @return [::String]
            #     Unique ID for one Node
            # @!attribute [rw] type
            #   @return [::Google::Cloud::SecurityCenter::V2::AttackPath::AttackPathNode::NodeType]
            #     Attack step type. Can be either AND, OR or DEFENSE
            # @!attribute [rw] display_name
            #   @return [::String]
            #     User friendly name of the attack step
            # @!attribute [rw] labels
            #   @return [::Google::Protobuf::Map{::String => ::String}]
            #     Attack step labels for metadata
            # @!attribute [rw] description
            #   @return [::String]
            #     Attack step description
            class AttackStepNode
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
            end

            # The type of the incoming attack step node.
            module NodeType
              # Type not specified
              NODE_TYPE_UNSPECIFIED = 0

              # Incoming edge joined with AND
              NODE_TYPE_AND = 1

              # Incoming edge joined with OR
              NODE_TYPE_OR = 2

              # Incoming edge is defense
              NODE_TYPE_DEFENSE = 3

              # Incoming edge is attacker
              NODE_TYPE_ATTACKER = 4
            end
          end

          # Represents a connection between a source node and a destination node in
          # this attack path.
          # @!attribute [rw] source
          #   @return [::String]
          #     The attack node uuid of the source node.
          # @!attribute [rw] destination
          #   @return [::String]
          #     The attack node uuid of the destination node.
          class AttackPathEdge
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
