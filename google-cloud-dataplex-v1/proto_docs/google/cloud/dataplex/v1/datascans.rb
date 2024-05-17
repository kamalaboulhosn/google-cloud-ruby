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
    module Dataplex
      module V1
        # Create dataScan request.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the parent location:
        #     `projects/{project}/locations/{location_id}`
        #     where `project` refers to a *project_id* or *project_number* and
        #     `location_id` refers to a GCP region.
        # @!attribute [rw] data_scan
        #   @return [::Google::Cloud::Dataplex::V1::DataScan]
        #     Required. DataScan resource.
        # @!attribute [rw] data_scan_id
        #   @return [::String]
        #     Required. DataScan identifier.
        #
        #     * Must contain only lowercase letters, numbers and hyphens.
        #     * Must start with a letter.
        #     * Must end with a number or a letter.
        #     * Must be between 1-63 characters.
        #     * Must be unique within the customer project / location.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. Only validate the request, but do not perform mutations.
        #     The default is `false`.
        class CreateDataScanRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Update dataScan request.
        # @!attribute [rw] data_scan
        #   @return [::Google::Cloud::Dataplex::V1::DataScan]
        #     Required. DataScan resource to be updated.
        #
        #     Only fields specified in `update_mask` are updated.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. Mask of fields to update.
        # @!attribute [rw] validate_only
        #   @return [::Boolean]
        #     Optional. Only validate the request, but do not perform mutations.
        #     The default is `false`.
        class UpdateDataScanRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Delete dataScan request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the dataScan:
        #     `projects/{project}/locations/{location_id}/dataScans/{data_scan_id}`
        #     where `project` refers to a *project_id* or *project_number* and
        #     `location_id` refers to a GCP region.
        class DeleteDataScanRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Get dataScan request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the dataScan:
        #     `projects/{project}/locations/{location_id}/dataScans/{data_scan_id}`
        #     where `project` refers to a *project_id* or *project_number* and
        #     `location_id` refers to a GCP region.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::Dataplex::V1::GetDataScanRequest::DataScanView]
        #     Optional. Select the DataScan view to return. Defaults to `BASIC`.
        class GetDataScanRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # DataScan view options.
          module DataScanView
            # The API will default to the `BASIC` view.
            DATA_SCAN_VIEW_UNSPECIFIED = 0

            # Basic view that does not include *spec* and *result*.
            BASIC = 1

            # Include everything.
            FULL = 10
          end
        end

        # List dataScans request.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the parent location:
        #     `projects/{project}/locations/{location_id}`
        #     where `project` refers to a *project_id* or *project_number* and
        #     `location_id` refers to a GCP region.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of dataScans to return. The service may return
        #     fewer than this value. If unspecified, at most 500 scans will be returned.
        #     The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. Page token received from a previous `ListDataScans` call. Provide
        #     this to retrieve the subsequent page. When paginating, all other parameters
        #     provided to `ListDataScans` must match the call that provided the
        #     page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filter request.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Order by fields (`name` or `create_time`) for the result.
        #     If not specified, the ordering is undefined.
        class ListDataScansRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # List dataScans response.
        # @!attribute [rw] data_scans
        #   @return [::Array<::Google::Cloud::Dataplex::V1::DataScan>]
        #     DataScans (`BASIC` view only) under the given parent location.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListDataScansResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Run DataScan Request
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the DataScan:
        #     `projects/{project}/locations/{location_id}/dataScans/{data_scan_id}`.
        #     where `project` refers to a *project_id* or *project_number* and
        #     `location_id` refers to a GCP region.
        #
        #     Only **OnDemand** data scans are allowed.
        class RunDataScanRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Run DataScan Response.
        # @!attribute [rw] job
        #   @return [::Google::Cloud::Dataplex::V1::DataScanJob]
        #     DataScanJob created by RunDataScan request.
        class RunDataScanResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Get DataScanJob request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the DataScanJob:
        #     `projects/{project}/locations/{location_id}/dataScans/{data_scan_id}/jobs/{data_scan_job_id}`
        #     where `project` refers to a *project_id* or *project_number* and
        #     `location_id` refers to a GCP region.
        # @!attribute [rw] view
        #   @return [::Google::Cloud::Dataplex::V1::GetDataScanJobRequest::DataScanJobView]
        #     Optional. Select the DataScanJob view to return. Defaults to `BASIC`.
        class GetDataScanJobRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # DataScanJob view options.
          module DataScanJobView
            # The API will default to the `BASIC` view.
            DATA_SCAN_JOB_VIEW_UNSPECIFIED = 0

            # Basic view that does not include *spec* and *result*.
            BASIC = 1

            # Include everything.
            FULL = 10
          end
        end

        # List DataScanJobs request.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the parent environment:
        #     `projects/{project}/locations/{location_id}/dataScans/{data_scan_id}`
        #     where `project` refers to a *project_id* or *project_number* and
        #     `location_id` refers to a GCP region.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. Maximum number of DataScanJobs to return. The service may return
        #     fewer than this value. If unspecified, at most 10 DataScanJobs will be
        #     returned. The maximum value is 1000; values above 1000 will be coerced to
        #     1000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. Page token received from a previous `ListDataScanJobs` call.
        #     Provide this to retrieve the subsequent page. When paginating, all other
        #     parameters provided to `ListDataScanJobs` must match the call that provided
        #     the page token.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. An expression for filtering the results of the ListDataScanJobs
        #     request.
        #
        #     If unspecified, all datascan jobs will be returned. Multiple filters can be
        #     applied (with `AND`, `OR` logical operators). Filters are case-sensitive.
        #
        #     Allowed fields are:
        #
        #     - `start_time`
        #     - `end_time`
        #
        #     `start_time` and `end_time` expect RFC-3339 formatted strings (e.g.
        #     2018-10-08T18:30:00-07:00).
        #
        #     For instance, 'start_time > 2018-10-08T00:00:00.123456789Z AND end_time <
        #     2018-10-09T00:00:00.123456789Z' limits results to DataScanJobs between
        #     specified start and end times.
        class ListDataScanJobsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # List DataScanJobs response.
        # @!attribute [rw] data_scan_jobs
        #   @return [::Array<::Google::Cloud::Dataplex::V1::DataScanJob>]
        #     DataScanJobs (`BASIC` view only) under a given dataScan.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no more
        #     results in the list.
        class ListDataScanJobsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Generate recommended DataQualityRules request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name should be either
        #     * the name of a datascan with at least one successful completed data
        #     profiling job, or
        #     * the name of a successful completed data profiling datascan job.
        class GenerateDataQualityRulesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Generate recommended DataQualityRules response.
        # @!attribute [rw] rule
        #   @return [::Array<::Google::Cloud::Dataplex::V1::DataQualityRule>]
        #     Generated recommended \\{@link DataQualityRule}s.
        class GenerateDataQualityRulesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a user-visible job which provides the insights for the related
        # data source.
        #
        # For example:
        #
        # * Data Quality: generates queries based on the rules and runs against the
        #   data to get data quality check results.
        # * Data Profile: analyzes the data in table(s) and generates insights about
        #   the structure, content and relationships (such as null percent,
        #   cardinality, min/max/mean, etc).
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The relative resource name of the scan, of the form:
        #     `projects/{project}/locations/{location_id}/dataScans/{datascan_id}`,
        #     where `project` refers to a *project_id* or *project_number* and
        #     `location_id` refers to a GCP region.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. System generated globally unique ID for the scan. This ID will
        #     be different if the scan is deleted and re-created with the same name.
        # @!attribute [rw] description
        #   @return [::String]
        #     Optional. Description of the scan.
        #
        #     * Must be between 1-1024 characters.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Optional. User friendly display name.
        #
        #     * Must be between 1-256 characters.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Optional. User-defined labels for the scan.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Dataplex::V1::State]
        #     Output only. Current state of the DataScan.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the scan was created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the scan was last updated.
        # @!attribute [rw] data
        #   @return [::Google::Cloud::Dataplex::V1::DataSource]
        #     Required. The data source for DataScan.
        # @!attribute [rw] execution_spec
        #   @return [::Google::Cloud::Dataplex::V1::DataScan::ExecutionSpec]
        #     Optional. DataScan execution settings.
        #
        #     If not specified, the fields in it will use their default values.
        # @!attribute [r] execution_status
        #   @return [::Google::Cloud::Dataplex::V1::DataScan::ExecutionStatus]
        #     Output only. Status of the data scan execution.
        # @!attribute [r] type
        #   @return [::Google::Cloud::Dataplex::V1::DataScanType]
        #     Output only. The type of DataScan.
        # @!attribute [rw] data_quality_spec
        #   @return [::Google::Cloud::Dataplex::V1::DataQualitySpec]
        #     DataQualityScan related setting.
        # @!attribute [rw] data_profile_spec
        #   @return [::Google::Cloud::Dataplex::V1::DataProfileSpec]
        #     DataProfileScan related setting.
        # @!attribute [r] data_quality_result
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityResult]
        #     Output only. The result of the data quality scan.
        # @!attribute [r] data_profile_result
        #   @return [::Google::Cloud::Dataplex::V1::DataProfileResult]
        #     Output only. The result of the data profile scan.
        class DataScan
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # DataScan execution settings.
          # @!attribute [rw] trigger
          #   @return [::Google::Cloud::Dataplex::V1::Trigger]
          #     Optional. Spec related to how often and when a scan should be triggered.
          #
          #     If not specified, the default is `OnDemand`, which means the scan will
          #     not run until the user calls `RunDataScan` API.
          # @!attribute [rw] field
          #   @return [::String]
          #     Immutable. The unnested field (of type *Date* or *Timestamp*) that
          #     contains values which monotonically increase over time.
          #
          #     If not specified, a data scan will run for all data in the table.
          class ExecutionSpec
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Status of the data scan execution.
          # @!attribute [rw] latest_job_start_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time when the latest DataScanJob started.
          # @!attribute [rw] latest_job_end_time
          #   @return [::Google::Protobuf::Timestamp]
          #     The time when the latest DataScanJob ended.
          class ExecutionStatus
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
        end

        # A DataScanJob represents an instance of DataScan execution.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The relative resource name of the DataScanJob, of the form:
        #     `projects/{project}/locations/{location_id}/dataScans/{datascan_id}/jobs/{job_id}`,
        #     where `project` refers to a *project_id* or *project_number* and
        #     `location_id` refers to a GCP region.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. System generated globally unique ID for the DataScanJob.
        # @!attribute [r] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the DataScanJob was started.
        # @!attribute [r] end_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The time when the DataScanJob ended.
        # @!attribute [r] state
        #   @return [::Google::Cloud::Dataplex::V1::DataScanJob::State]
        #     Output only. Execution state for the DataScanJob.
        # @!attribute [r] message
        #   @return [::String]
        #     Output only. Additional information about the current state.
        # @!attribute [r] type
        #   @return [::Google::Cloud::Dataplex::V1::DataScanType]
        #     Output only. The type of the parent DataScan.
        # @!attribute [r] data_quality_spec
        #   @return [::Google::Cloud::Dataplex::V1::DataQualitySpec]
        #     Output only. DataQualityScan related setting.
        # @!attribute [r] data_profile_spec
        #   @return [::Google::Cloud::Dataplex::V1::DataProfileSpec]
        #     Output only. DataProfileScan related setting.
        # @!attribute [r] data_quality_result
        #   @return [::Google::Cloud::Dataplex::V1::DataQualityResult]
        #     Output only. The result of the data quality scan.
        # @!attribute [r] data_profile_result
        #   @return [::Google::Cloud::Dataplex::V1::DataProfileResult]
        #     Output only. The result of the data profile scan.
        class DataScanJob
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Execution state for the DataScanJob.
          module State
            # The DataScanJob state is unspecified.
            STATE_UNSPECIFIED = 0

            # The DataScanJob is running.
            RUNNING = 1

            # The DataScanJob is canceling.
            CANCELING = 2

            # The DataScanJob cancellation was successful.
            CANCELLED = 3

            # The DataScanJob completed successfully.
            SUCCEEDED = 4

            # The DataScanJob is no longer running due to an error.
            FAILED = 5

            # The DataScanJob has been created but not started to run yet.
            PENDING = 7
          end
        end

        # The type of DataScan.
        module DataScanType
          # The DataScan type is unspecified.
          DATA_SCAN_TYPE_UNSPECIFIED = 0

          # Data Quality scan.
          DATA_QUALITY = 1

          # Data Profile scan.
          DATA_PROFILE = 2
        end
      end
    end
  end
end
