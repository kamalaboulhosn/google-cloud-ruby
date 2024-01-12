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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/monitoring/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :monitoring do |config|
  config.add_field! :endpoint,      nil, match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
  config.add_field! :universe_domain, nil, match: ::String
end

module Google
  module Cloud
    module Monitoring
      ##
      # Create a new client object for AlertPolicyService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Monitoring::V3::AlertPolicyService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-monitoring-v3/latest/Google-Cloud-Monitoring-V3-AlertPolicyService-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the AlertPolicyService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About AlertPolicyService
      #
      # The AlertPolicyService API is used to manage (list, create, delete,
      # edit) alert policies in Cloud Monitoring. An alerting policy is
      # a description of the conditions under which some aspect of your
      # system is considered to be "unhealthy" and the ways to notify
      # people or services about this state. In addition to using this API, alert
      # policies can also be managed through
      # [Cloud Monitoring](https://cloud.google.com/monitoring/docs/),
      # which can be reached by clicking the "Monitoring" tab in
      # [Cloud console](https://console.cloud.google.com/).
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @return [::Object] A client object for the specified version.
      #
      def self.alert_policy_service version: :v3, &block
        require "google/cloud/monitoring/#{version.to_s.downcase}"

        package_name = Google::Cloud::Monitoring
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Monitoring.const_get(package_name).const_get(:AlertPolicyService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for GroupService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Monitoring::V3::GroupService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-monitoring-v3/latest/Google-Cloud-Monitoring-V3-GroupService-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the GroupService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About GroupService
      #
      # The Group API lets you inspect and manage your
      # [groups](#google.monitoring.v3.Group).
      #
      # A group is a named filter that is used to identify
      # a collection of monitored resources. Groups are typically used to
      # mirror the physical and/or logical topology of the environment.
      # Because group membership is computed dynamically, monitored
      # resources that are started in the future are automatically placed
      # in matching groups. By using a group to name monitored resources in,
      # for example, an alert policy, the target of that alert policy is
      # updated automatically as monitored resources are added and removed
      # from the infrastructure.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @return [::Object] A client object for the specified version.
      #
      def self.group_service version: :v3, &block
        require "google/cloud/monitoring/#{version.to_s.downcase}"

        package_name = Google::Cloud::Monitoring
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Monitoring.const_get(package_name).const_get(:GroupService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for MetricService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Monitoring::V3::MetricService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-monitoring-v3/latest/Google-Cloud-Monitoring-V3-MetricService-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the MetricService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About MetricService
      #
      # Manages metric descriptors, monitored resource descriptors, and
      # time series data.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @return [::Object] A client object for the specified version.
      #
      def self.metric_service version: :v3, &block
        require "google/cloud/monitoring/#{version.to_s.downcase}"

        package_name = Google::Cloud::Monitoring
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Monitoring.const_get(package_name).const_get(:MetricService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for NotificationChannelService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Monitoring::V3::NotificationChannelService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-monitoring-v3/latest/Google-Cloud-Monitoring-V3-NotificationChannelService-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the NotificationChannelService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About NotificationChannelService
      #
      # The Notification Channel API provides access to configuration that
      # controls how messages related to incidents are sent.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @return [::Object] A client object for the specified version.
      #
      def self.notification_channel_service version: :v3, &block
        require "google/cloud/monitoring/#{version.to_s.downcase}"

        package_name = Google::Cloud::Monitoring
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Monitoring.const_get(package_name).const_get(:NotificationChannelService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for QueryService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Monitoring::V3::QueryService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-monitoring-v3/latest/Google-Cloud-Monitoring-V3-QueryService-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the QueryService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About QueryService
      #
      # The QueryService API is used to manage time series data in Stackdriver
      # Monitoring. Time series data is a collection of data points that describes
      # the time-varying values of a metric.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @return [::Object] A client object for the specified version.
      #
      def self.query_service version: :v3, &block
        require "google/cloud/monitoring/#{version.to_s.downcase}"

        package_name = Google::Cloud::Monitoring
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Monitoring.const_get(package_name).const_get(:QueryService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for ServiceMonitoringService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Monitoring::V3::ServiceMonitoringService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-monitoring-v3/latest/Google-Cloud-Monitoring-V3-ServiceMonitoringService-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the ServiceMonitoringService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About ServiceMonitoringService
      #
      # The Cloud Monitoring Service-Oriented Monitoring API has endpoints for
      # managing and querying aspects of a workspace's services. These include the
      # `Service`'s monitored resources, its Service-Level Objectives, and a taxonomy
      # of categorized Health Metrics.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @return [::Object] A client object for the specified version.
      #
      def self.service_monitoring_service version: :v3, &block
        require "google/cloud/monitoring/#{version.to_s.downcase}"

        package_name = Google::Cloud::Monitoring
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Monitoring.const_get(package_name).const_get(:ServiceMonitoringService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for SnoozeService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Monitoring::V3::SnoozeService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-monitoring-v3/latest/Google-Cloud-Monitoring-V3-SnoozeService-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the SnoozeService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About SnoozeService
      #
      # The SnoozeService API is used to temporarily prevent an alert policy from
      # generating alerts. A Snooze is a description of the criteria under which one
      # or more alert policies should not fire alerts for the specified duration.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @return [::Object] A client object for the specified version.
      #
      def self.snooze_service version: :v3, &block
        require "google/cloud/monitoring/#{version.to_s.downcase}"

        package_name = Google::Cloud::Monitoring
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Monitoring.const_get(package_name).const_get(:SnoozeService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for UptimeCheckService.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Monitoring::V3::UptimeCheckService::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-monitoring-v3/latest/Google-Cloud-Monitoring-V3-UptimeCheckService-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the UptimeCheckService service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About UptimeCheckService
      #
      # The UptimeCheckService API is used to manage (list, create, delete, edit)
      # Uptime check configurations in the Cloud Monitoring product. An Uptime
      # check is a piece of configuration that determines which resources and
      # services to monitor for availability. These configurations can also be
      # configured interactively by navigating to the [Cloud console]
      # (https://console.cloud.google.com), selecting the appropriate project,
      # clicking on "Monitoring" on the left-hand side to navigate to Cloud
      # Monitoring, and then clicking on "Uptime".
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @return [::Object] A client object for the specified version.
      #
      def self.uptime_check_service version: :v3, &block
        require "google/cloud/monitoring/#{version.to_s.downcase}"

        package_name = Google::Cloud::Monitoring
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::Monitoring.const_get(package_name).const_get(:UptimeCheckService)
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-monitoring library.
      #
      # The following configuration parameters are supported:
      #
      # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
      #   The path to the keyfile as a String, the contents of the keyfile as a
      #   Hash, or a Google::Auth::Credentials object.
      # * `lib_name` (*type:* `String`) -
      #   The library name as recorded in instrumentation and logging.
      # * `lib_version` (*type:* `String`) -
      #   The library version as recorded in instrumentation and logging.
      # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
      #   An array of interceptors that are run before calls are executed.
      # * `timeout` (*type:* `Numeric`) -
      #   Default timeout in seconds.
      # * `metadata` (*type:* `Hash{Symbol=>String}`) -
      #   Additional headers to be sent with the call.
      # * `retry_policy` (*type:* `Hash`) -
      #   The retry policy. The value is a hash with the following keys:
      #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
      #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
      #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
      #     * `:retry_codes` (*type:* `Array<String>`) -
      #       The error codes that should trigger a retry.
      #
      # @return [::Google::Cloud::Config] The default configuration used by this library
      #
      def self.configure
        yield ::Google::Cloud.configure.monitoring if block_given?

        ::Google::Cloud.configure.monitoring
      end
    end
  end
end

helper_path = ::File.join __dir__, "monitoring", "helpers.rb"
require "google/cloud/monitoring/helpers" if ::File.file? helper_path
