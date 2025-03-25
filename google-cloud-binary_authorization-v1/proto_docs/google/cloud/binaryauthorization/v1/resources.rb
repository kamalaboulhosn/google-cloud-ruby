# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module BinaryAuthorization
      module V1
        # A {::Google::Cloud::BinaryAuthorization::V1::Policy policy} for container image binary authorization.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name, in the format `projects/*/policy`. There is
        #     at most one policy per project.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A descriptive comment.
        # @!attribute [rw] global_policy_evaluation_mode
        #   @return [::Google::Cloud::BinaryAuthorization::V1::Policy::GlobalPolicyEvaluationMode]
        #     Optional. Controls the evaluation of a Google-maintained global admission
        #     policy for common system-level images. Images not covered by the global
        #     policy will be subject to the project admission policy. This setting
        #     has no effect when specified inside a global admission policy.
        # @!attribute [rw] admission_whitelist_patterns
        #   @return [::Array<::Google::Cloud::BinaryAuthorization::V1::AdmissionWhitelistPattern>]
        #     Optional. Admission policy allowlisting. A matching admission request will
        #     always be permitted. This feature is typically used to exclude Google or
        #     third-party infrastructure images from Binary Authorization policies.
        # @!attribute [rw] cluster_admission_rules
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::BinaryAuthorization::V1::AdmissionRule}]
        #     Optional. Per-cluster admission rules. Cluster spec format:
        #     `location.clusterId`. There can be at most one admission rule per cluster
        #     spec.
        #     A `location` is either a compute zone (e.g. us-central1-a) or a region
        #     (e.g. us-central1).
        #     For `clusterId` syntax restrictions see
        #     https://cloud.google.com/container-engine/reference/rest/v1/projects.zones.clusters.
        # @!attribute [rw] kubernetes_namespace_admission_rules
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::BinaryAuthorization::V1::AdmissionRule}]
        #     Optional. Per-kubernetes-namespace admission rules. K8s namespace spec format:
        #     [a-z.-]+, e.g. 'some-namespace'
        # @!attribute [rw] kubernetes_service_account_admission_rules
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::BinaryAuthorization::V1::AdmissionRule}]
        #     Optional. Per-kubernetes-service-account admission rules. Service account
        #     spec format: `namespace:serviceaccount`. e.g. 'test-ns:default'
        # @!attribute [rw] istio_service_identity_admission_rules
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::BinaryAuthorization::V1::AdmissionRule}]
        #     Optional. Per-istio-service-identity admission rules. Istio service
        #     identity spec format:
        #     spiffe://<domain>/ns/<namespace>/sa/<serviceaccount> or
        #     <domain>/ns/<namespace>/sa/<serviceaccount>
        #     e.g. spiffe://example.com/ns/test-ns/sa/default
        # @!attribute [rw] default_admission_rule
        #   @return [::Google::Cloud::BinaryAuthorization::V1::AdmissionRule]
        #     Required. Default admission rule for a cluster without a per-cluster, per-
        #     kubernetes-service-account, or per-istio-service-identity admission rule.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the policy was last updated.
        class Policy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::BinaryAuthorization::V1::AdmissionRule]
          class ClusterAdmissionRulesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::BinaryAuthorization::V1::AdmissionRule]
          class KubernetesNamespaceAdmissionRulesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::BinaryAuthorization::V1::AdmissionRule]
          class KubernetesServiceAccountAdmissionRulesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::BinaryAuthorization::V1::AdmissionRule]
          class IstioServiceIdentityAdmissionRulesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          module GlobalPolicyEvaluationMode
            # Not specified: DISABLE is assumed.
            GLOBAL_POLICY_EVALUATION_MODE_UNSPECIFIED = 0

            # Enables system policy evaluation.
            ENABLE = 1

            # Disables system policy evaluation.
            DISABLE = 2
          end
        end

        # An {::Google::Cloud::BinaryAuthorization::V1::AdmissionWhitelistPattern admission allowlist pattern} exempts images
        # from checks by {::Google::Cloud::BinaryAuthorization::V1::AdmissionRule admission rules}.
        # @!attribute [rw] name_pattern
        #   @return [::String]
        #     An image name pattern to allowlist, in the form `registry/path/to/image`.
        #     This supports a trailing `*` wildcard, but this is allowed only in
        #     text after the `registry/` part. This also supports a trailing `**`
        #     wildcard which matches subdirectories of a given entry.
        class AdmissionWhitelistPattern
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An {::Google::Cloud::BinaryAuthorization::V1::AdmissionRule admission rule} specifies either that all container images
        # used in a pod creation request must be attested to by one or more
        # {::Google::Cloud::BinaryAuthorization::V1::Attestor attestors}, that all pod creations will be allowed, or that all
        # pod creations will be denied.
        #
        # Images matching an {::Google::Cloud::BinaryAuthorization::V1::AdmissionWhitelistPattern admission allowlist pattern}
        # are exempted from admission rules and will never block a pod creation.
        # @!attribute [rw] evaluation_mode
        #   @return [::Google::Cloud::BinaryAuthorization::V1::AdmissionRule::EvaluationMode]
        #     Required. How this admission rule will be evaluated.
        # @!attribute [rw] require_attestations_by
        #   @return [::Array<::String>]
        #     Optional. The resource names of the attestors that must attest to
        #     a container image, in the format `projects/*/attestors/*`. Each
        #     attestor must exist before a policy can reference it.  To add an attestor
        #     to a policy the principal issuing the policy change request must be able
        #     to read the attestor resource.
        #
        #     Note: this field must be non-empty when the evaluation_mode field specifies
        #     REQUIRE_ATTESTATION, otherwise it must be empty.
        # @!attribute [rw] enforcement_mode
        #   @return [::Google::Cloud::BinaryAuthorization::V1::AdmissionRule::EnforcementMode]
        #     Required. The action when a pod creation is denied by the admission rule.
        class AdmissionRule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          module EvaluationMode
            # Do not use.
            EVALUATION_MODE_UNSPECIFIED = 0

            # This rule allows all all pod creations.
            ALWAYS_ALLOW = 1

            # This rule allows a pod creation if all the attestors listed in
            # 'require_attestations_by' have valid attestations for all of the
            # images in the pod spec.
            REQUIRE_ATTESTATION = 2

            # This rule denies all pod creations.
            ALWAYS_DENY = 3
          end

          # Defines the possible actions when a pod creation is denied by an admission
          # rule.
          module EnforcementMode
            # Do not use.
            ENFORCEMENT_MODE_UNSPECIFIED = 0

            # Enforce the admission rule by blocking the pod creation.
            ENFORCED_BLOCK_AND_AUDIT_LOG = 1

            # Dryrun mode: Audit logging only.  This will allow the pod creation as if
            # the admission request had specified break-glass.
            DRYRUN_AUDIT_LOG_ONLY = 2
          end
        end

        # An {::Google::Cloud::BinaryAuthorization::V1::Attestor attestor} that attests to container image
        # artifacts. An existing attestor cannot be modified except where
        # indicated.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name, in the format:
        #     `projects/*/attestors/*`. This field may not be updated.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. A descriptive comment.  This field may be updated.
        #     The field may be displayed in chooser dialogs.
        # @!attribute [rw] user_owned_grafeas_note
        #   @return [::Google::Cloud::BinaryAuthorization::V1::UserOwnedGrafeasNote]
        #     This specifies how an attestation will be read, and how it will be used
        #     during policy enforcement.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. Time when the attestor was last updated.
        class Attestor
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An {::Google::Cloud::BinaryAuthorization::V1::UserOwnedGrafeasNote user owned Grafeas note} references a Grafeas
        # Attestation.Authority Note created by the user.
        # @!attribute [rw] note_reference
        #   @return [::String]
        #     Required. The Grafeas resource name of a Attestation.Authority Note,
        #     created by the user, in the format: `projects/*/notes/*`. This field may
        #     not be updated.
        #
        #     An attestation by this attestor is stored as a Grafeas
        #     Attestation.Authority Occurrence that names a container image and that
        #     links to this Note. Grafeas is an external dependency.
        # @!attribute [rw] public_keys
        #   @return [::Array<::Google::Cloud::BinaryAuthorization::V1::AttestorPublicKey>]
        #     Optional. Public keys that verify attestations signed by this
        #     attestor.  This field may be updated.
        #
        #     If this field is non-empty, one of the specified public keys must
        #     verify that an attestation was signed by this attestor for the
        #     image specified in the admission request.
        #
        #     If this field is empty, this attestor always returns that no
        #     valid attestations exist.
        # @!attribute [r] delegation_service_account_email
        #   @return [::String]
        #     Output only. This field will contain the service account email address
        #     that this Attestor will use as the principal when querying Container
        #     Analysis. Attestor administrators must grant this service account the
        #     IAM role needed to read attestations from the [note_reference][Note] in
        #     Container Analysis (`containeranalysis.notes.occurrences.viewer`).
        #
        #     This email address is fixed for the lifetime of the Attestor, but callers
        #     should not make any other assumptions about the service account email;
        #     future versions may use an email based on a different naming pattern.
        class UserOwnedGrafeasNote
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A public key in the PkixPublicKey format (see
        # https://tools.ietf.org/html/rfc5280#section-4.1.2.7 for details).
        # Public keys of this type are typically textually encoded using the PEM
        # format.
        # @!attribute [rw] public_key_pem
        #   @return [::String]
        #     A PEM-encoded public key, as described in
        #     https://tools.ietf.org/html/rfc7468#section-13
        # @!attribute [rw] signature_algorithm
        #   @return [::Google::Cloud::BinaryAuthorization::V1::PkixPublicKey::SignatureAlgorithm]
        #     The signature algorithm used to verify a message against a signature using
        #     this key.
        #     These signature algorithm must match the structure and any object
        #     identifiers encoded in `public_key_pem` (i.e. this algorithm must match
        #     that of the public key).
        class PkixPublicKey
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents a signature algorithm and other information necessary to verify
          # signatures with a given public key.
          # This is based primarily on the public key types supported by Tink's
          # PemKeyType, which is in turn based on KMS's supported signing algorithms.
          # See https://cloud.google.com/kms/docs/algorithms. In the future, BinAuthz
          # might support additional public key types independently of Tink and/or KMS.
          module SignatureAlgorithm
            # Not specified.
            SIGNATURE_ALGORITHM_UNSPECIFIED = 0

            # RSASSA-PSS 2048 bit key with a SHA256 digest.
            RSA_PSS_2048_SHA256 = 1

            # RSASSA-PSS 3072 bit key with a SHA256 digest.
            RSA_PSS_3072_SHA256 = 2

            # RSASSA-PSS 4096 bit key with a SHA256 digest.
            RSA_PSS_4096_SHA256 = 3

            # RSASSA-PSS 4096 bit key with a SHA512 digest.
            RSA_PSS_4096_SHA512 = 4

            # RSASSA-PKCS1-v1_5 with a 2048 bit key and a SHA256 digest.
            RSA_SIGN_PKCS1_2048_SHA256 = 5

            # RSASSA-PKCS1-v1_5 with a 3072 bit key and a SHA256 digest.
            RSA_SIGN_PKCS1_3072_SHA256 = 6

            # RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA256 digest.
            RSA_SIGN_PKCS1_4096_SHA256 = 7

            # RSASSA-PKCS1-v1_5 with a 4096 bit key and a SHA512 digest.
            RSA_SIGN_PKCS1_4096_SHA512 = 8

            # ECDSA on the NIST P-256 curve with a SHA256 digest.
            ECDSA_P256_SHA256 = 9

            # ECDSA on the NIST P-256 curve with a SHA256 digest.
            EC_SIGN_P256_SHA256 = 9

            # ECDSA on the NIST P-384 curve with a SHA384 digest.
            ECDSA_P384_SHA384 = 10

            # ECDSA on the NIST P-384 curve with a SHA384 digest.
            EC_SIGN_P384_SHA384 = 10

            # ECDSA on the NIST P-521 curve with a SHA512 digest.
            ECDSA_P521_SHA512 = 11

            # ECDSA on the NIST P-521 curve with a SHA512 digest.
            EC_SIGN_P521_SHA512 = 11
          end
        end

        # An {::Google::Cloud::BinaryAuthorization::V1::AttestorPublicKey attestor public key} that will be used to verify
        # attestations signed by this attestor.
        # @!attribute [rw] comment
        #   @return [::String]
        #     Optional. A descriptive comment. This field may be updated.
        # @!attribute [rw] id
        #   @return [::String]
        #     The ID of this public key.
        #     Signatures verified by BinAuthz must include the ID of the public key that
        #     can be used to verify them, and that ID must match the contents of this
        #     field exactly.
        #     Additional restrictions on this field can be imposed based on which public
        #     key type is encapsulated. See the documentation on `public_key` cases below
        #     for details.
        # @!attribute [rw] ascii_armored_pgp_public_key
        #   @return [::String]
        #     ASCII-armored representation of a PGP public key, as the entire output by
        #     the command `gpg --export --armor foo@example.com` (either LF or CRLF
        #     line endings).
        #     When using this field, `id` should be left blank.  The BinAuthz API
        #     handlers will calculate the ID and fill it in automatically.  BinAuthz
        #     computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as
        #     upper-case hex.  If `id` is provided by the caller, it will be
        #     overwritten by the API-calculated ID.
        #
        #     Note: The following fields are mutually exclusive: `ascii_armored_pgp_public_key`, `pkix_public_key`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] pkix_public_key
        #   @return [::Google::Cloud::BinaryAuthorization::V1::PkixPublicKey]
        #     A raw PKIX SubjectPublicKeyInfo format public key.
        #
        #     NOTE: `id` may be explicitly provided by the caller when using this
        #     type of public key, but it MUST be a valid RFC3986 URI. If `id` is left
        #     blank, a default one will be computed based on the digest of the DER
        #     encoding of the public key.
        #
        #     Note: The following fields are mutually exclusive: `pkix_public_key`, `ascii_armored_pgp_public_key`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class AttestorPublicKey
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
