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

require "google/cloud/errors"
require "google/cloud/dialogflow/cx/v3/deployment_pb"
require "google/cloud/location"

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          module Deployments
            ##
            # Client for the Deployments service.
            #
            # Service for managing {::Google::Cloud::Dialogflow::CX::V3::Deployment Deployments}.
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "dialogflow.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :deployments_stub

              ##
              # Configure the Deployments Client class.
              #
              # See {::Google::Cloud::Dialogflow::CX::V3::Deployments::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all Deployments clients
              #   ::Google::Cloud::Dialogflow::CX::V3::Deployments::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "Dialogflow", "CX", "V3"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.timeout = 60.0
                  default_config.retry_policy = {
                    initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the Deployments Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Dialogflow::CX::V3::Deployments::Client::Configuration}
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
                @deployments_stub.universe_domain
              end

              ##
              # Create a new Deployments client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Dialogflow::CX::V3::Deployments::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Dialogflow::CX::V3::Deployments::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Deployments client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # These require statements are intentionally placed here to initialize
                # the gRPC module only when it's required.
                # See https://github.com/googleapis/toolkit/issues/446
                require "gapic/grpc"
                require "google/cloud/dialogflow/cx/v3/deployment_services_pb"

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

                @deployments_stub = ::Gapic::ServiceStub.new(
                  ::Google::Cloud::Dialogflow::CX::V3::Deployments::Stub,
                  credentials: credentials,
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  channel_args: @config.channel_args,
                  interceptors: @config.interceptors,
                  channel_pool_config: @config.channel_pool
                )

                @location_client = Google::Cloud::Location::Locations::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @deployments_stub.endpoint
                  config.universe_domain = @deployments_stub.universe_domain
                end
              end

              ##
              # Get the associated client for mix-in of the Locations.
              #
              # @return [Google::Cloud::Location::Locations::Client]
              #
              attr_reader :location_client

              # Service calls

              ##
              # Returns the list of all deployments in the specified
              # {::Google::Cloud::Dialogflow::CX::V3::Environment Environment}.
              #
              # @overload list_deployments(request, options = nil)
              #   Pass arguments to `list_deployments` via a request object, either of type
              #   {::Google::Cloud::Dialogflow::CX::V3::ListDeploymentsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dialogflow::CX::V3::ListDeploymentsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload list_deployments(parent: nil, page_size: nil, page_token: nil)
              #   Pass arguments to `list_deployments` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. The {::Google::Cloud::Dialogflow::CX::V3::Environment Environment} to
              #     list all environments for. Format: `projects/<Project
              #     ID>/locations/<Location ID>/agents/<Agent ID>/environments/<Environment
              #     ID>`.
              #   @param page_size [::Integer]
              #     The maximum number of items to return in a single page. By default 20 and
              #     at most 100.
              #   @param page_token [::String]
              #     The next_page_token value returned from a previous list request.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Gapic::PagedEnumerable<::Google::Cloud::Dialogflow::CX::V3::Deployment>]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Gapic::PagedEnumerable<::Google::Cloud::Dialogflow::CX::V3::Deployment>]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dialogflow/cx/v3"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dialogflow::CX::V3::Deployments::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dialogflow::CX::V3::ListDeploymentsRequest.new
              #
              #   # Call the list_deployments method.
              #   result = client.list_deployments request
              #
              #   # The returned object is of type Gapic::PagedEnumerable. You can iterate
              #   # over elements, and API calls will be issued to fetch pages as needed.
              #   result.each do |item|
              #     # Each element is of type ::Google::Cloud::Dialogflow::CX::V3::Deployment.
              #     p item
              #   end
              #
              def list_deployments request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dialogflow::CX::V3::ListDeploymentsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.list_deployments.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dialogflow::CX::V3::VERSION
                metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.parent
                  header_params["parent"] = request.parent
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.list_deployments.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.list_deployments.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @deployments_stub.call_rpc :list_deployments, request, options: options do |response, operation|
                  response = ::Gapic::PagedEnumerable.new @deployments_stub, :list_deployments, request, response, operation, options
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Retrieves the specified
              # {::Google::Cloud::Dialogflow::CX::V3::Deployment Deployment}.
              #
              # @overload get_deployment(request, options = nil)
              #   Pass arguments to `get_deployment` via a request object, either of type
              #   {::Google::Cloud::Dialogflow::CX::V3::GetDeploymentRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dialogflow::CX::V3::GetDeploymentRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
              #
              # @overload get_deployment(name: nil)
              #   Pass arguments to `get_deployment` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. The name of the
              #     {::Google::Cloud::Dialogflow::CX::V3::Deployment Deployment}. Format:
              #     `projects/<Project ID>/locations/<Location ID>/agents/<Agent
              #     ID>/environments/<Environment ID>/deployments/<Deployment ID>`.
              #
              # @yield [response, operation] Access the result along with the RPC operation
              # @yieldparam response [::Google::Cloud::Dialogflow::CX::V3::Deployment]
              # @yieldparam operation [::GRPC::ActiveCall::Operation]
              #
              # @return [::Google::Cloud::Dialogflow::CX::V3::Deployment]
              #
              # @raise [::Google::Cloud::Error] if the RPC is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dialogflow/cx/v3"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dialogflow::CX::V3::Deployments::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dialogflow::CX::V3::GetDeploymentRequest.new
              #
              #   # Call the get_deployment method.
              #   result = client.get_deployment request
              #
              #   # The returned object is of type Google::Cloud::Dialogflow::CX::V3::Deployment.
              #   p result
              #
              def get_deployment request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dialogflow::CX::V3::GetDeploymentRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                metadata = @config.rpcs.get_deployment.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dialogflow::CX::V3::VERSION
                metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                header_params = {}
                if request.name
                  header_params["name"] = request.name
                end

                request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
                metadata[:"x-goog-request-params"] ||= request_params_header

                options.apply_defaults timeout:      @config.rpcs.get_deployment.timeout,
                                       metadata:     metadata,
                                       retry_policy: @config.rpcs.get_deployment.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @deployments_stub.call_rpc :get_deployment, request, options: options do |response, operation|
                  yield response, operation if block_given?
                  return response
                end
              rescue ::GRPC::BadStatus => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the Deployments API.
              #
              # This class represents the configuration for Deployments,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Dialogflow::CX::V3::Deployments::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # list_deployments to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Dialogflow::CX::V3::Deployments::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_deployments.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Dialogflow::CX::V3::Deployments::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_deployments.timeout = 20.0
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
              #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
              #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
              #    *  (`nil`) indicating no credentials
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
              # @!attribute [rw] channel_args
              #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
              #   `GRPC::Core::Channel` object is provided as the credential.
              #   @return [::Hash]
              # @!attribute [rw] interceptors
              #   An array of interceptors that are run before calls are executed.
              #   @return [::Array<::GRPC::ClientInterceptor>]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional gRPC headers to be sent with the call.
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
              #
              class Configuration
                extend ::Gapic::Config

                # @private
                # The endpoint specific to the default "googleapis.com" universe. Deprecated.
                DEFAULT_ENDPOINT = "dialogflow.googleapis.com"

                config_attr :endpoint,      nil, ::String, nil
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr(:channel_args,  { "grpc.service_config_disable_resolution" => 1 }, ::Hash, nil)
                config_attr :interceptors,  nil, ::Array, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil
                config_attr :universe_domain, nil, ::String, nil

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
                # Configuration for the channel pool
                # @return [::Gapic::ServiceStub::ChannelPool::Configuration]
                #
                def channel_pool
                  @channel_pool ||= ::Gapic::ServiceStub::ChannelPool::Configuration.new
                end

                ##
                # Configuration RPC class for the Deployments API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
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
                  # RPC-specific configuration for `list_deployments`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_deployments
                  ##
                  # RPC-specific configuration for `get_deployment`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_deployment

                  # @private
                  def initialize parent_rpcs = nil
                    list_deployments_config = parent_rpcs.list_deployments if parent_rpcs.respond_to? :list_deployments
                    @list_deployments = ::Gapic::Config::Method.new list_deployments_config
                    get_deployment_config = parent_rpcs.get_deployment if parent_rpcs.respond_to? :get_deployment
                    @get_deployment = ::Gapic::Config::Method.new get_deployment_config

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
