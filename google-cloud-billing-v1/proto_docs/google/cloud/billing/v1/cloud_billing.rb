# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Billing
      module V1
        # A billing account in the
        # [Google Cloud Console](https://console.cloud.google.com/). You can assign a
        # billing account to one or more projects.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the billing account. The resource name
        #     has the form `billingAccounts/{billing_account_id}`. For example,
        #     `billingAccounts/012345-567890-ABCDEF` would be the resource name for
        #     billing account `012345-567890-ABCDEF`.
        # @!attribute [r] open
        #   @return [::Boolean]
        #     Output only. True if the billing account is open, and will therefore be
        #     charged for any usage on associated projects. False if the billing account
        #     is closed, and therefore projects associated with it are unable to use paid
        #     services.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     The display name given to the billing account, such as `My Billing
        #     Account`. This name is displayed in the Google Cloud Console.
        # @!attribute [rw] master_billing_account
        #   @return [::String]
        #     If this account is a
        #     [subaccount](https://cloud.google.com/billing/docs/concepts), then this
        #     will be the resource name of the parent billing account that it is being
        #     resold through.
        #     Otherwise this will be empty.
        # @!attribute [r] parent
        #   @return [::String]
        #     Output only. The billing account's parent resource identifier.
        #     Use the `MoveBillingAccount` method to update the account's parent resource
        #     if it is a organization.
        #     Format:
        #       - `organizations/{organization_id}`, for example,
        #         `organizations/12345678`
        #       - `billingAccounts/{billing_account_id}`, for example,
        #         `billingAccounts/012345-567890-ABCDEF`
        # @!attribute [rw] currency_code
        #   @return [::String]
        #     Optional. The currency in which the billing account is billed and charged,
        #     represented as an ISO 4217 code such as `USD`.
        #
        #     Billing account currency is determined at the time of billing account
        #     creation and cannot be updated subsequently, so this field should not be
        #     set on update requests. In addition, a subaccount always matches the
        #     currency of its parent billing account, so this field should not be set on
        #     subaccount creation requests. Clients can read this field to determine the
        #     currency of an existing billing account.
        class BillingAccount
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Encapsulation of billing information for a Google Cloud Console project. A
        # project has at most one associated billing account at a time (but a billing
        # account can be assigned to multiple projects).
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name for the `ProjectBillingInfo`; has the form
        #     `projects/{project_id}/billingInfo`. For example, the resource name for the
        #     billing information for project `tokyo-rain-123` would be
        #     `projects/tokyo-rain-123/billingInfo`.
        # @!attribute [r] project_id
        #   @return [::String]
        #     Output only. The ID of the project that this `ProjectBillingInfo`
        #     represents, such as `tokyo-rain-123`. This is a convenience field so that
        #     you don't need to parse the `name` field to obtain a project ID.
        # @!attribute [rw] billing_account_name
        #   @return [::String]
        #     The resource name of the billing account associated with the project, if
        #     any. For example, `billingAccounts/012345-567890-ABCDEF`.
        # @!attribute [r] billing_enabled
        #   @return [::Boolean]
        #     Output only. True if the project is associated with an open billing
        #     account, to which usage on the project is charged. False if the project is
        #     associated with a closed billing account, or no billing account at all, and
        #     therefore cannot use paid services.
        class ProjectBillingInfo
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `GetBillingAccount`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the billing account to retrieve. For
        #     example, `billingAccounts/012345-567890-ABCDEF`.
        class GetBillingAccountRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `ListBillingAccounts`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size. The maximum page size is 100; this is also the
        #     default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying a page of results to return. This should be a
        #     `next_page_token` value returned from a previous `ListBillingAccounts`
        #     call. If unspecified, the first page of results is returned.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Options for how to filter the returned billing accounts.
        #     This only supports filtering for
        #     [subaccounts](https://cloud.google.com/billing/docs/concepts) under a
        #     single provided parent billing account.
        #     (for example,
        #     `master_billing_account=billingAccounts/012345-678901-ABCDEF`).
        #     Boolean algebra and other fields are not currently supported.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Optional. The parent resource to list billing accounts from.
        #     Format:
        #       - `organizations/{organization_id}`, for example,
        #         `organizations/12345678`
        #       - `billingAccounts/{billing_account_id}`, for example,
        #         `billingAccounts/012345-567890-ABCDEF`
        class ListBillingAccountsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for `ListBillingAccounts`.
        # @!attribute [rw] billing_accounts
        #   @return [::Array<::Google::Cloud::Billing::V1::BillingAccount>]
        #     A list of billing accounts.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results. To retrieve the next page,
        #     call `ListBillingAccounts` again with the `page_token` field set to this
        #     value. This field is empty if there are no more results to retrieve.
        class ListBillingAccountsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `CreateBillingAccount`.
        # @!attribute [rw] billing_account
        #   @return [::Google::Cloud::Billing::V1::BillingAccount]
        #     Required. The billing account resource to create.
        #     Currently CreateBillingAccount only supports subaccount creation, so
        #     any created billing accounts must be under a provided parent billing
        #     account.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Optional. The parent to create a billing account from.
        #     Format:
        #       - `billingAccounts/{billing_account_id}`, for example,
        #          `billingAccounts/012345-567890-ABCDEF`
        class CreateBillingAccountRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `UpdateBillingAccount`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the billing account resource to be updated.
        # @!attribute [rw] account
        #   @return [::Google::Cloud::Billing::V1::BillingAccount]
        #     Required. The billing account resource to replace the resource on the
        #     server.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The update mask applied to the resource.
        #     Only "display_name" is currently supported.
        class UpdateBillingAccountRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `ListProjectBillingInfo`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the billing account associated with the
        #     projects that you want to list. For example,
        #     `billingAccounts/012345-567890-ABCDEF`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size. The maximum page size is 100; this is also the
        #     default.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A token identifying a page of results to be returned. This should be a
        #     `next_page_token` value returned from a previous `ListProjectBillingInfo`
        #     call. If unspecified, the first page of results is returned.
        class ListProjectBillingInfoRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `ListProjectBillingInfoResponse`.
        # @!attribute [rw] project_billing_info
        #   @return [::Array<::Google::Cloud::Billing::V1::ProjectBillingInfo>]
        #     A list of `ProjectBillingInfo` resources representing the projects
        #     associated with the billing account.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results. To retrieve the next page,
        #     call `ListProjectBillingInfo` again with the `page_token` field set to this
        #     value. This field is empty if there are no more results to retrieve.
        class ListProjectBillingInfoResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `GetProjectBillingInfo`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the project for which billing information is
        #     retrieved. For example, `projects/tokyo-rain-123`.
        class GetProjectBillingInfoRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `UpdateProjectBillingInfo`.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the project associated with the billing
        #     information that you want to update. For example,
        #     `projects/tokyo-rain-123`.
        # @!attribute [rw] project_billing_info
        #   @return [::Google::Cloud::Billing::V1::ProjectBillingInfo]
        #     The new billing information for the project. Output-only fields are
        #     ignored; thus, you can leave empty all fields except
        #     `billing_account_name`.
        class UpdateProjectBillingInfoRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for `MoveBillingAccount` RPC.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the billing account to move.
        #     Must be of the form `billingAccounts/{billing_account_id}`.
        #     The specified billing account cannot be a subaccount, since a subaccount
        #     always belongs to the same organization as its parent account.
        # @!attribute [rw] destination_parent
        #   @return [::String]
        #     Required. The resource name of the Organization to move
        #     the billing account under.
        #     Must be of the form `organizations/{organization_id}`.
        class MoveBillingAccountRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
