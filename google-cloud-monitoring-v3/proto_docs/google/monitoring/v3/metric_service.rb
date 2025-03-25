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
    module Monitoring
      module V3
        # The `ListMonitoredResourceDescriptors` request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The
        #     [project](https://cloud.google.com/monitoring/api/v3#project_name) on which
        #     to execute the request. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]
        # @!attribute [rw] filter
        #   @return [::String]
        #     An optional [filter](https://cloud.google.com/monitoring/api/v3/filters)
        #     describing the descriptors to be returned.  The filter can reference the
        #     descriptor's type and labels. For example, the following filter returns
        #     only Google Compute Engine descriptors that have an `id` label:
        #
        #         resource.type = starts_with("gce_") AND resource.label:id
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     A positive number that is the maximum number of results to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     If this field is not empty then it must contain the `nextPageToken` value
        #     returned by a previous call to this method.  Using this field causes the
        #     method to return additional results from the previous method call.
        class ListMonitoredResourceDescriptorsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `ListMonitoredResourceDescriptors` response.
        # @!attribute [rw] resource_descriptors
        #   @return [::Array<::Google::Api::MonitoredResourceDescriptor>]
        #     The monitored resource descriptors that are available to this project
        #     and that match `filter`, if present.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If there are more results than have been returned, then this field is set
        #     to a non-empty value.  To see the additional results,
        #     use that value as `page_token` in the next call to this method.
        class ListMonitoredResourceDescriptorsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `GetMonitoredResourceDescriptor` request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The monitored resource descriptor to get.  The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]/monitoredResourceDescriptors/[RESOURCE_TYPE]
        #
        #     The `[RESOURCE_TYPE]` is a predefined type, such as
        #     `cloudsql_database`.
        class GetMonitoredResourceDescriptorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `ListMetricDescriptors` request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The
        #     [project](https://cloud.google.com/monitoring/api/v3#project_name) on which
        #     to execute the request. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. If this field is empty, all custom and
        #     system-defined metric descriptors are returned.
        #     Otherwise, the [filter](https://cloud.google.com/monitoring/api/v3/filters)
        #     specifies which metric descriptors are to be
        #     returned. For example, the following filter matches all
        #     [custom metrics](https://cloud.google.com/monitoring/custom-metrics):
        #
        #         metric.type = starts_with("custom.googleapis.com/")
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. A positive number that is the maximum number of results to
        #     return. The default and maximum value is 10,000. If a page_size <= 0 or >
        #     10,000 is submitted, will instead return a maximum of 10,000 results.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. If this field is not empty then it must contain the
        #     `nextPageToken` value returned by a previous call to this method.  Using
        #     this field causes the method to return additional results from the previous
        #     method call.
        # @!attribute [rw] active_only
        #   @return [::Boolean]
        #     Optional. If true, only metrics and monitored resource types that have
        #     recent data (within roughly 25 hours) will be included in the response.
        #      - If a metric descriptor enumerates monitored resource types, only the
        #        monitored resource types for which the metric type has recent data will
        #        be included in the returned metric descriptor, and if none of them have
        #        recent data, the metric descriptor will not be returned.
        #      - If a metric descriptor does not enumerate the compatible monitored
        #        resource types, it will be returned only if the metric type has recent
        #        data for some monitored resource type. The returned descriptor will not
        #        enumerate any monitored resource types.
        class ListMetricDescriptorsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `ListMetricDescriptors` response.
        # @!attribute [rw] metric_descriptors
        #   @return [::Array<::Google::Api::MetricDescriptor>]
        #     The metric descriptors that are available to the project
        #     and that match the value of `filter`, if present.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If there are more results than have been returned, then this field is set
        #     to a non-empty value.  To see the additional results,
        #     use that value as `page_token` in the next call to this method.
        class ListMetricDescriptorsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `GetMetricDescriptor` request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The metric descriptor on which to execute the request. The format
        #     is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]/metricDescriptors/[METRIC_ID]
        #
        #     An example value of `[METRIC_ID]` is
        #     `"compute.googleapis.com/instance/disk/read_bytes_count"`.
        class GetMetricDescriptorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `CreateMetricDescriptor` request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The
        #     [project](https://cloud.google.com/monitoring/api/v3#project_name) on which
        #     to execute the request. The format is:
        #     4
        #         projects/[PROJECT_ID_OR_NUMBER]
        # @!attribute [rw] metric_descriptor
        #   @return [::Google::Api::MetricDescriptor]
        #     Required. The new [custom
        #     metric](https://cloud.google.com/monitoring/custom-metrics) descriptor.
        class CreateMetricDescriptorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `DeleteMetricDescriptor` request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The metric descriptor on which to execute the request. The format
        #     is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]/metricDescriptors/[METRIC_ID]
        #
        #     An example of `[METRIC_ID]` is:
        #     `"custom.googleapis.com/my_test_metric"`.
        class DeleteMetricDescriptorRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `ListTimeSeries` request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The
        #     [project](https://cloud.google.com/monitoring/api/v3#project_name),
        #     organization or folder on which to execute the request. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]
        #         organizations/[ORGANIZATION_ID]
        #         folders/[FOLDER_ID]
        # @!attribute [rw] filter
        #   @return [::String]
        #     Required. A [monitoring
        #     filter](https://cloud.google.com/monitoring/api/v3/filters) that specifies
        #     which time series should be returned.  The filter must specify a single
        #     metric type, and can additionally specify metric labels and other
        #     information. For example:
        #
        #         metric.type = "compute.googleapis.com/instance/cpu/usage_time" AND
        #             metric.labels.instance_name = "my-instance-name"
        # @!attribute [rw] interval
        #   @return [::Google::Cloud::Monitoring::V3::TimeInterval]
        #     Required. The time interval for which results should be returned. Only time
        #     series that contain data points in the specified interval are included in
        #     the response.
        # @!attribute [rw] aggregation
        #   @return [::Google::Cloud::Monitoring::V3::Aggregation]
        #     Specifies the alignment of data points in individual time series as
        #     well as how to combine the retrieved time series across specified labels.
        #
        #     By default (if no `aggregation` is explicitly specified), the raw time
        #     series data is returned.
        # @!attribute [rw] secondary_aggregation
        #   @return [::Google::Cloud::Monitoring::V3::Aggregation]
        #     Apply a second aggregation after `aggregation` is applied. May only be
        #     specified if `aggregation` is specified.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Unsupported: must be left blank. The points in each time series are
        #     currently returned in reverse time order (most recent to oldest).
        # @!attribute [rw] view
        #   @return [::Google::Cloud::Monitoring::V3::ListTimeSeriesRequest::TimeSeriesView]
        #     Required. Specifies which information is returned about the time series.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     A positive number that is the maximum number of results to return. If
        #     `page_size` is empty or more than 100,000 results, the effective
        #     `page_size` is 100,000 results. If `view` is set to `FULL`, this is the
        #     maximum number of `Points` returned. If `view` is set to `HEADERS`, this is
        #     the maximum number of `TimeSeries` returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     If this field is not empty then it must contain the `nextPageToken` value
        #     returned by a previous call to this method.  Using this field causes the
        #     method to return additional results from the previous method call.
        class ListTimeSeriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Controls which fields are returned by `ListTimeSeries*`.
          module TimeSeriesView
            # Returns the identity of the metric(s), the time series,
            # and the time series data.
            FULL = 0

            # Returns the identity of the metric and the time series resource,
            # but not the time series data.
            HEADERS = 1
          end
        end

        # The `ListTimeSeries` response.
        # @!attribute [rw] time_series
        #   @return [::Array<::Google::Cloud::Monitoring::V3::TimeSeries>]
        #     One or more time series that match the filter included in the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If there are more results than have been returned, then this field is set
        #     to a non-empty value.  To see the additional results,
        #     use that value as `page_token` in the next call to this method.
        # @!attribute [rw] execution_errors
        #   @return [::Array<::Google::Rpc::Status>]
        #     Query execution errors that may have caused the time series data returned
        #     to be incomplete.
        # @!attribute [rw] unit
        #   @return [::String]
        #     The unit in which all `time_series` point values are reported. `unit`
        #     follows the UCUM format for units as seen in
        #     https://unitsofmeasure.org/ucum.html.
        #     If different `time_series` have different units (for example, because they
        #     come from different metric types, or a unit is absent), then `unit` will be
        #     "\\{not_a_unit}".
        class ListTimeSeriesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `CreateTimeSeries` request.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The
        #     [project](https://cloud.google.com/monitoring/api/v3#project_name) on which
        #     to execute the request. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]
        # @!attribute [rw] time_series
        #   @return [::Array<::Google::Cloud::Monitoring::V3::TimeSeries>]
        #     Required. The new data to be added to a list of time series.
        #     Adds at most one data point to each of several time series.  The new data
        #     point must be more recent than any other point in its time series.  Each
        #     `TimeSeries` value must fully specify a unique time series by supplying
        #     all label values for the metric and the monitored resource.
        #
        #     The maximum number of `TimeSeries` objects per `Create` request is 200.
        class CreateTimeSeriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # DEPRECATED. Used to hold per-time-series error status.
        # @!attribute [rw] time_series
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Google::Cloud::Monitoring::V3::TimeSeries]
        #     DEPRECATED. Time series ID that resulted in the `status` error.
        # @!attribute [rw] status
        #   @deprecated This field is deprecated and may be removed in the next major version update.
        #   @return [::Google::Rpc::Status]
        #     DEPRECATED. The status of the requested write operation for `time_series`.
        class CreateTimeSeriesError
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Summary of the result of a failed request to write data to a time series.
        # @!attribute [rw] total_point_count
        #   @return [::Integer]
        #     The number of points in the request.
        # @!attribute [rw] success_point_count
        #   @return [::Integer]
        #     The number of points that were successfully written.
        # @!attribute [rw] errors
        #   @return [::Array<::Google::Cloud::Monitoring::V3::CreateTimeSeriesSummary::Error>]
        #     The number of points that failed to be written. Order is not guaranteed.
        class CreateTimeSeriesSummary
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Detailed information about an error category.
          # @!attribute [rw] status
          #   @return [::Google::Rpc::Status]
          #     The status of the requested write operation.
          # @!attribute [rw] point_count
          #   @return [::Integer]
          #     The number of points that couldn't be written because of `status`.
          class Error
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The `QueryTimeSeries` request. For information about the status of
        # Monitoring Query Language (MQL), see the [MQL deprecation
        # notice](https://cloud.google.com/stackdriver/docs/deprecations/mql).
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The
        #     [project](https://cloud.google.com/monitoring/api/v3#project_name) on which
        #     to execute the request. The format is:
        #
        #         projects/[PROJECT_ID_OR_NUMBER]
        # @!attribute [rw] query
        #   @return [::String]
        #     Required. The query in the [Monitoring Query
        #     Language](https://cloud.google.com/monitoring/mql/reference) format.
        #     The default time zone is in UTC.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     A positive number that is the maximum number of time_series_data to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     If this field is not empty then it must contain the `nextPageToken` value
        #     returned by a previous call to this method.  Using this field causes the
        #     method to return additional results from the previous method call.
        class QueryTimeSeriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The `QueryTimeSeries` response. For information about the status of
        # Monitoring Query Language (MQL), see the [MQL deprecation
        # notice](https://cloud.google.com/stackdriver/docs/deprecations/mql).
        # @deprecated This message is deprecated and may be removed in the next major version update.
        # @!attribute [rw] time_series_descriptor
        #   @return [::Google::Cloud::Monitoring::V3::TimeSeriesDescriptor]
        #     The descriptor for the time series data.
        # @!attribute [rw] time_series_data
        #   @return [::Array<::Google::Cloud::Monitoring::V3::TimeSeriesData>]
        #     The time series data.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If there are more results than have been returned, then this field is set
        #     to a non-empty value.  To see the additional results, use that value as
        #     `page_token` in the next call to this method.
        # @!attribute [rw] partial_errors
        #   @return [::Array<::Google::Rpc::Status>]
        #     Query execution errors that may have caused the time series data returned
        #     to be incomplete. The available data will be available in the
        #     response.
        class QueryTimeSeriesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # This is an error detail intended to be used with INVALID_ARGUMENT errors.
        # @!attribute [rw] errors
        #   @return [::Array<::Google::Cloud::Monitoring::V3::QueryError>]
        #     Errors in parsing the time series query language text. The number of errors
        #     in the response may be limited.
        # @!attribute [rw] error_summary
        #   @return [::String]
        #     A summary of all the errors.
        class QueryErrorList
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
