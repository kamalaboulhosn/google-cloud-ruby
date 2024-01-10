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

# [START cloudtasks_v2_generated_CloudTasks_UpdateQueue_sync]
require "google/cloud/tasks/v2"

##
# Snippet for the update_queue call in the CloudTasks service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Tasks::V2::CloudTasks::Client#update_queue.
#
def update_queue
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Tasks::V2::CloudTasks::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Tasks::V2::UpdateQueueRequest.new

  # Call the update_queue method.
  result = client.update_queue request

  # The returned object is of type Google::Cloud::Tasks::V2::Queue.
  p result
end
# [END cloudtasks_v2_generated_CloudTasks_UpdateQueue_sync]
