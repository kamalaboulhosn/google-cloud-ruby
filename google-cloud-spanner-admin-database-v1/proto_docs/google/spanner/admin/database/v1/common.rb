# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Spanner
      module Admin
        module Database
          module V1
            # Encapsulates progress related information for a Cloud Spanner long
            # running operation.
            # @!attribute [rw] progress_percent
            #   @return [::Integer]
            #     Percent completion of the operation.
            #     Values are between 0 and 100 inclusive.
            # @!attribute [rw] start_time
            #   @return [::Google::Protobuf::Timestamp]
            #     Time the request was received.
            # @!attribute [rw] end_time
            #   @return [::Google::Protobuf::Timestamp]
            #     If set, the time at which this operation failed or was completed
            #     successfully.
            class OperationProgress
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Encryption configuration for a Cloud Spanner database.
            # @!attribute [rw] kms_key_name
            #   @return [::String]
            #     The Cloud KMS key to be used for encrypting and decrypting
            #     the database. Values are of the form
            #     `projects/<project>/locations/<location>/keyRings/<key_ring>/cryptoKeys/<kms_key_name>`.
            # @!attribute [rw] kms_key_names
            #   @return [::Array<::String>]
            #     Specifies the KMS configuration for the one or more keys used to encrypt
            #     the database. Values are of the form
            #     `projects/<project>/locations/<location>/keyRings/<key_ring>/cryptoKeys/<kms_key_name>`.
            #
            #     The keys referenced by kms_key_names must fully cover all
            #     regions of the database instance configuration. Some examples:
            #     * For single region database instance configs, specify a single regional
            #     location KMS key.
            #     * For multi-regional database instance configs of type GOOGLE_MANAGED,
            #     either specify a multi-regional location KMS key or multiple regional
            #     location KMS keys that cover all regions in the instance config.
            #     * For a database instance config of type USER_MANAGED, please specify only
            #     regional location KMS keys to cover each region in the instance config.
            #     Multi-regional location KMS keys are not supported for USER_MANAGED
            #     instance configs.
            class EncryptionConfig
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Encryption information for a Cloud Spanner database or backup.
            # @!attribute [r] encryption_type
            #   @return [::Google::Cloud::Spanner::Admin::Database::V1::EncryptionInfo::Type]
            #     Output only. The type of encryption.
            # @!attribute [r] encryption_status
            #   @return [::Google::Rpc::Status]
            #     Output only. If present, the status of a recent encrypt/decrypt call on
            #     underlying data for this database or backup. Regardless of status, data is
            #     always encrypted at rest.
            # @!attribute [r] kms_key_version
            #   @return [::String]
            #     Output only. A Cloud KMS key version that is being used to protect the
            #     database or backup.
            class EncryptionInfo
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # Possible encryption types.
              module Type
                # Encryption type was not specified, though data at rest remains encrypted.
                TYPE_UNSPECIFIED = 0

                # The data is encrypted at rest with a key that is
                # fully managed by Google. No key version or status will be populated.
                # This is the default state.
                GOOGLE_DEFAULT_ENCRYPTION = 1

                # The data is encrypted at rest with a key that is
                # managed by the customer. The active version of the key. `kms_key_version`
                # will be populated, and `encryption_status` may be populated.
                CUSTOMER_MANAGED_ENCRYPTION = 2
              end
            end

            # Indicates the dialect type of a database.
            module DatabaseDialect
              # Default value. This value will create a database with the
              # GOOGLE_STANDARD_SQL dialect.
              DATABASE_DIALECT_UNSPECIFIED = 0

              # GoogleSQL supported SQL.
              GOOGLE_STANDARD_SQL = 1

              # PostgreSQL supported SQL.
              POSTGRESQL = 2
            end
          end
        end
      end
    end
  end
end
