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
  module Iam
    module V1
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources.
      #
      #
      # A `Policy` is a collection of `bindings`. A `binding` binds one or more
      # `members`, or principals, to a single `role`. Principals can be user
      # accounts, service accounts, Google groups, and domains (such as G Suite). A
      # `role` is a named list of permissions; each `role` can be an IAM predefined
      # role or a user-created custom role.
      #
      # For some types of Google Cloud resources, a `binding` can also specify a
      # `condition`, which is a logical expression that allows access to a resource
      # only if the expression evaluates to `true`. A condition can add constraints
      # based on attributes of the request, the resource, or both. To learn which
      # resources support conditions in their IAM policies, see the
      # [IAM
      # documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
      #
      # **JSON example:**
      #
      # ```
      #     {
      #       "bindings": [
      #         {
      #           "role": "roles/resourcemanager.organizationAdmin",
      #           "members": [
      #             "user:mike@example.com",
      #             "group:admins@example.com",
      #             "domain:google.com",
      #             "serviceAccount:my-project-id@appspot.gserviceaccount.com"
      #           ]
      #         },
      #         {
      #           "role": "roles/resourcemanager.organizationViewer",
      #           "members": [
      #             "user:eve@example.com"
      #           ],
      #           "condition": {
      #             "title": "expirable access",
      #             "description": "Does not grant access after Sep 2020",
      #             "expression": "request.time <
      #             timestamp('2020-10-01T00:00:00.000Z')",
      #           }
      #         }
      #       ],
      #       "etag": "BwWWja0YfJA=",
      #       "version": 3
      #     }
      # ```
      #
      # **YAML example:**
      #
      # ```
      #     bindings:
      #     - members:
      #       - user:mike@example.com
      #       - group:admins@example.com
      #       - domain:google.com
      #       - serviceAccount:my-project-id@appspot.gserviceaccount.com
      #       role: roles/resourcemanager.organizationAdmin
      #     - members:
      #       - user:eve@example.com
      #       role: roles/resourcemanager.organizationViewer
      #       condition:
      #         title: expirable access
      #         description: Does not grant access after Sep 2020
      #         expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
      #     etag: BwWWja0YfJA=
      #     version: 3
      # ```
      #
      # For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      # @!attribute [rw] version
      #   @return [::Integer]
      #     Specifies the format of the policy.
      #
      #     Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
      #     are rejected.
      #
      #     Any operation that affects conditional role bindings must specify version
      #     `3`. This requirement applies to the following operations:
      #
      #     * Getting a policy that includes a conditional role binding
      #     * Adding a conditional role binding to a policy
      #     * Changing a conditional role binding in a policy
      #     * Removing any role binding, with or without a condition, from a policy
      #       that includes conditions
      #
      #     **Important:** If you use IAM Conditions, you must include the `etag` field
      #     whenever you call `setIamPolicy`. If you omit this field, then IAM allows
      #     you to overwrite a version `3` policy with a version `1` policy, and all of
      #     the conditions in the version `3` policy are lost.
      #
      #     If a policy does not include any conditions, operations on that policy may
      #     specify any valid version or leave the field unset.
      #
      #     To learn which resources support conditions in their IAM policies, see the
      #     [IAM
      #     documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
      # @!attribute [rw] bindings
      #   @return [::Array<::Google::Iam::V1::Binding>]
      #     Associates a list of `members`, or principals, with a `role`. Optionally,
      #     may specify a `condition` that determines how and when the `bindings` are
      #     applied. Each of the `bindings` must contain at least one principal.
      #
      #     The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250
      #     of these principals can be Google groups. Each occurrence of a principal
      #     counts towards these limits. For example, if the `bindings` grant 50
      #     different roles to `user:alice@example.com`, and not to any other
      #     principal, then you can add another 1,450 principals to the `bindings` in
      #     the `Policy`.
      # @!attribute [rw] audit_configs
      #   @return [::Array<::Google::Iam::V1::AuditConfig>]
      #     Specifies cloud audit logging configuration for this policy.
      # @!attribute [rw] etag
      #   @return [::String]
      #     `etag` is used for optimistic concurrency control as a way to help
      #     prevent simultaneous updates of a policy from overwriting each other.
      #     It is strongly suggested that systems make use of the `etag` in the
      #     read-modify-write cycle to perform policy updates in order to avoid race
      #     conditions: An `etag` is returned in the response to `getIamPolicy`, and
      #     systems are expected to put that etag in the request to `setIamPolicy` to
      #     ensure that their change will be applied to the same version of the policy.
      #
      #     **Important:** If you use IAM Conditions, you must include the `etag` field
      #     whenever you call `setIamPolicy`. If you omit this field, then IAM allows
      #     you to overwrite a version `3` policy with a version `1` policy, and all of
      #     the conditions in the version `3` policy are lost.
      class Policy
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Associates `members`, or principals, with a `role`.
      # @!attribute [rw] role
      #   @return [::String]
      #     Role that is assigned to the list of `members`, or principals.
      #     For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
      # @!attribute [rw] members
      #   @return [::Array<::String>]
      #     Specifies the principals requesting access for a Google Cloud resource.
      #     `members` can have the following values:
      #
      #     * `allUsers`: A special identifier that represents anyone who is
      #        on the internet; with or without a Google account.
      #
      #     * `allAuthenticatedUsers`: A special identifier that represents anyone
      #        who is authenticated with a Google account or a service account.
      #
      #     * `user:{emailid}`: An email address that represents a specific Google
      #        account. For example, `alice@example.com` .
      #
      #
      #     * `serviceAccount:{emailid}`: An email address that represents a service
      #        account. For example, `my-other-app@appspot.gserviceaccount.com`.
      #
      #     * `group:{emailid}`: An email address that represents a Google group.
      #        For example, `admins@example.com`.
      #
      #     * `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
      #        identifier) representing a user that has been recently deleted. For
      #        example, `alice@example.com?uid=123456789012345678901`. If the user is
      #        recovered, this value reverts to `user:{emailid}` and the recovered user
      #        retains the role in the binding.
      #
      #     * `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
      #        unique identifier) representing a service account that has been recently
      #        deleted. For example,
      #        `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
      #        If the service account is undeleted, this value reverts to
      #        `serviceAccount:{emailid}` and the undeleted service account retains the
      #        role in the binding.
      #
      #     * `deleted:group:{emailid}?uid={uniqueid}`: An email address (plus unique
      #        identifier) representing a Google group that has been recently
      #        deleted. For example, `admins@example.com?uid=123456789012345678901`. If
      #        the group is recovered, this value reverts to `group:{emailid}` and the
      #        recovered group retains the role in the binding.
      #
      #
      #     * `domain:{domain}`: The G Suite domain (primary) that represents all the
      #        users of that domain. For example, `google.com` or `example.com`.
      # @!attribute [rw] condition
      #   @return [::Google::Type::Expr]
      #     The condition that is associated with this binding.
      #
      #     If the condition evaluates to `true`, then this binding applies to the
      #     current request.
      #
      #     If the condition evaluates to `false`, then this binding does not apply to
      #     the current request. However, a different role binding might grant the same
      #     role to one or more of the principals in this binding.
      #
      #     To learn which resources support conditions in their IAM policies, see the
      #     [IAM
      #     documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
      class Binding
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Specifies the audit configuration for a service.
      # The configuration determines which permission types are logged, and what
      # identities, if any, are exempted from logging.
      # An AuditConfig must have one or more AuditLogConfigs.
      #
      # If there are AuditConfigs for both `allServices` and a specific service,
      # the union of the two AuditConfigs is used for that service: the log_types
      # specified in each AuditConfig are enabled, and the exempted_members in each
      # AuditLogConfig are exempted.
      #
      # Example Policy with multiple AuditConfigs:
      #
      #     {
      #       "audit_configs": [
      #         {
      #           "service": "allServices",
      #           "audit_log_configs": [
      #             {
      #               "log_type": "DATA_READ",
      #               "exempted_members": [
      #                 "user:jose@example.com"
      #               ]
      #             },
      #             {
      #               "log_type": "DATA_WRITE"
      #             },
      #             {
      #               "log_type": "ADMIN_READ"
      #             }
      #           ]
      #         },
      #         {
      #           "service": "sampleservice.googleapis.com",
      #           "audit_log_configs": [
      #             {
      #               "log_type": "DATA_READ"
      #             },
      #             {
      #               "log_type": "DATA_WRITE",
      #               "exempted_members": [
      #                 "user:aliya@example.com"
      #               ]
      #             }
      #           ]
      #         }
      #       ]
      #     }
      #
      # For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
      # logging. It also exempts `jose@example.com` from DATA_READ logging, and
      # `aliya@example.com` from DATA_WRITE logging.
      # @!attribute [rw] service
      #   @return [::String]
      #     Specifies a service that will be enabled for audit logging.
      #     For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
      #     `allServices` is a special value that covers all services.
      # @!attribute [rw] audit_log_configs
      #   @return [::Array<::Google::Iam::V1::AuditLogConfig>]
      #     The configuration for logging of each type of permission.
      class AuditConfig
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # Provides the configuration for logging a type of permissions.
      # Example:
      #
      #     {
      #       "audit_log_configs": [
      #         {
      #           "log_type": "DATA_READ",
      #           "exempted_members": [
      #             "user:jose@example.com"
      #           ]
      #         },
      #         {
      #           "log_type": "DATA_WRITE"
      #         }
      #       ]
      #     }
      #
      # This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
      # jose@example.com from DATA_READ logging.
      # @!attribute [rw] log_type
      #   @return [::Google::Iam::V1::AuditLogConfig::LogType]
      #     The log type that this config enables.
      # @!attribute [rw] exempted_members
      #   @return [::Array<::String>]
      #     Specifies the identities that do not cause logging for this type of
      #     permission.
      #     Follows the same format of
      #     {::Google::Iam::V1::Binding#members Binding.members}.
      class AuditLogConfig
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods

        # The list of valid permission types for which logging can be configured.
        # Admin writes are always logged, and are not configurable.
        module LogType
          # Default case. Should never be this.
          LOG_TYPE_UNSPECIFIED = 0

          # Admin reads. Example: CloudIAM getIamPolicy
          ADMIN_READ = 1

          # Data writes. Example: CloudSQL Users create
          DATA_WRITE = 2

          # Data reads. Example: CloudSQL Users list
          DATA_READ = 3
        end
      end

      # The difference delta between two policies.
      # @!attribute [rw] binding_deltas
      #   @return [::Array<::Google::Iam::V1::BindingDelta>]
      #     The delta for Bindings between two policies.
      # @!attribute [rw] audit_config_deltas
      #   @return [::Array<::Google::Iam::V1::AuditConfigDelta>]
      #     The delta for AuditConfigs between two policies.
      class PolicyDelta
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods
      end

      # One delta entry for Binding. Each individual change (only one member in each
      # entry) to a binding will be a separate entry.
      # @!attribute [rw] action
      #   @return [::Google::Iam::V1::BindingDelta::Action]
      #     The action that was performed on a Binding.
      #     Required
      # @!attribute [rw] role
      #   @return [::String]
      #     Role that is assigned to `members`.
      #     For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
      #     Required
      # @!attribute [rw] member
      #   @return [::String]
      #     A single identity requesting access for a Google Cloud resource.
      #     Follows the same format of Binding.members.
      #     Required
      # @!attribute [rw] condition
      #   @return [::Google::Type::Expr]
      #     The condition that is associated with this binding.
      class BindingDelta
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods

        # The type of action performed on a Binding in a policy.
        module Action
          # Unspecified.
          ACTION_UNSPECIFIED = 0

          # Addition of a Binding.
          ADD = 1

          # Removal of a Binding.
          REMOVE = 2
        end
      end

      # One delta entry for AuditConfig. Each individual change (only one
      # exempted_member in each entry) to a AuditConfig will be a separate entry.
      # @!attribute [rw] action
      #   @return [::Google::Iam::V1::AuditConfigDelta::Action]
      #     The action that was performed on an audit configuration in a policy.
      #     Required
      # @!attribute [rw] service
      #   @return [::String]
      #     Specifies a service that was configured for Cloud Audit Logging.
      #     For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
      #     `allServices` is a special value that covers all services.
      #     Required
      # @!attribute [rw] exempted_member
      #   @return [::String]
      #     A single identity that is exempted from "data access" audit
      #     logging for the `service` specified above.
      #     Follows the same format of Binding.members.
      # @!attribute [rw] log_type
      #   @return [::String]
      #     Specifies the log_type that was be enabled. ADMIN_ACTIVITY is always
      #     enabled, and cannot be configured.
      #     Required
      class AuditConfigDelta
        include ::Google::Protobuf::MessageExts
        extend ::Google::Protobuf::MessageExts::ClassMethods

        # The type of action performed on an audit configuration in a policy.
        module Action
          # Unspecified.
          ACTION_UNSPECIFIED = 0

          # Addition of an audit configuration.
          ADD = 1

          # Removal of an audit configuration.
          REMOVE = 2
        end
      end
    end
  end
end
