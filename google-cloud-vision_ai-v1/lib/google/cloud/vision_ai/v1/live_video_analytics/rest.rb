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

require "google/cloud/vision_ai/v1/version"

require "google/cloud/vision_ai/v1/live_video_analytics/credentials"
require "google/cloud/vision_ai/v1/live_video_analytics/paths"
require "google/cloud/vision_ai/v1/live_video_analytics/rest/operations"
require "google/cloud/vision_ai/v1/live_video_analytics/rest/client"

module Google
  module Cloud
    module VisionAI
      module V1
        ##
        # Service describing handlers for resources. The service enables clients to run
        # Live Video Analytics (LVA) on the streaming inputs.
        #
        # To load this service and instantiate a REST client:
        #
        #     require "google/cloud/vision_ai/v1/live_video_analytics/rest"
        #     client = ::Google::Cloud::VisionAI::V1::LiveVideoAnalytics::Rest::Client.new
        #
        module LiveVideoAnalytics
          # Client for the REST transport
          module Rest
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/cloud/vision_ai/v1/live_video_analytics/rest/helpers" if ::File.file? helper_path
