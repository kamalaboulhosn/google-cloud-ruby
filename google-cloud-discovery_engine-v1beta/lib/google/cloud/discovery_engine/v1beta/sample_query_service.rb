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

require "google/cloud/discovery_engine/v1beta/version"

require "google/cloud/discovery_engine/v1beta/sample_query_service/credentials"
require "google/cloud/discovery_engine/v1beta/sample_query_service/paths"
require "google/cloud/discovery_engine/v1beta/sample_query_service/operations"
require "google/cloud/discovery_engine/v1beta/sample_query_service/client"
require "google/cloud/discovery_engine/v1beta/sample_query_service/rest"

module Google
  module Cloud
    module DiscoveryEngine
      module V1beta
        ##
        # Service for managing
        # {::Google::Cloud::DiscoveryEngine::V1beta::SampleQuery SampleQuery}s,
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/discovery_engine/v1beta/sample_query_service"
        #     client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/discovery_engine/v1beta/sample_query_service/rest"
        #     client = ::Google::Cloud::DiscoveryEngine::V1beta::SampleQueryService::Rest::Client.new
        #
        module SampleQueryService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "sample_query_service", "helpers.rb"
require "google/cloud/discovery_engine/v1beta/sample_query_service/helpers" if ::File.file? helper_path
