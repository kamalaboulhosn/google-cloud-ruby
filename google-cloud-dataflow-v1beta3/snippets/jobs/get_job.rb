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

# [START dataflow_v1beta3_generated_Jobs_GetJob_sync]
require "google/cloud/dataflow/v1beta3"

##
# Snippet for the get_job call in the Jobs service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Dataflow::V1beta3::Jobs::Client#get_job.
#
def get_job
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Dataflow::V1beta3::Jobs::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Dataflow::V1beta3::GetJobRequest.new

  # Call the get_job method.
  result = client.get_job request

  # The returned object is of type Google::Cloud::Dataflow::V1beta3::Job.
  p result
end
# [END dataflow_v1beta3_generated_Jobs_GetJob_sync]
