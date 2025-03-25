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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/shopping/css/v1/version"

require "google/shopping/css/v1/account_labels_service/credentials"
require "google/shopping/css/v1/account_labels_service/paths"
require "google/shopping/css/v1/account_labels_service/client"
require "google/shopping/css/v1/account_labels_service/rest"

module Google
  module Shopping
    module Css
      module V1
        ##
        # Manages Merchant Center and CSS accounts labels.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/shopping/css/v1/account_labels_service"
        #     client = ::Google::Shopping::Css::V1::AccountLabelsService::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/shopping/css/v1/account_labels_service/rest"
        #     client = ::Google::Shopping::Css::V1::AccountLabelsService::Rest::Client.new
        #
        module AccountLabelsService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "account_labels_service", "helpers.rb"
require "google/shopping/css/v1/account_labels_service/helpers" if ::File.file? helper_path
