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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/security_center/v1p1beta1/version"

require "google/cloud/security_center/v1p1beta1/security_center/credentials"
require "google/cloud/security_center/v1p1beta1/security_center/paths"
require "google/cloud/security_center/v1p1beta1/security_center/operations"
require "google/cloud/security_center/v1p1beta1/security_center/client"

module Google
  module Cloud
    module SecurityCenter
      module V1p1beta1
        ##
        # V1p1Beta1 APIs for Security Center service.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/security_center/v1p1beta1/security_center"
        #     client = ::Google::Cloud::SecurityCenter::V1p1beta1::SecurityCenter::Client.new
        #
        module SecurityCenter
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "security_center", "helpers.rb"
require "google/cloud/security_center/v1p1beta1/security_center/helpers" if ::File.file? helper_path
