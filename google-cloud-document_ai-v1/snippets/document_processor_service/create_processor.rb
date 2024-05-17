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

# [START documentai_v1_generated_DocumentProcessorService_CreateProcessor_sync]
require "google/cloud/document_ai/v1"

##
# Snippet for the create_processor call in the DocumentProcessorService service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client#create_processor.
#
def create_processor
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::DocumentAI::V1::CreateProcessorRequest.new

  # Call the create_processor method.
  result = client.create_processor request

  # The returned object is of type Google::Cloud::DocumentAI::V1::Processor.
  p result
end
# [END documentai_v1_generated_DocumentProcessorService_CreateProcessor_sync]
