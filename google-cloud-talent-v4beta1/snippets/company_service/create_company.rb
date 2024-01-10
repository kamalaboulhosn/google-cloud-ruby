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

# [START jobs_v4beta1_generated_CompanyService_CreateCompany_sync]
require "google/cloud/talent/v4beta1"

##
# Snippet for the create_company call in the CompanyService service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Talent::V4beta1::CompanyService::Client#create_company.
#
def create_company
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Talent::V4beta1::CompanyService::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Talent::V4beta1::CreateCompanyRequest.new

  # Call the create_company method.
  result = client.create_company request

  # The returned object is of type Google::Cloud::Talent::V4beta1::Company.
  p result
end
# [END jobs_v4beta1_generated_CompanyService_CreateCompany_sync]
