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

require "gapic/rest"
require "gapic/config"
require "gapic/config/method"

require "google/shopping/merchant/accounts/v1beta/version"

require "google/shopping/merchant/accounts/v1beta/business_identity_service/credentials"
require "google/shopping/merchant/accounts/v1beta/business_identity_service/paths"
require "google/shopping/merchant/accounts/v1beta/business_identity_service/rest/client"

module Google
  module Shopping
    module Merchant
      module Accounts
        module V1beta
          ##
          # Service to support [business
          # identity](https://support.google.com/merchants/answer/12564247) API.
          #
          # To load this service and instantiate a REST client:
          #
          #     require "google/shopping/merchant/accounts/v1beta/business_identity_service/rest"
          #     client = ::Google::Shopping::Merchant::Accounts::V1beta::BusinessIdentityService::Rest::Client.new
          #
          module BusinessIdentityService
            # Client for the REST transport
            module Rest
            end
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/shopping/merchant/accounts/v1beta/business_identity_service/rest/helpers" if ::File.file? helper_path
