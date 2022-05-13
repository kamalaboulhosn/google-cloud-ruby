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
    module Dataproc
      module V1
        # A request to create a batch workload.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource where this batch will be created.
        # @!attribute [rw] batch
        #   @return [::Google::Cloud::Dataproc::V1::Batch]
        #     Required. The batch to create.
        # @!attribute [rw] batch_id
        #   @return [::String]
        #     Optional. The ID to use for the batch, which will become the final component of
        #     the batch's resource name.
        #
        #     This value must be 4-63 characters. Valid characters are `/[a-z][0-9]-/`.
        # @!attribute [rw] request_id
        #   @return [::String]
        #     Optional. A unique ID used to identify the request. If the service
        #     receives two
        #     [CreateBatchRequest](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateBatchRequest)s
        #     with the same request_id, the second request is ignored and the
        #     Operation that corresponds to the first Batch created and stored
        #     in the backend is returned.
        #
        #     Recommendation: Set this value to a
        #     [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier).
        #
        #     The value must contain only letters (a-z, A-Z), numbers (0-9),
        #     underscores (_), and hyphens (-). The maximum length is 40 characters.
        class CreateBatchRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to get the resource representation for a batch workload.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the batch to retrieve.
        class GetBatchRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to list batch workloads in a project.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent, which owns this collection of batches.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of batches to return in each response.
        #     The service may return fewer than this value.
        #     The default page size is 20; the maximum page size is 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. A page token received from a previous `ListBatches` call.
        #     Provide this token to retrieve the subsequent page.
        class ListBatchesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A list of batch workloads.
        # @!attribute [rw] batches
        #   @return [::Array<::Google::Cloud::Dataproc::V1::Batch>]
        #     The batches from the specified collection.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token, which can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        class ListBatchesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A request to delete a batch workload.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the batch resource to delete.
        class DeleteBatchRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A representation of a batch workload in the service.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the batch.
        # @!attribute [r] uuid
        #   @return [::String]
        #     Output only. A batch UUID (Unique Universal Identifier). The service
        #     generates this value when it creates the batch.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the batch was created.
        # @!attribute [rw] pyspark_batch
        #   @return [::Google::Cloud::Dataproc::V1::PySparkBatch]
        #     Optional. PySpark batch config.
        # @!attribute [rw] spark_batch
        #   @return [::Google::Cloud::Dataproc::V1::SparkBatch]
        #     Optional. Spark batch config.
        # @!attribute [rw] spark_r_batch
        #   @return [::Google::Cloud::Dataproc::V1::SparkRBatch]
        #     Optional. SparkR batch config.
        # @!attribute [rw] spark_sql_batch
        #   @return [::Google::Cloud::Dataproc::V1::SparkSqlBatch]
        #     Optional. SparkSql batch config.
        # @!attribute [r] runtime_info
        #   @return [::Google::Cloud::Dataproc::V1::RuntimeInfo]
        #     Output only. Runtime information about batch execution.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Dataproc::V1::Batch::State]
        #     Output only. The state of the batch.
        # @!attribute [r] state_message
        #   @return [::String]
        #     Output only. Batch state details, such as a failure
        #     description if the state is `FAILED`.
        # @!attribute [r] state_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the batch entered a current state.
        # @!attribute [r] creator
        #   @return [::String]
        #     Output only. The email address of the user who created the batch.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. The labels to associate with this batch.
        #     Label **keys** must contain 1 to 63 characters, and must conform to
        #     [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
        #     Label **values** may be empty, but, if present, must contain 1 to 63
        #     characters, and must conform to [RFC
        #     1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be
        #     associated with a batch.
        # @!attribute [rw] runtime_config
        #   @return [::Google::Cloud::Dataproc::V1::RuntimeConfig]
        #     Optional. Runtime configuration for the batch execution.
        # @!attribute [rw] environment_config
        #   @return [::Google::Cloud::Dataproc::V1::EnvironmentConfig]
        #     Optional. Environment configuration for the batch execution.
        # @!attribute [r] operation
        #   @return [::String]
        #     Output only. The resource name of the operation associated with this batch.
        # @!attribute [r] state_history
        #   @return [::Array<::Google::Cloud::Dataproc::V1::Batch::StateHistory>]
        #     Output only. Historical state information for the batch.
        class Batch
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Historical state information.
          # @!attribute [r] state
          #   @return [::Google::Cloud::Dataproc::V1::Batch::State]
          #     Output only. The state of the batch at this point in history.
          # @!attribute [r] state_message
          #   @return [::String]
          #     Output only. Details about the state at this point in history.
          # @!attribute [r] state_start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     Output only. The time when the batch entered the historical state.
          class StateHistory
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

          # The batch state.
          module State
            # The batch state is unknown.
            STATE_UNSPECIFIED = 0

            # The batch is created before running.
            PENDING = 1

            # The batch is running.
            RUNNING = 2

            # The batch is cancelling.
            CANCELLING = 3

            # The batch cancellation was successful.
            CANCELLED = 4

            # The batch completed successfully.
            SUCCEEDED = 5

            # The batch is no longer running due to an error.
            FAILED = 6
          end
        end

        # A configuration for running an
        # [Apache
        # PySpark](https://spark.apache.org/docs/latest/api/python/getting_started/quickstart.html)
        # batch workload.
        # @!attribute [rw] main_python_file_uri
        #   @return [::String]
        #     Required. The HCFS URI of the main Python file to use as the Spark driver. Must
        #     be a .py file.
        # @!attribute [rw] args
        #   @return [::Array<::String>]
        #     Optional. The arguments to pass to the driver. Do not include arguments
        #     that can be set as batch properties, such as `--conf`, since a collision
        #     can occur that causes an incorrect batch submission.
        # @!attribute [rw] python_file_uris
        #   @return [::Array<::String>]
        #     Optional. HCFS file URIs of Python files to pass to the PySpark
        #     framework. Supported file types: `.py`, `.egg`, and `.zip`.
        # @!attribute [rw] jar_file_uris
        #   @return [::Array<::String>]
        #     Optional. HCFS URIs of jar files to add to the classpath of the
        #     Spark driver and tasks.
        # @!attribute [rw] file_uris
        #   @return [::Array<::String>]
        #     Optional. HCFS URIs of files to be placed in the working directory of
        #     each executor.
        # @!attribute [rw] archive_uris
        #   @return [::Array<::String>]
        #     Optional. HCFS URIs of archives to be extracted into the working directory
        #     of each executor. Supported file types:
        #     `.jar`, `.tar`, `.tar.gz`, `.tgz`, and `.zip`.
        class PySparkBatch
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A configuration for running an [Apache Spark](http://spark.apache.org/)
        # batch workload.
        # @!attribute [rw] main_jar_file_uri
        #   @return [::String]
        #     Optional. The HCFS URI of the jar file that contains the main class.
        # @!attribute [rw] main_class
        #   @return [::String]
        #     Optional. The name of the driver main class. The jar file that contains the class
        #     must be in the classpath or specified in `jar_file_uris`.
        # @!attribute [rw] args
        #   @return [::Array<::String>]
        #     Optional. The arguments to pass to the driver. Do not include arguments
        #     that can be set as batch properties, such as `--conf`, since a collision
        #     can occur that causes an incorrect batch submission.
        # @!attribute [rw] jar_file_uris
        #   @return [::Array<::String>]
        #     Optional. HCFS URIs of jar files to add to the classpath of the
        #     Spark driver and tasks.
        # @!attribute [rw] file_uris
        #   @return [::Array<::String>]
        #     Optional. HCFS URIs of files to be placed in the working directory of
        #     each executor.
        # @!attribute [rw] archive_uris
        #   @return [::Array<::String>]
        #     Optional. HCFS URIs of archives to be extracted into the working directory
        #     of each executor. Supported file types:
        #     `.jar`, `.tar`, `.tar.gz`, `.tgz`, and `.zip`.
        class SparkBatch
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A configuration for running an
        # [Apache SparkR](https://spark.apache.org/docs/latest/sparkr.html)
        # batch workload.
        # @!attribute [rw] main_r_file_uri
        #   @return [::String]
        #     Required. The HCFS URI of the main R file to use as the driver.
        #     Must be a `.R` or `.r` file.
        # @!attribute [rw] args
        #   @return [::Array<::String>]
        #     Optional. The arguments to pass to the Spark driver. Do not include arguments
        #     that can be set as batch properties, such as `--conf`, since a collision
        #     can occur that causes an incorrect batch submission.
        # @!attribute [rw] file_uris
        #   @return [::Array<::String>]
        #     Optional. HCFS URIs of files to be placed in the working directory of
        #     each executor.
        # @!attribute [rw] archive_uris
        #   @return [::Array<::String>]
        #     Optional. HCFS URIs of archives to be extracted into the working directory
        #     of each executor. Supported file types:
        #     `.jar`, `.tar`, `.tar.gz`, `.tgz`, and `.zip`.
        class SparkRBatch
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A configuration for running
        # [Apache Spark SQL](http://spark.apache.org/sql/) queries as a batch workload.
        # @!attribute [rw] query_file_uri
        #   @return [::String]
        #     Required. The HCFS URI of the script that contains Spark SQL queries to execute.
        # @!attribute [rw] query_variables
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. Mapping of query variable names to values (equivalent to the
        #     Spark SQL command: `SET name="value";`).
        # @!attribute [rw] jar_file_uris
        #   @return [::Array<::String>]
        #     Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
        class SparkSqlBatch
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class QueryVariablesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end