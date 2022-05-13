# frozen_string_literal: true

# Copyright 2022 Google LLC
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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/analytics/data/version"

require "googleauth"

module Google
  module Analytics
    module Data
      ##
      # Create a new client object for AnalyticsData.
      #
      # By default, this returns an instance of
      # [Google::Analytics::Data::V1beta::AnalyticsData::Client](https://googleapis.dev/ruby/google-analytics-data-v1beta/latest/Google/Analytics/Data/V1beta/AnalyticsData/Client.html)
      # for version V1beta of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the AnalyticsData service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About AnalyticsData
      #
      # Google Analytics reporting data service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1beta`.
      # @return [AnalyticsData::Client] A client object for the specified version.
      #
      def self.analytics_data version: :v1beta, &block
        require "google/analytics/data/#{version.to_s.downcase}"

        package_name = Google::Analytics::Data
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Analytics::Data.const_get package_name
        package_module.const_get(:AnalyticsData).const_get(:Client).new(&block)
      end
    end
  end
end

helper_path = ::File.join __dir__, "data", "helpers.rb"
require "google/analytics/data/helpers" if ::File.file? helper_path