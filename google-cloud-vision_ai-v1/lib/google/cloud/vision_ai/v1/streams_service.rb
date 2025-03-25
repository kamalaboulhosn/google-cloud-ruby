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

require "google/cloud/vision_ai/v1/version"

require "google/cloud/vision_ai/v1/streams_service/credentials"
require "google/cloud/vision_ai/v1/streams_service/paths"
require "google/cloud/vision_ai/v1/streams_service/operations"
require "google/cloud/vision_ai/v1/streams_service/client"
require "google/cloud/vision_ai/v1/streams_service/rest"

module Google
  module Cloud
    module VisionAI
      module V1
        ##
        # Service describing handlers for resources.
        # Vision API and Vision AI API are two independent APIs developed by the same
        # team. Vision API is for people to annotate their image while Vision AI is an
        # e2e solution for customer to build their own computer vision application.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/vision_ai/v1/streams_service"
        #     client = ::Google::Cloud::VisionAI::V1::StreamsService::Client.new
        #
        # @example Load this service and instantiate a REST client
        #
        #     require "google/cloud/vision_ai/v1/streams_service/rest"
        #     client = ::Google::Cloud::VisionAI::V1::StreamsService::Rest::Client.new
        #
        module StreamsService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "streams_service", "helpers.rb"
require "google/cloud/vision_ai/v1/streams_service/helpers" if ::File.file? helper_path
