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
    module Datastream
      module V1alpha1
        # Oracle database profile.
        # @!attribute [rw] hostname
        #   @return [::String]
        #     Required. Hostname for the Oracle connection.
        # @!attribute [rw] port
        #   @return [::Integer]
        #     Port for the Oracle connection, default value is 1521.
        # @!attribute [rw] username
        #   @return [::String]
        #     Required. Username for the Oracle connection.
        # @!attribute [rw] password
        #   @return [::String]
        #     Required. Password for the Oracle connection.
        # @!attribute [rw] database_service
        #   @return [::String]
        #     Required. Database for the Oracle connection.
        # @!attribute [rw] connection_attributes
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Connection string attributes
        class OracleProfile
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class ConnectionAttributesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # MySQL database profile.
        # @!attribute [rw] hostname
        #   @return [::String]
        #     Required. Hostname for the MySQL connection.
        # @!attribute [rw] port
        #   @return [::Integer]
        #     Port for the MySQL connection, default value is 3306.
        # @!attribute [rw] username
        #   @return [::String]
        #     Required. Username for the MySQL connection.
        # @!attribute [rw] password
        #   @return [::String]
        #     Required. Input only. Password for the MySQL connection.
        # @!attribute [rw] ssl_config
        #   @return [::Google::Cloud::Datastream::V1alpha1::MysqlSslConfig]
        #     SSL configuration for the MySQL connection.
        class MysqlProfile
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Cloud Storage bucket profile.
        # @!attribute [rw] bucket_name
        #   @return [::String]
        #     Required. The full project and resource path for Cloud Storage bucket including the
        #     name.
        # @!attribute [rw] root_path
        #   @return [::String]
        #     The root path inside the Cloud Storage bucket.
        class GcsProfile
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # No connectivity settings.
        class NoConnectivitySettings
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Static IP address connectivity.
        class StaticServiceIpConnectivity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Forward SSH Tunnel connectivity.
        # @!attribute [rw] hostname
        #   @return [::String]
        #     Required. Hostname for the SSH tunnel.
        # @!attribute [rw] username
        #   @return [::String]
        #     Required. Username for the SSH tunnel.
        # @!attribute [rw] port
        #   @return [::Integer]
        #     Port for the SSH tunnel, default value is 22.
        # @!attribute [rw] password
        #   @return [::String]
        #     Input only. SSH password.
        # @!attribute [rw] private_key
        #   @return [::String]
        #     Input only. SSH private key.
        class ForwardSshTunnelConnectivity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The VPC Peering configuration is used to create VPC peering between
        # Datastream and the consumer's VPC.
        # @!attribute [rw] vpc_name
        #   @return [::String]
        #     Required. fully qualified name of the VPC Datastream will peer to.
        # @!attribute [rw] subnet
        #   @return [::String]
        #     Required. A free subnet for peering. (CIDR of /29)
        class VpcPeeringConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The PrivateConnection resource is used to establish private connectivity
        # between Datastream and a customer's network.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource's name.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The create time of the resource.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The update time of the resource.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. Display name.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Datastream::V1alpha1::PrivateConnection::State]
        #     Output only. The state of the Private Connection.
        # @!attribute [r] error
        #   @return [::Google::Cloud::Datastream::V1alpha1::Error]
        #     Output only. In case of error, the details of the error in a user-friendly format.
        # @!attribute [rw] vpc_peering_config
        #   @return [::Google::Cloud::Datastream::V1alpha1::VpcPeeringConfig]
        #     VPC Peering Config
        class PrivateConnection
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

          # Private Connection state.
          module State
            STATE_UNSPECIFIED = 0

            # The private connection is in creation state - creating resources.
            CREATING = 1

            # The private connection has been created with all of it's resources.
            CREATED = 2

            # The private connection creation has failed.
            FAILED = 3
          end
        end

        # Private Connectivity
        # @!attribute [rw] private_connection_name
        #   @return [::String]
        class PrivateConnectivity
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The Route resource is the child of the PrivateConnection resource.
        # It used to define a route for a PrivateConnection setup.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource's name.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The create time of the resource.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The update time of the resource.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. Display name.
        # @!attribute [rw] destination_address
        #   @return [::String]
        #     Required. Destination address for connection
        # @!attribute [rw] destination_port
        #   @return [::Integer]
        #     Destination port for connection
        class Route
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

        # MySQL SSL configuration information.
        # @!attribute [rw] client_key
        #   @return [::String]
        #     Input only. PEM-encoded private key associated with the Client Certificate.
        #     If this field is used then the 'client_certificate' and the
        #     'ca_certificate' fields are mandatory.
        # @!attribute [r] client_key_set
        #   @return [::Boolean]
        #     Output only. Indicates whether the client_key field is set.
        # @!attribute [rw] client_certificate
        #   @return [::String]
        #     Input only. PEM-encoded certificate that will be used by the replica to
        #     authenticate against the source database server. If this field is used
        #     then the 'client_key' and the 'ca_certificate' fields are mandatory.
        # @!attribute [r] client_certificate_set
        #   @return [::Boolean]
        #     Output only. Indicates whether the client_certificate field is set.
        # @!attribute [rw] ca_certificate
        #   @return [::String]
        #     Input only. PEM-encoded certificate of the CA that signed the source database
        #     server's certificate.
        # @!attribute [r] ca_certificate_set
        #   @return [::Boolean]
        #     Output only. Indicates whether the ca_certificate field is set.
        class MysqlSslConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource's name.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The create time of the resource.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The update time of the resource.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. Display name.
        # @!attribute [rw] oracle_profile
        #   @return [::Google::Cloud::Datastream::V1alpha1::OracleProfile]
        #     Oracle ConnectionProfile configuration.
        # @!attribute [rw] gcs_profile
        #   @return [::Google::Cloud::Datastream::V1alpha1::GcsProfile]
        #     Cloud Storage ConnectionProfile configuration.
        # @!attribute [rw] mysql_profile
        #   @return [::Google::Cloud::Datastream::V1alpha1::MysqlProfile]
        #     MySQL ConnectionProfile configuration.
        # @!attribute [rw] no_connectivity
        #   @return [::Google::Cloud::Datastream::V1alpha1::NoConnectivitySettings]
        #     No connectivity option chosen.
        # @!attribute [rw] static_service_ip_connectivity
        #   @return [::Google::Cloud::Datastream::V1alpha1::StaticServiceIpConnectivity]
        #     Static Service IP connectivity.
        # @!attribute [rw] forward_ssh_connectivity
        #   @return [::Google::Cloud::Datastream::V1alpha1::ForwardSshTunnelConnectivity]
        #     Forward SSH tunnel connectivity.
        # @!attribute [rw] private_connectivity
        #   @return [::Google::Cloud::Datastream::V1alpha1::PrivateConnectivity]
        #     Private connectivity.
        class ConnectionProfile
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

        # Oracle Column.
        # @!attribute [rw] column_name
        #   @return [::String]
        #     Column name.
        # @!attribute [rw] data_type
        #   @return [::String]
        #     The Oracle data type.
        # @!attribute [rw] length
        #   @return [::Integer]
        #     Column length.
        # @!attribute [rw] precision
        #   @return [::Integer]
        #     Column precision.
        # @!attribute [rw] scale
        #   @return [::Integer]
        #     Column scale.
        # @!attribute [rw] encoding
        #   @return [::String]
        #     Column encoding.
        # @!attribute [rw] primary_key
        #   @return [::Boolean]
        #     Whether or not the column represents a primary key.
        # @!attribute [rw] nullable
        #   @return [::Boolean]
        #     Whether or not the column can accept a null value.
        # @!attribute [rw] ordinal_position
        #   @return [::Integer]
        #     The ordinal position of the column in the table.
        class OracleColumn
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Oracle table.
        # @!attribute [rw] table_name
        #   @return [::String]
        #     Table name.
        # @!attribute [rw] oracle_columns
        #   @return [::Array<::Google::Cloud::Datastream::V1alpha1::OracleColumn>]
        #     Oracle columns in the schema.
        #     When unspecified as part of inclue/exclude lists, includes/excludes
        #     everything.
        class OracleTable
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Oracle schema.
        # @!attribute [rw] schema_name
        #   @return [::String]
        #     Schema name.
        # @!attribute [rw] oracle_tables
        #   @return [::Array<::Google::Cloud::Datastream::V1alpha1::OracleTable>]
        #     Tables in the schema.
        class OracleSchema
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Oracle database structure.
        # @!attribute [rw] oracle_schemas
        #   @return [::Array<::Google::Cloud::Datastream::V1alpha1::OracleSchema>]
        #     Oracle schemas/databases in the database server.
        class OracleRdbms
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Oracle data source configuration
        # @!attribute [rw] allowlist
        #   @return [::Google::Cloud::Datastream::V1alpha1::OracleRdbms]
        #     Oracle objects to include in the stream.
        # @!attribute [rw] rejectlist
        #   @return [::Google::Cloud::Datastream::V1alpha1::OracleRdbms]
        #     Oracle objects to exclude from the stream.
        class OracleSourceConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # MySQL Column.
        # @!attribute [rw] column_name
        #   @return [::String]
        #     Column name.
        # @!attribute [rw] data_type
        #   @return [::String]
        #     The MySQL data type. Full data types list can be found here:
        #     https://dev.mysql.com/doc/refman/8.0/en/data-types.html
        # @!attribute [rw] length
        #   @return [::Integer]
        #     Column length.
        # @!attribute [rw] collation
        #   @return [::String]
        #     Column collation.
        # @!attribute [rw] primary_key
        #   @return [::Boolean]
        #     Whether or not the column represents a primary key.
        # @!attribute [rw] nullable
        #   @return [::Boolean]
        #     Whether or not the column can accept a null value.
        # @!attribute [rw] ordinal_position
        #   @return [::Integer]
        #     The ordinal position of the column in the table.
        class MysqlColumn
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # MySQL table.
        # @!attribute [rw] table_name
        #   @return [::String]
        #     Table name.
        # @!attribute [rw] mysql_columns
        #   @return [::Array<::Google::Cloud::Datastream::V1alpha1::MysqlColumn>]
        #     MySQL columns in the database.
        #     When unspecified as part of include/exclude lists, includes/excludes
        #     everything.
        class MysqlTable
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # MySQL database.
        # @!attribute [rw] database_name
        #   @return [::String]
        #     Database name.
        # @!attribute [rw] mysql_tables
        #   @return [::Array<::Google::Cloud::Datastream::V1alpha1::MysqlTable>]
        #     Tables in the database.
        class MysqlDatabase
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # MySQL database structure
        # @!attribute [rw] mysql_databases
        #   @return [::Array<::Google::Cloud::Datastream::V1alpha1::MysqlDatabase>]
        #     Mysql databases on the server
        class MysqlRdbms
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # MySQL source configuration
        # @!attribute [rw] allowlist
        #   @return [::Google::Cloud::Datastream::V1alpha1::MysqlRdbms]
        #     MySQL objects to retrieve from the source.
        # @!attribute [rw] rejectlist
        #   @return [::Google::Cloud::Datastream::V1alpha1::MysqlRdbms]
        #     MySQL objects to exclude from the stream.
        class MysqlSourceConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The configuration of the stream source.
        # @!attribute [rw] source_connection_profile_name
        #   @return [::String]
        #     Required. Source connection profile identifier.
        # @!attribute [rw] oracle_source_config
        #   @return [::Google::Cloud::Datastream::V1alpha1::OracleSourceConfig]
        #     Oracle data source configuration
        # @!attribute [rw] mysql_source_config
        #   @return [::Google::Cloud::Datastream::V1alpha1::MysqlSourceConfig]
        #     MySQL data source configuration
        class SourceConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # AVRO file format configuration.
        class AvroFileFormat
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # JSON file format configuration.
        # @!attribute [rw] schema_file_format
        #   @return [::Google::Cloud::Datastream::V1alpha1::SchemaFileFormat]
        #     The schema file format along JSON data files.
        # @!attribute [rw] compression
        #   @return [::Google::Cloud::Datastream::V1alpha1::JsonFileFormat::JsonCompression]
        #     Compression of the loaded JSON file.
        class JsonFileFormat
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Json file compression.
          module JsonCompression
            # Unspecified json file compression.
            JSON_COMPRESSION_UNSPECIFIED = 0

            # Do not compress JSON file.
            NO_COMPRESSION = 1

            # Gzip compression.
            GZIP = 2
          end
        end

        # Google Cloud Storage destination configuration
        # @!attribute [rw] path
        #   @return [::String]
        #     Path inside the Cloud Storage bucket to write data to.
        # @!attribute [rw] gcs_file_format
        #   @return [::Google::Cloud::Datastream::V1alpha1::GcsFileFormat]
        #     File format that data should be written in.
        #     Deprecated field - use file_format instead.
        # @!attribute [rw] file_rotation_mb
        #   @return [::Integer]
        #     The maximum file size to be saved in the bucket.
        # @!attribute [rw] file_rotation_interval
        #   @return [::Google::Protobuf::Duration]
        #     The maximum duration for which new events are added before a file is
        #     closed and a new file is created.
        # @!attribute [rw] avro_file_format
        #   @return [::Google::Cloud::Datastream::V1alpha1::AvroFileFormat]
        #     AVRO file format configuration.
        # @!attribute [rw] json_file_format
        #   @return [::Google::Cloud::Datastream::V1alpha1::JsonFileFormat]
        #     JSON file format configuration.
        class GcsDestinationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The configuration of the stream destination.
        # @!attribute [rw] destination_connection_profile_name
        #   @return [::String]
        #     Required. Destination connection profile identifier.
        # @!attribute [rw] gcs_destination_config
        #   @return [::Google::Cloud::Datastream::V1alpha1::GcsDestinationConfig]
        class DestinationConfig
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The stream's name.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The creation time of the stream.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last update time of the stream.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. Display name.
        # @!attribute [rw] source_config
        #   @return [::Google::Cloud::Datastream::V1alpha1::SourceConfig]
        #     Required. Source connection profile configuration.
        # @!attribute [rw] destination_config
        #   @return [::Google::Cloud::Datastream::V1alpha1::DestinationConfig]
        #     Required. Destination connection profile configuration.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Datastream::V1alpha1::Stream::State]
        #     The state of the stream.
        # @!attribute [rw] backfill_all
        #   @return [::Google::Cloud::Datastream::V1alpha1::Stream::BackfillAllStrategy]
        #     Automatically backfill objects included in the stream source
        #     configuration. Specific objects can be excluded.
        # @!attribute [rw] backfill_none
        #   @return [::Google::Cloud::Datastream::V1alpha1::Stream::BackfillNoneStrategy]
        #     Do not automatically backfill any objects.
        # @!attribute [r] errors
        #   @return [::Array<::Google::Cloud::Datastream::V1alpha1::Error>]
        #     Output only. Errors on the Stream.
        class Stream
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Backfill strategy to automatically backfill the Stream's objects.
          # Specific objects can be excluded.
          # @!attribute [rw] oracle_excluded_objects
          #   @return [::Google::Cloud::Datastream::V1alpha1::OracleRdbms]
          #     Oracle data source objects to avoid backfilling.
          # @!attribute [rw] mysql_excluded_objects
          #   @return [::Google::Cloud::Datastream::V1alpha1::MysqlRdbms]
          #     MySQL data source objects to avoid backfilling.
          class BackfillAllStrategy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Backfill strategy to disable automatic backfill for the Stream's objects.
          class BackfillNoneStrategy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Stream state.
          module State
            # Unspecified stream state.
            STATE_UNSPECIFIED = 0

            # The stream has been created.
            CREATED = 1

            # The stream is running.
            RUNNING = 2

            # The stream is paused.
            PAUSED = 3

            # The stream is in maintenance mode.
            #
            # Updates are rejected on the resource in this state.
            MAINTENANCE = 4

            # The stream is experiencing an error that is preventing data from being
            # streamed.
            FAILED = 5

            # The stream has experienced a terminal failure.
            FAILED_PERMANENTLY = 6

            # The stream is starting, but not yet running.
            STARTING = 7

            # The Stream is no longer reading new events, but still writing events in
            # the buffer.
            DRAINING = 8
          end
        end

        # Represent a user-facing Error.
        # @!attribute [rw] reason
        #   @return [::String]
        #     A title that explains the reason for the error.
        # @!attribute [rw] error_uuid
        #   @return [::String]
        #     A unique identifier for this specific error,
        #     allowing it to be traced throughout the system in logs and API responses.
        # @!attribute [rw] message
        #   @return [::String]
        #     A message containing more information about the error that occurred.
        # @!attribute [rw] error_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the error occurred.
        # @!attribute [rw] details
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Additional information about the error.
        class Error
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class DetailsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Contains the current validation results.
        # @!attribute [rw] validations
        #   @return [::Array<::Google::Cloud::Datastream::V1alpha1::Validation>]
        #     A list of validations (includes both executed as well as not executed
        #     validations).
        class ValidationResult
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] description
        #   @return [::String]
        #     A short description of the validation.
        # @!attribute [rw] status
        #   @return [::Google::Cloud::Datastream::V1alpha1::Validation::Status]
        #     Validation execution status.
        # @!attribute [rw] message
        #   @return [::Array<::Google::Cloud::Datastream::V1alpha1::ValidationMessage>]
        #     Messages reflecting the validation results.
        # @!attribute [rw] code
        #   @return [::String]
        #     A custom code identifying this validation.
        class Validation
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Validation execution status.
          module Status
            # Unspecified status.
            STATUS_UNSPECIFIED = 0

            # Validation did not execute.
            NOT_EXECUTED = 1

            # Validation failed.
            FAILED = 2

            # Validation passed.
            PASSED = 3
          end
        end

        # Represent user-facing validation result message.
        # @!attribute [rw] message
        #   @return [::String]
        #     The result of the validation.
        # @!attribute [rw] level
        #   @return [::Google::Cloud::Datastream::V1alpha1::ValidationMessage::Level]
        #     Message severity level (warning or error).
        # @!attribute [rw] metadata
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Additional metadata related to the result.
        # @!attribute [rw] code
        #   @return [::String]
        #     A custom code identifying this specific message.
        class ValidationMessage
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class MetadataEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Validation message level.
          module Level
            # Unspecified level.
            LEVEL_UNSPECIFIED = 0

            # Potentially cause issues with the Stream.
            WARNING = 1

            # Definitely cause issues with the Stream.
            ERROR = 2
          end
        end

        # File format in Cloud Storage.
        module GcsFileFormat
          # Unspecified Cloud Storage file format.
          GCS_FILE_FORMAT_UNSPECIFIED = 0

          # Avro file format
          AVRO = 1
        end

        # Schema file format.
        module SchemaFileFormat
          # Unspecified schema file format.
          SCHEMA_FILE_FORMAT_UNSPECIFIED = 0

          # Do not attach schema file.
          NO_SCHEMA_FILE = 1

          # Avro schema format.
          AVRO_SCHEMA_FILE = 2
        end
      end
    end
  end
end