# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "google/cloud/errors"
require "google/dataflow/v1beta3/snapshots_pb"
require "google/cloud/dataflow/v1beta3/snapshots/rest/service_stub"

module Google
  module Cloud
    module Dataflow
      module V1beta3
        module Snapshots
          module Rest
            ##
            # REST client for the Snapshots service.
            #
            # Provides methods to manage snapshots of Google Cloud Dataflow jobs.
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "dataflow.$UNIVERSE_DOMAIN$"

              # @private
              attr_reader :snapshots_stub

              ##
              # Configure the Snapshots Client class.
              #
              # See {::Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all Snapshots clients
              #   ::Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "Dataflow", "V1beta3"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.timeout = 60.0

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the Snapshots Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # The effective universe domain
              #
              # @return [String]
              #
              def universe_domain
                @snapshots_stub.universe_domain
              end

              ##
              # Create a new Snapshots REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Snapshots client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint.nil? ||
                                         (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-"))
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @snapshots_stub = ::Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials,
                  logger: @config.logger
                )

                @snapshots_stub.logger(stub: true)&.info do |entry|
                  entry.set_system_name
                  entry.set_service
                  entry.message = "Created client for #{entry.service}"
                  entry.set_credentials_fields credentials
                  entry.set "customEndpoint", @config.endpoint if @config.endpoint
                  entry.set "defaultTimeout", @config.timeout if @config.timeout
                  entry.set "quotaProject", @quota_project_id if @quota_project_id
                end
              end

              ##
              # The logger used for request/response debug logging.
              #
              # @return [Logger]
              #
              def logger
                @snapshots_stub.logger
              end

              # Service calls

              ##
              # Gets information about a snapshot.
              #
              # @overload get_snapshot(request, options = nil)
              #   Pass arguments to `get_snapshot` via a request object, either of type
              #   {::Google::Cloud::Dataflow::V1beta3::GetSnapshotRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataflow::V1beta3::GetSnapshotRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload get_snapshot(project_id: nil, snapshot_id: nil, location: nil)
              #   Pass arguments to `get_snapshot` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param project_id [::String]
              #     The ID of the Cloud Platform project that the snapshot belongs to.
              #   @param snapshot_id [::String]
              #     The ID of the snapshot.
              #   @param location [::String]
              #     The location that contains this snapshot.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataflow::V1beta3::Snapshot]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataflow::V1beta3::Snapshot]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dataflow/v1beta3"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dataflow::V1beta3::GetSnapshotRequest.new
              #
              #   # Call the get_snapshot method.
              #   result = client.get_snapshot request
              #
              #   # The returned object is of type Google::Cloud::Dataflow::V1beta3::Snapshot.
              #   p result
              #
              def get_snapshot request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataflow::V1beta3::GetSnapshotRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.get_snapshot.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataflow::V1beta3::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.get_snapshot.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.get_snapshot.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @snapshots_stub.get_snapshot request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Deletes a snapshot.
              #
              # @overload delete_snapshot(request, options = nil)
              #   Pass arguments to `delete_snapshot` via a request object, either of type
              #   {::Google::Cloud::Dataflow::V1beta3::DeleteSnapshotRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataflow::V1beta3::DeleteSnapshotRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload delete_snapshot(project_id: nil, snapshot_id: nil, location: nil)
              #   Pass arguments to `delete_snapshot` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param project_id [::String]
              #     The ID of the Cloud Platform project that the snapshot belongs to.
              #   @param snapshot_id [::String]
              #     The ID of the snapshot.
              #   @param location [::String]
              #     The location that contains this snapshot.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataflow::V1beta3::DeleteSnapshotResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataflow::V1beta3::DeleteSnapshotResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dataflow/v1beta3"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dataflow::V1beta3::DeleteSnapshotRequest.new
              #
              #   # Call the delete_snapshot method.
              #   result = client.delete_snapshot request
              #
              #   # The returned object is of type Google::Cloud::Dataflow::V1beta3::DeleteSnapshotResponse.
              #   p result
              #
              def delete_snapshot request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataflow::V1beta3::DeleteSnapshotRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.delete_snapshot.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataflow::V1beta3::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.delete_snapshot.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.delete_snapshot.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @snapshots_stub.delete_snapshot request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Lists snapshots.
              #
              # @overload list_snapshots(request, options = nil)
              #   Pass arguments to `list_snapshots` via a request object, either of type
              #   {::Google::Cloud::Dataflow::V1beta3::ListSnapshotsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dataflow::V1beta3::ListSnapshotsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload list_snapshots(project_id: nil, job_id: nil, location: nil)
              #   Pass arguments to `list_snapshots` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param project_id [::String]
              #     The project ID to list snapshots for.
              #   @param job_id [::String]
              #     If specified, list snapshots created from this job.
              #   @param location [::String]
              #     The location to list snapshots in.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dataflow::V1beta3::ListSnapshotsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dataflow::V1beta3::ListSnapshotsResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dataflow/v1beta3"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dataflow::V1beta3::ListSnapshotsRequest.new
              #
              #   # Call the list_snapshots method.
              #   result = client.list_snapshots request
              #
              #   # The returned object is of type Google::Cloud::Dataflow::V1beta3::ListSnapshotsResponse.
              #   p result
              #
              def list_snapshots request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dataflow::V1beta3::ListSnapshotsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.list_snapshots.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dataflow::V1beta3::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.list_snapshots.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.list_snapshots.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @snapshots_stub.list_snapshots request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the Snapshots REST API.
              #
              # This class represents the configuration for Snapshots REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # get_snapshot to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.get_snapshot.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Dataflow::V1beta3::Snapshots::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.get_snapshot.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   A custom service endpoint, as a hostname or hostname:port. The default is
              #   nil, indicating to use the default endpoint in the current universe domain.
              #   @return [::String,nil]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
              #    *  (`nil`) indicating no credentials
              #
              #   Warning: If you accept a credential configuration (JSON file or Hash) from an
              #   external source for authentication to Google Cloud, you must validate it before
              #   providing it to a Google API client library. Providing an unvalidated credential
              #   configuration to Google APIs can compromise the security of your systems and data.
              #   For more information, refer to [Validate credential configurations from external
              #   sources](https://cloud.google.com/docs/authentication/external/externally-sourced-credentials).
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              # @!attribute [rw] universe_domain
              #   The universe domain within which to make requests. This determines the
              #   default endpoint URL. The default value of nil uses the environment
              #   universe (usually the default "googleapis.com" universe).
              #   @return [::String,nil]
              # @!attribute [rw] logger
              #   A custom logger to use for request/response debug logging, or the value
              #   `:default` (the default) to construct a default logger, or `nil` to
              #   explicitly disable logging.
              #   @return [::Logger,:default,nil]
              #
              class Configuration
                extend ::Gapic::Config

                # @private
                # The endpoint specific to the default "googleapis.com" universe. Deprecated.
                DEFAULT_ENDPOINT = "dataflow.googleapis.com"

                config_attr :endpoint,      nil, ::String, nil
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil
                config_attr :universe_domain, nil, ::String, nil
                config_attr :logger, :default, ::Logger, nil, :default

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the Snapshots API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `get_snapshot`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_snapshot
                  ##
                  # RPC-specific configuration for `delete_snapshot`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_snapshot
                  ##
                  # RPC-specific configuration for `list_snapshots`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_snapshots

                  # @private
                  def initialize parent_rpcs = nil
                    get_snapshot_config = parent_rpcs.get_snapshot if parent_rpcs.respond_to? :get_snapshot
                    @get_snapshot = ::Gapic::Config::Method.new get_snapshot_config
                    delete_snapshot_config = parent_rpcs.delete_snapshot if parent_rpcs.respond_to? :delete_snapshot
                    @delete_snapshot = ::Gapic::Config::Method.new delete_snapshot_config
                    list_snapshots_config = parent_rpcs.list_snapshots if parent_rpcs.respond_to? :list_snapshots
                    @list_snapshots = ::Gapic::Config::Method.new list_snapshots_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
