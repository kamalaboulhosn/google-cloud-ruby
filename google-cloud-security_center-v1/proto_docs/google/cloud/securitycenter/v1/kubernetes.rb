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
    module SecurityCenter
      module V1
        # Kubernetes-related attributes.
        # @!attribute [rw] pods
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Pod>]
        #     Kubernetes
        #     [Pods](https://cloud.google.com/kubernetes-engine/docs/concepts/pod)
        #     associated with the finding. This field contains Pod records for each
        #     container that is owned by a Pod.
        # @!attribute [rw] nodes
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Node>]
        #     Provides Kubernetes
        #     [node](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-architecture#nodes)
        #     information.
        # @!attribute [rw] node_pools
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::NodePool>]
        #     GKE [node
        #     pools](https://cloud.google.com/kubernetes-engine/docs/concepts/node-pools)
        #     associated with the finding. This field contains node pool information for
        #     each node, when it is available.
        # @!attribute [rw] roles
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Role>]
        #     Provides Kubernetes role information for findings that involve [Roles or
        #     ClusterRoles](https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control).
        # @!attribute [rw] bindings
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Binding>]
        #     Provides Kubernetes role binding information for findings that involve
        #     [RoleBindings or
        #     ClusterRoleBindings](https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control).
        # @!attribute [rw] access_reviews
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::AccessReview>]
        #     Provides information on any Kubernetes access reviews (privilege checks)
        #     relevant to the finding.
        # @!attribute [rw] objects
        #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Object>]
        #     Kubernetes objects related to the finding.
        class Kubernetes
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # A Kubernetes Pod.
          # @!attribute [rw] ns
          #   @return [::String]
          #     Kubernetes Pod namespace.
          # @!attribute [rw] name
          #   @return [::String]
          #     Kubernetes Pod name.
          # @!attribute [rw] labels
          #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Label>]
          #     Pod labels.  For Kubernetes containers, these are applied to the
          #     container.
          # @!attribute [rw] containers
          #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Container>]
          #     Pod containers associated with this finding, if any.
          class Pod
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Kubernetes nodes associated with the finding.
          # @!attribute [rw] name
          #   @return [::String]
          #     [Full resource name](https://google.aip.dev/122#full-resource-names) of
          #     the Compute Engine VM running the cluster node.
          class Node
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Provides GKE node pool information.
          # @!attribute [rw] name
          #   @return [::String]
          #     Kubernetes node pool name.
          # @!attribute [rw] nodes
          #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Node>]
          #     Nodes associated with the finding.
          class NodePool
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Kubernetes Role or ClusterRole.
          # @!attribute [rw] kind
          #   @return [::Google::Cloud::SecurityCenter::V1::Kubernetes::Role::Kind]
          #     Role type.
          # @!attribute [rw] ns
          #   @return [::String]
          #     Role namespace.
          # @!attribute [rw] name
          #   @return [::String]
          #     Role name.
          class Role
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Types of Kubernetes roles.
            module Kind
              # Role type is not specified.
              KIND_UNSPECIFIED = 0

              # Kubernetes Role.
              ROLE = 1

              # Kubernetes ClusterRole.
              CLUSTER_ROLE = 2
            end
          end

          # Represents a Kubernetes RoleBinding or ClusterRoleBinding.
          # @!attribute [rw] ns
          #   @return [::String]
          #     Namespace for the binding.
          # @!attribute [rw] name
          #   @return [::String]
          #     Name for the binding.
          # @!attribute [rw] role
          #   @return [::Google::Cloud::SecurityCenter::V1::Kubernetes::Role]
          #     The Role or ClusterRole referenced by the binding.
          # @!attribute [rw] subjects
          #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Kubernetes::Subject>]
          #     Represents one or more subjects that are bound to the role. Not always
          #     available for PATCH requests.
          class Binding
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Represents a Kubernetes subject.
          # @!attribute [rw] kind
          #   @return [::Google::Cloud::SecurityCenter::V1::Kubernetes::Subject::AuthType]
          #     Authentication type for the subject.
          # @!attribute [rw] ns
          #   @return [::String]
          #     Namespace for the subject.
          # @!attribute [rw] name
          #   @return [::String]
          #     Name for the subject.
          class Subject
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Auth types that can be used for the subject's kind field.
            module AuthType
              # Authentication is not specified.
              AUTH_TYPE_UNSPECIFIED = 0

              # User with valid certificate.
              USER = 1

              # Users managed by Kubernetes API with credentials stored as secrets.
              SERVICEACCOUNT = 2

              # Collection of users.
              GROUP = 3
            end
          end

          # Conveys information about a Kubernetes access review (such as one returned
          # by a [`kubectl auth
          # can-i`](https://kubernetes.io/docs/reference/access-authn-authz/authorization/#checking-api-access)
          # command) that was involved in a finding.
          # @!attribute [rw] group
          #   @return [::String]
          #     The API group of the resource. "*" means all.
          # @!attribute [rw] ns
          #   @return [::String]
          #     Namespace of the action being requested. Currently, there is no
          #     distinction between no namespace and all namespaces.  Both
          #     are represented by "" (empty).
          # @!attribute [rw] name
          #   @return [::String]
          #     The name of the resource being requested. Empty means all.
          # @!attribute [rw] resource
          #   @return [::String]
          #     The optional resource type requested. "*" means all.
          # @!attribute [rw] subresource
          #   @return [::String]
          #     The optional subresource type.
          # @!attribute [rw] verb
          #   @return [::String]
          #     A Kubernetes resource API verb, like get, list, watch, create, update,
          #     delete, proxy. "*" means all.
          # @!attribute [rw] version
          #   @return [::String]
          #     The API version of the resource. "*" means all.
          class AccessReview
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Kubernetes object related to the finding, uniquely identified by GKNN.
          # Used if the object Kind is not one of Pod, Node, NodePool, Binding, or
          # AccessReview.
          # @!attribute [rw] group
          #   @return [::String]
          #     Kubernetes object group, such as "policy.k8s.io/v1".
          # @!attribute [rw] kind
          #   @return [::String]
          #     Kubernetes object kind, such as "Namespace".
          # @!attribute [rw] ns
          #   @return [::String]
          #     Kubernetes object namespace. Must be a valid DNS label. Named
          #     "ns" to avoid collision with C++ namespace keyword. For details see
          #     https://kubernetes.io/docs/tasks/administer-cluster/namespaces/.
          # @!attribute [rw] name
          #   @return [::String]
          #     Kubernetes object name. For details see
          #     https://kubernetes.io/docs/concepts/overview/working-with-objects/names/.
          # @!attribute [rw] containers
          #   @return [::Array<::Google::Cloud::SecurityCenter::V1::Container>]
          #     Pod containers associated with this finding, if any.
          class Object
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
