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

# [START logging_v2_generated_MetricsService_DeleteLogMetric_sync]
require "google/cloud/logging/v2"

##
# Snippet for the delete_log_metric call in the MetricsService service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Logging::V2::MetricsService::Client#delete_log_metric.
#
def delete_log_metric
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Logging::V2::MetricsService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Logging::V2::DeleteLogMetricRequest.new

  # Call the delete_log_metric method.
  result = client.delete_log_metric request

  # The returned object is of type Google::Protobuf::Empty.
  p result
end
# [END logging_v2_generated_MetricsService_DeleteLogMetric_sync]
