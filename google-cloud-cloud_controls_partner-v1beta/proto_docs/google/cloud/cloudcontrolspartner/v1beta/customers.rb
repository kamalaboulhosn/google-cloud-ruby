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
    module CloudControlsPartner
      module V1beta
        # Contains metadata around a Cloud Controls Partner Customer
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. Format:
        #     `organizations/{organization}/locations/{location}/customers/{customer}`
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. Display name for the customer
        # @!attribute [r] customer_onboarding_state
        #   @return [::Google::Cloud::CloudControlsPartner::V1beta::CustomerOnboardingState]
        #     Output only. Container for customer onboarding steps
        # @!attribute [r] is_onboarded
        #   @return [::Boolean]
        #     Output only. Indicates whether a customer is fully onboarded
        # @!attribute [r] organization_domain
        #   @return [::String]
        #     Output only. The customer organization domain, extracted from
        #     CRM Organization’s display_name field. e.g. "google.com"
        class Customer
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to list customers
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent resource
        #     Format: `organizations/{organization}/locations/{location}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of Customers to return. The service may return fewer
        #     than this value. If unspecified, at most 500 Customers will be returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token, received from a previous `ListCustomers` call.
        #     Provide this to retrieve the subsequent page.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. Filtering results
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. Hint for how to order the results
        class ListCustomersRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for list customer Customers requests
        # @!attribute [rw] customers
        #   @return [::Array<::Google::Cloud::CloudControlsPartner::V1beta::Customer>]
        #     List of customers
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached.
        class ListCustomersResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request to create a customer
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent resource
        #     Format: `organizations/{organization}/locations/{location}`
        # @!attribute [rw] customer
        #   @return [::Google::Cloud::CloudControlsPartner::V1beta::Customer]
        #     Required. The customer to create.
        # @!attribute [rw] customer_id
        #   @return [::String]
        #     Required. The customer id to use for the customer, which will become the
        #     final component of the customer's resource name. The specified value must
        #     be a valid Google cloud organization id.
        class CreateCustomerRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for getting a customer
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Format:
        #     `organizations/{organization}/locations/{location}/customers/{customer}`
        class GetCustomerRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Container for customer onboarding steps
        # @!attribute [rw] onboarding_steps
        #   @return [::Array<::Google::Cloud::CloudControlsPartner::V1beta::CustomerOnboardingStep>]
        #     List of customer onboarding steps
        class CustomerOnboardingState
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Container for customer onboarding information
        # @!attribute [rw] step
        #   @return [::Google::Cloud::CloudControlsPartner::V1beta::CustomerOnboardingStep::Step]
        #     The onboarding step
        # @!attribute [rw] start_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The starting time of the onboarding step
        # @!attribute [rw] completion_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The completion time of the onboarding step
        # @!attribute [r] completion_state
        #   @return [::Google::Cloud::CloudControlsPartner::V1beta::CompletionState]
        #     Output only. Current state of the step
        class CustomerOnboardingStep
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Enum for possible onboarding steps
          module Step
            # Unspecified step
            STEP_UNSPECIFIED = 0

            # KAJ Enrollment
            KAJ_ENROLLMENT = 1

            # Customer Environment
            CUSTOMER_ENVIRONMENT = 2
          end
        end

        # Request to update a customer
        # @!attribute [rw] customer
        #   @return [::Google::Cloud::CloudControlsPartner::V1beta::Customer]
        #     Required. The customer to update
        #     Format:
        #     `organizations/{organization}/locations/{location}/customers/{customer}`
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Optional. The list of fields to update
        class UpdateCustomerRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Message for deleting customer
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. name of the resource to be deleted
        #     format: name=organizations/*/locations/*/customers/*
        class DeleteCustomerRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
