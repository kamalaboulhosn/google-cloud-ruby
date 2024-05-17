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

# [START binaryauthorization_v1beta1_generated_BinauthzManagementService_UpdateAttestor_sync]
require "google/cloud/binary_authorization/v1beta1"

##
# Snippet for the update_attestor call in the BinauthzManagementService service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Client#update_attestor.
#
def update_attestor
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::BinaryAuthorization::V1beta1::BinauthzManagementService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::BinaryAuthorization::V1beta1::UpdateAttestorRequest.new

  # Call the update_attestor method.
  result = client.update_attestor request

  # The returned object is of type Google::Cloud::BinaryAuthorization::V1beta1::Attestor.
  p result
end
# [END binaryauthorization_v1beta1_generated_BinauthzManagementService_UpdateAttestor_sync]
