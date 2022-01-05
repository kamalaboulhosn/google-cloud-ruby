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
require "google/cloud/metastore/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :metastore do |config|
  config.add_field! :endpoint,      "metastore.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module Metastore
      ##
      # Create a new client object for DataprocMetastore.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Metastore::V1::DataprocMetastore::Client](https://googleapis.dev/ruby/google-cloud-metastore-v1/latest/Google/Cloud/Metastore/V1/DataprocMetastore/Client.html)
      # for version V1 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the DataprocMetastore service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About DataprocMetastore
      #
      # Configures and manages metastore services.
      # Metastore services are fully managed, highly available, autoscaled,
      # autohealing, OSS-native deployments of technical metadata management
      # software. Each metastore service exposes a network endpoint through which
      # metadata queries are served. Metadata queries can originate from a variety
      # of sources, including Apache Hive, Apache Presto, and Apache Spark.
      #
      # The Dataproc Metastore API defines the following resource model:
      #
      # * The service works with a collection of Google Cloud projects, named:
      # `/projects/*`
      # * Each project has a collection of available locations, named: `/locations/*`
      #   (a location must refer to a Google Cloud `region`)
      # * Each location has a collection of services, named: `/services/*`
      # * Dataproc Metastore services are resources with names of the form:
      #
      #   `/projects/{project_number}/locations/{location_id}/services/{service_id}`.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v1`.
      # @return [DataprocMetastore::Client] A client object for the specified version.
      #
      def self.dataproc_metastore version: :v1, &block
        require "google/cloud/metastore/#{version.to_s.downcase}"

        package_name = Google::Cloud::Metastore
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Metastore.const_get package_name
        package_module.const_get(:DataprocMetastore).const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-metastore library.
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
      #   Additional gRPC headers to be sent with the call.
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
        yield ::Google::Cloud.configure.metastore if block_given?

        ::Google::Cloud.configure.metastore
      end
    end
  end
end

helper_path = ::File.join __dir__, "metastore", "helpers.rb"
require "google/cloud/metastore/helpers" if ::File.file? helper_path
