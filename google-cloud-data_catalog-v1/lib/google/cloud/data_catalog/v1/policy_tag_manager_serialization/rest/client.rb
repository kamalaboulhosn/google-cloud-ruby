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
require "google/cloud/datacatalog/v1/policytagmanagerserialization_pb"
require "google/cloud/data_catalog/v1/policy_tag_manager_serialization/rest/service_stub"
require "google/iam/v1/rest"

module Google
  module Cloud
    module DataCatalog
      module V1
        module PolicyTagManagerSerialization
          module Rest
            ##
            # REST client for the PolicyTagManagerSerialization service.
            #
            # Policy Tag Manager Serialization API service allows you to manipulate
            # your policy tags and taxonomies in a serialized format.
            #
            # Taxonomy is a hierarchical group of policy tags.
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "datacatalog.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :policy_tag_manager_serialization_stub

              ##
              # Configure the PolicyTagManagerSerialization Client class.
              #
              # See {::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all PolicyTagManagerSerialization clients
              #   ::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Rest::Client.configure do |config|
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
                  namespace = ["Google", "Cloud", "DataCatalog", "V1"]
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
              # Configure the PolicyTagManagerSerialization Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Rest::Client::Configuration}
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
                @policy_tag_manager_serialization_stub.universe_domain
              end

              ##
              # Create a new PolicyTagManagerSerialization REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the PolicyTagManagerSerialization client.
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

                @policy_tag_manager_serialization_stub = ::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials,
                  logger: @config.logger
                )

                @policy_tag_manager_serialization_stub.logger(stub: true)&.info do |entry|
                  entry.set_system_name
                  entry.set_service
                  entry.message = "Created client for #{entry.service}"
                  entry.set_credentials_fields credentials
                  entry.set "customEndpoint", @config.endpoint if @config.endpoint
                  entry.set "defaultTimeout", @config.timeout if @config.timeout
                  entry.set "quotaProject", @quota_project_id if @quota_project_id
                end

                @iam_policy_client = Google::Iam::V1::IAMPolicy::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @policy_tag_manager_serialization_stub.endpoint
                  config.universe_domain = @policy_tag_manager_serialization_stub.universe_domain
                  config.logger = @policy_tag_manager_serialization_stub.logger if config.respond_to? :logger=
                end
              end

              ##
              # Get the associated client for mix-in of the IAMPolicy.
              #
              # @return [Google::Iam::V1::IAMPolicy::Rest::Client]
              #
              attr_reader :iam_policy_client

              ##
              # The logger used for request/response debug logging.
              #
              # @return [Logger]
              #
              def logger
                @policy_tag_manager_serialization_stub.logger
              end

              # Service calls

              ##
              # Replaces (updates) a taxonomy and all its policy tags.
              #
              # The taxonomy and its entire hierarchy of policy tags must be
              # represented literally by `SerializedTaxonomy` and the nested
              # `SerializedPolicyTag` messages.
              #
              # This operation automatically does the following:
              #
              # - Deletes the existing policy tags that are missing from the
              #   `SerializedPolicyTag`.
              # - Creates policy tags that don't have resource names. They are considered
              #   new.
              # - Updates policy tags with valid resources names accordingly.
              #
              # @overload replace_taxonomy(request, options = nil)
              #   Pass arguments to `replace_taxonomy` via a request object, either of type
              #   {::Google::Cloud::DataCatalog::V1::ReplaceTaxonomyRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DataCatalog::V1::ReplaceTaxonomyRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload replace_taxonomy(name: nil, serialized_taxonomy: nil)
              #   Pass arguments to `replace_taxonomy` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. Resource name of the taxonomy to update.
              #   @param serialized_taxonomy [::Google::Cloud::DataCatalog::V1::SerializedTaxonomy, ::Hash]
              #     Required. Taxonomy to update along with its child policy tags.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::DataCatalog::V1::Taxonomy]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::DataCatalog::V1::Taxonomy]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/data_catalog/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::DataCatalog::V1::ReplaceTaxonomyRequest.new
              #
              #   # Call the replace_taxonomy method.
              #   result = client.replace_taxonomy request
              #
              #   # The returned object is of type Google::Cloud::DataCatalog::V1::Taxonomy.
              #   p result
              #
              def replace_taxonomy request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DataCatalog::V1::ReplaceTaxonomyRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.replace_taxonomy.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DataCatalog::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.replace_taxonomy.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.replace_taxonomy.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @policy_tag_manager_serialization_stub.replace_taxonomy request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Creates new taxonomies (including their policy tags) in a given project
              # by importing from inlined or cross-regional sources.
              #
              # For a cross-regional source, new taxonomies are created by copying
              # from a source in another region.
              #
              # For an inlined source, taxonomies and policy tags are created in bulk using
              # nested protocol buffer structures.
              #
              # @overload import_taxonomies(request, options = nil)
              #   Pass arguments to `import_taxonomies` via a request object, either of type
              #   {::Google::Cloud::DataCatalog::V1::ImportTaxonomiesRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DataCatalog::V1::ImportTaxonomiesRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload import_taxonomies(parent: nil, inline_source: nil, cross_regional_source: nil)
              #   Pass arguments to `import_taxonomies` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. Resource name of project that the imported taxonomies will belong
              #     to.
              #   @param inline_source [::Google::Cloud::DataCatalog::V1::InlineSource, ::Hash]
              #     Inline source taxonomy to import.
              #
              #     Note: The following fields are mutually exclusive: `inline_source`, `cross_regional_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
              #   @param cross_regional_source [::Google::Cloud::DataCatalog::V1::CrossRegionalSource, ::Hash]
              #     Cross-regional source taxonomy to import.
              #
              #     Note: The following fields are mutually exclusive: `cross_regional_source`, `inline_source`. If a field in that set is populated, all other fields in the set will automatically be cleared.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::DataCatalog::V1::ImportTaxonomiesResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::DataCatalog::V1::ImportTaxonomiesResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/data_catalog/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::DataCatalog::V1::ImportTaxonomiesRequest.new
              #
              #   # Call the import_taxonomies method.
              #   result = client.import_taxonomies request
              #
              #   # The returned object is of type Google::Cloud::DataCatalog::V1::ImportTaxonomiesResponse.
              #   p result
              #
              def import_taxonomies request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DataCatalog::V1::ImportTaxonomiesRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.import_taxonomies.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DataCatalog::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.import_taxonomies.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.import_taxonomies.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @policy_tag_manager_serialization_stub.import_taxonomies request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Exports taxonomies in the requested type and returns them,
              # including their policy tags. The requested taxonomies must belong to the
              # same project.
              #
              # This method generates `SerializedTaxonomy` protocol buffers with nested
              # policy tags that can be used as input for `ImportTaxonomies` calls.
              #
              # @overload export_taxonomies(request, options = nil)
              #   Pass arguments to `export_taxonomies` via a request object, either of type
              #   {::Google::Cloud::DataCatalog::V1::ExportTaxonomiesRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::DataCatalog::V1::ExportTaxonomiesRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload export_taxonomies(parent: nil, taxonomies: nil, serialized_taxonomies: nil)
              #   Pass arguments to `export_taxonomies` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. Resource name of the project that the exported taxonomies belong
              #     to.
              #   @param taxonomies [::Array<::String>]
              #     Required. Resource names of the taxonomies to export.
              #   @param serialized_taxonomies [::Boolean]
              #     Serialized export taxonomies that contain all the policy
              #     tags as nested protocol buffers.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::DataCatalog::V1::ExportTaxonomiesResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::DataCatalog::V1::ExportTaxonomiesResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/data_catalog/v1"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::DataCatalog::V1::ExportTaxonomiesRequest.new
              #
              #   # Call the export_taxonomies method.
              #   result = client.export_taxonomies request
              #
              #   # The returned object is of type Google::Cloud::DataCatalog::V1::ExportTaxonomiesResponse.
              #   p result
              #
              def export_taxonomies request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::DataCatalog::V1::ExportTaxonomiesRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.export_taxonomies.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::DataCatalog::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.export_taxonomies.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.export_taxonomies.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @policy_tag_manager_serialization_stub.export_taxonomies request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the PolicyTagManagerSerialization REST API.
              #
              # This class represents the configuration for PolicyTagManagerSerialization REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # replace_taxonomy to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.replace_taxonomy.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::DataCatalog::V1::PolicyTagManagerSerialization::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.replace_taxonomy.timeout = 20.0
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
                DEFAULT_ENDPOINT = "datacatalog.googleapis.com"

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
                # Configuration RPC class for the PolicyTagManagerSerialization API.
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
                  # RPC-specific configuration for `replace_taxonomy`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :replace_taxonomy
                  ##
                  # RPC-specific configuration for `import_taxonomies`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :import_taxonomies
                  ##
                  # RPC-specific configuration for `export_taxonomies`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :export_taxonomies

                  # @private
                  def initialize parent_rpcs = nil
                    replace_taxonomy_config = parent_rpcs.replace_taxonomy if parent_rpcs.respond_to? :replace_taxonomy
                    @replace_taxonomy = ::Gapic::Config::Method.new replace_taxonomy_config
                    import_taxonomies_config = parent_rpcs.import_taxonomies if parent_rpcs.respond_to? :import_taxonomies
                    @import_taxonomies = ::Gapic::Config::Method.new import_taxonomies_config
                    export_taxonomies_config = parent_rpcs.export_taxonomies if parent_rpcs.respond_to? :export_taxonomies
                    @export_taxonomies = ::Gapic::Config::Method.new export_taxonomies_config

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
