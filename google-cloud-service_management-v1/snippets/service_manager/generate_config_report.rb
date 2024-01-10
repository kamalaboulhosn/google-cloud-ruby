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

# [START servicemanagement_v1_generated_ServiceManager_GenerateConfigReport_sync]
require "google/cloud/service_management/v1"

##
# Snippet for the generate_config_report call in the ServiceManager service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::ServiceManagement::V1::ServiceManager::Client#generate_config_report.
#
def generate_config_report
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::ServiceManagement::V1::ServiceManager::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::ServiceManagement::V1::GenerateConfigReportRequest.new

  # Call the generate_config_report method.
  result = client.generate_config_report request

  # The returned object is of type Google::Cloud::ServiceManagement::V1::GenerateConfigReportResponse.
  p result
end
# [END servicemanagement_v1_generated_ServiceManager_GenerateConfigReport_sync]
