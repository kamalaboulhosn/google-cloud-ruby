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
  module Analytics
    module Admin
      module V1alpha
        # Dimensions are attributes of your data. For example, the dimension
        # `userEmail` indicates the email of the user that accessed reporting data.
        # Dimension values in report responses are strings.
        # @!attribute [rw] dimension_name
        #   @return [::String]
        #     The API name of the dimension. See [Data Access
        #     Schema](https://developers.google.com/analytics/devguides/config/admin/v1/access-api-schema)
        #     for the list of dimensions supported in this API.
        #
        #     Dimensions are referenced by name in `dimensionFilter` and `orderBys`.
        class AccessDimension
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The quantitative measurements of a report. For example, the metric
        # `accessCount` is the total number of data access records.
        # @!attribute [rw] metric_name
        #   @return [::String]
        #     The API name of the metric. See [Data Access
        #     Schema](https://developers.google.com/analytics/devguides/config/admin/v1/access-api-schema)
        #     for the list of metrics supported in this API.
        #
        #     Metrics are referenced by name in `metricFilter` & `orderBys`.
        class AccessMetric
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A contiguous range of days: startDate, startDate + 1, ..., endDate.
        # @!attribute [rw] start_date
        #   @return [::String]
        #     The inclusive start date for the query in the format `YYYY-MM-DD`. Cannot
        #     be after `endDate`. The format `NdaysAgo`, `yesterday`, or `today` is also
        #     accepted, and in that case, the date is inferred based on the current time
        #     in the request's time zone.
        # @!attribute [rw] end_date
        #   @return [::String]
        #     The inclusive end date for the query in the format `YYYY-MM-DD`. Cannot
        #     be before `startDate`. The format `NdaysAgo`, `yesterday`, or `today` is
        #     also accepted, and in that case, the date is inferred based on the current
        #     time in the request's time zone.
        class AccessDateRange
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Expresses dimension or metric filters. The fields in the same expression need
        # to be either all dimensions or all metrics.
        # @!attribute [rw] and_group
        #   @return [::Google::Analytics::Admin::V1alpha::AccessFilterExpressionList]
        #     Each of the FilterExpressions in the and_group has an AND relationship.
        #
        #     Note: The following fields are mutually exclusive: `and_group`, `or_group`, `not_expression`, `access_filter`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] or_group
        #   @return [::Google::Analytics::Admin::V1alpha::AccessFilterExpressionList]
        #     Each of the FilterExpressions in the or_group has an OR relationship.
        #
        #     Note: The following fields are mutually exclusive: `or_group`, `and_group`, `not_expression`, `access_filter`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] not_expression
        #   @return [::Google::Analytics::Admin::V1alpha::AccessFilterExpression]
        #     The FilterExpression is NOT of not_expression.
        #
        #     Note: The following fields are mutually exclusive: `not_expression`, `and_group`, `or_group`, `access_filter`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] access_filter
        #   @return [::Google::Analytics::Admin::V1alpha::AccessFilter]
        #     A primitive filter. In the same FilterExpression, all of the filter's
        #     field names need to be either all dimensions or all metrics.
        #
        #     Note: The following fields are mutually exclusive: `access_filter`, `and_group`, `or_group`, `not_expression`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class AccessFilterExpression
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A list of filter expressions.
        # @!attribute [rw] expressions
        #   @return [::Array<::Google::Analytics::Admin::V1alpha::AccessFilterExpression>]
        #     A list of filter expressions.
        class AccessFilterExpressionList
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An expression to filter dimension or metric values.
        # @!attribute [rw] string_filter
        #   @return [::Google::Analytics::Admin::V1alpha::AccessStringFilter]
        #     Strings related filter.
        #
        #     Note: The following fields are mutually exclusive: `string_filter`, `in_list_filter`, `numeric_filter`, `between_filter`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] in_list_filter
        #   @return [::Google::Analytics::Admin::V1alpha::AccessInListFilter]
        #     A filter for in list values.
        #
        #     Note: The following fields are mutually exclusive: `in_list_filter`, `string_filter`, `numeric_filter`, `between_filter`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] numeric_filter
        #   @return [::Google::Analytics::Admin::V1alpha::AccessNumericFilter]
        #     A filter for numeric or date values.
        #
        #     Note: The following fields are mutually exclusive: `numeric_filter`, `string_filter`, `in_list_filter`, `between_filter`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] between_filter
        #   @return [::Google::Analytics::Admin::V1alpha::AccessBetweenFilter]
        #     A filter for two values.
        #
        #     Note: The following fields are mutually exclusive: `between_filter`, `string_filter`, `in_list_filter`, `numeric_filter`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] field_name
        #   @return [::String]
        #     The dimension name or metric name.
        class AccessFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The filter for strings.
        # @!attribute [rw] match_type
        #   @return [::Google::Analytics::Admin::V1alpha::AccessStringFilter::MatchType]
        #     The match type for this filter.
        # @!attribute [rw] value
        #   @return [::String]
        #     The string value used for the matching.
        # @!attribute [rw] case_sensitive
        #   @return [::Boolean]
        #     If true, the string value is case sensitive.
        class AccessStringFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The match type of a string filter.
          module MatchType
            # Unspecified
            MATCH_TYPE_UNSPECIFIED = 0

            # Exact match of the string value.
            EXACT = 1

            # Begins with the string value.
            BEGINS_WITH = 2

            # Ends with the string value.
            ENDS_WITH = 3

            # Contains the string value.
            CONTAINS = 4

            # Full match for the regular expression with the string value.
            FULL_REGEXP = 5

            # Partial match for the regular expression with the string value.
            PARTIAL_REGEXP = 6
          end
        end

        # The result needs to be in a list of string values.
        # @!attribute [rw] values
        #   @return [::Array<::String>]
        #     The list of string values. Must be non-empty.
        # @!attribute [rw] case_sensitive
        #   @return [::Boolean]
        #     If true, the string value is case sensitive.
        class AccessInListFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Filters for numeric or date values.
        # @!attribute [rw] operation
        #   @return [::Google::Analytics::Admin::V1alpha::AccessNumericFilter::Operation]
        #     The operation type for this filter.
        # @!attribute [rw] value
        #   @return [::Google::Analytics::Admin::V1alpha::NumericValue]
        #     A numeric value or a date value.
        class AccessNumericFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # The operation applied to a numeric filter.
          module Operation
            # Unspecified.
            OPERATION_UNSPECIFIED = 0

            # Equal
            EQUAL = 1

            # Less than
            LESS_THAN = 2

            # Less than or equal
            LESS_THAN_OR_EQUAL = 3

            # Greater than
            GREATER_THAN = 4

            # Greater than or equal
            GREATER_THAN_OR_EQUAL = 5
          end
        end

        # To express that the result needs to be between two numbers (inclusive).
        # @!attribute [rw] from_value
        #   @return [::Google::Analytics::Admin::V1alpha::NumericValue]
        #     Begins with this number.
        # @!attribute [rw] to_value
        #   @return [::Google::Analytics::Admin::V1alpha::NumericValue]
        #     Ends with this number.
        class AccessBetweenFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # To represent a number.
        # @!attribute [rw] int64_value
        #   @return [::Integer]
        #     Integer value
        #
        #     Note: The following fields are mutually exclusive: `int64_value`, `double_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] double_value
        #   @return [::Float]
        #     Double value
        #
        #     Note: The following fields are mutually exclusive: `double_value`, `int64_value`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class NumericValue
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Order bys define how rows will be sorted in the response. For example,
        # ordering rows by descending access count is one ordering, and ordering rows
        # by the country string is a different ordering.
        # @!attribute [rw] metric
        #   @return [::Google::Analytics::Admin::V1alpha::AccessOrderBy::MetricOrderBy]
        #     Sorts results by a metric's values.
        #
        #     Note: The following fields are mutually exclusive: `metric`, `dimension`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] dimension
        #   @return [::Google::Analytics::Admin::V1alpha::AccessOrderBy::DimensionOrderBy]
        #     Sorts results by a dimension's values.
        #
        #     Note: The following fields are mutually exclusive: `dimension`, `metric`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] desc
        #   @return [::Boolean]
        #     If true, sorts by descending order. If false or unspecified, sorts in
        #     ascending order.
        class AccessOrderBy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Sorts by metric values.
          # @!attribute [rw] metric_name
          #   @return [::String]
          #     A metric name in the request to order by.
          class MetricOrderBy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Sorts by dimension values.
          # @!attribute [rw] dimension_name
          #   @return [::String]
          #     A dimension name in the request to order by.
          # @!attribute [rw] order_type
          #   @return [::Google::Analytics::Admin::V1alpha::AccessOrderBy::DimensionOrderBy::OrderType]
          #     Controls the rule for dimension value ordering.
          class DimensionOrderBy
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Rule to order the string dimension values by.
            module OrderType
              # Unspecified.
              ORDER_TYPE_UNSPECIFIED = 0

              # Alphanumeric sort by Unicode code point. For example, "2" < "A" < "X" <
              # "b" < "z".
              ALPHANUMERIC = 1

              # Case insensitive alphanumeric sort by lower case Unicode code point.
              # For example, "2" < "A" < "b" < "X" < "z".
              CASE_INSENSITIVE_ALPHANUMERIC = 2

              # Dimension values are converted to numbers before sorting. For example
              # in NUMERIC sort, "25" < "100", and in `ALPHANUMERIC` sort, "100" <
              # "25". Non-numeric dimension values all have equal ordering value below
              # all numeric values.
              NUMERIC = 3
            end
          end
        end

        # Describes a dimension column in the report. Dimensions requested in a report
        # produce column entries within rows and DimensionHeaders. However, dimensions
        # used exclusively within filters or expressions do not produce columns in a
        # report; correspondingly, those dimensions do not produce headers.
        # @!attribute [rw] dimension_name
        #   @return [::String]
        #     The dimension's name; for example 'userEmail'.
        class AccessDimensionHeader
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Describes a metric column in the report. Visible metrics requested in a
        # report produce column entries within rows and MetricHeaders. However,
        # metrics used exclusively within filters or expressions do not produce columns
        # in a report; correspondingly, those metrics do not produce headers.
        # @!attribute [rw] metric_name
        #   @return [::String]
        #     The metric's name; for example 'accessCount'.
        class AccessMetricHeader
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Access report data for each row.
        # @!attribute [rw] dimension_values
        #   @return [::Array<::Google::Analytics::Admin::V1alpha::AccessDimensionValue>]
        #     List of dimension values. These values are in the same order as specified
        #     in the request.
        # @!attribute [rw] metric_values
        #   @return [::Array<::Google::Analytics::Admin::V1alpha::AccessMetricValue>]
        #     List of metric values. These values are in the same order as specified
        #     in the request.
        class AccessRow
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The value of a dimension.
        # @!attribute [rw] value
        #   @return [::String]
        #     The dimension value. For example, this value may be 'France' for the
        #     'country' dimension.
        class AccessDimensionValue
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The value of a metric.
        # @!attribute [rw] value
        #   @return [::String]
        #     The measurement value. For example, this value may be '13'.
        class AccessMetricValue
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Current state of all quotas for this Analytics property. If any quota for a
        # property is exhausted, all requests to that property will return Resource
        # Exhausted errors.
        # @!attribute [rw] tokens_per_day
        #   @return [::Google::Analytics::Admin::V1alpha::AccessQuotaStatus]
        #     Properties can use 250,000 tokens per day. Most requests consume fewer than
        #     10 tokens.
        # @!attribute [rw] tokens_per_hour
        #   @return [::Google::Analytics::Admin::V1alpha::AccessQuotaStatus]
        #     Properties can use 50,000 tokens per hour. An API request consumes a single
        #     number of tokens, and that number is deducted from all of the hourly,
        #     daily, and per project hourly quotas.
        # @!attribute [rw] concurrent_requests
        #   @return [::Google::Analytics::Admin::V1alpha::AccessQuotaStatus]
        #     Properties can use up to 50 concurrent requests.
        # @!attribute [rw] server_errors_per_project_per_hour
        #   @return [::Google::Analytics::Admin::V1alpha::AccessQuotaStatus]
        #     Properties and cloud project pairs can have up to 50 server errors per
        #     hour.
        # @!attribute [rw] tokens_per_project_per_hour
        #   @return [::Google::Analytics::Admin::V1alpha::AccessQuotaStatus]
        #     Properties can use up to 25% of their tokens per project per hour. This
        #     amounts to Analytics 360 Properties can use 12,500 tokens per project per
        #     hour. An API request consumes a single number of tokens, and that number is
        #     deducted from all of the hourly, daily, and per project hourly quotas.
        class AccessQuota
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Current state for a particular quota group.
        # @!attribute [rw] consumed
        #   @return [::Integer]
        #     Quota consumed by this request.
        # @!attribute [rw] remaining
        #   @return [::Integer]
        #     Quota remaining after this request.
        class AccessQuotaStatus
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
