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
    module Monitoring
      module Dashboard
        module V1
          # A widget that displays timeseries data as a pie or a donut.
          # @!attribute [rw] data_sets
          #   @return [::Array<::Google::Cloud::Monitoring::Dashboard::V1::PieChart::PieChartDataSet>]
          #     Required. The queries for the chart's data.
          # @!attribute [rw] chart_type
          #   @return [::Google::Cloud::Monitoring::Dashboard::V1::PieChart::PieChartType]
          #     Required. Indicates the visualization type for the PieChart.
          # @!attribute [rw] show_labels
          #   @return [::Boolean]
          #     Optional. Indicates whether or not the pie chart should show slices' labels
          class PieChart
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Groups a time series query definition.
            # @!attribute [rw] time_series_query
            #   @return [::Google::Cloud::Monitoring::Dashboard::V1::TimeSeriesQuery]
            #     Required. The query for the PieChart. See,
            #     `google.monitoring.dashboard.v1.TimeSeriesQuery`.
            # @!attribute [rw] slice_name_template
            #   @return [::String]
            #     Optional. A template for the name of the slice. This name will be
            #     displayed in the legend and the tooltip of the pie chart. It replaces the
            #     auto-generated names for the slices. For example, if the template is set
            #     to
            #     `${resource.labels.zone}`, the zone's value will be used for the name
            #     instead of the default name.
            # @!attribute [rw] min_alignment_period
            #   @return [::Google::Protobuf::Duration]
            #     Optional. The lower bound on data point frequency for this data set,
            #     implemented by specifying the minimum alignment period to use in a time
            #     series query. For example, if the data is published once every 10
            #     minutes, the `min_alignment_period` should be at least 10 minutes. It
            #     would not make sense to fetch and align data at one minute intervals.
            class PieChartDataSet
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods
            end

            # Types for the pie chart.
            module PieChartType
              # The zero value. No type specified. Do not use.
              PIE_CHART_TYPE_UNSPECIFIED = 0

              # A Pie type PieChart.
              PIE = 1

              # Similar to PIE, but the DONUT type PieChart has a hole in the middle.
              DONUT = 2
            end
          end
        end
      end
    end
  end
end
