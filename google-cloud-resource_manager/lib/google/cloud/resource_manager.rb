# frozen_string_literal: true

# Copyright 2025 Google LLC
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
require "google/cloud/resource_manager/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :resource_manager do |config|
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
    module ResourceManager
      ##
      # Create a new client object for Folders.
      #
      # By default, this returns an instance of
      # [Google::Cloud::ResourceManager::V3::Folders::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-resource_manager-v3/latest/Google-Cloud-ResourceManager-V3-Folders-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Folders service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the Folders service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::ResourceManager.folders_available?}.
      #
      # ## About Folders
      #
      # Manages Cloud Platform folder resources.
      # Folders can be used to organize the resources under an
      # organization and to control the policies applied to groups of resources.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.folders version: :v3, transport: :grpc, &block
        require "google/cloud/resource_manager/#{version.to_s.downcase}"

        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::ResourceManager.const_get(package_name).const_get(:Folders)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the Folders service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::ResourceManager.folders}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the Folders service,
      # or if the versioned client gem needs an update to support the Folders service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.folders_available? version: :v3, transport: :grpc
        require "google/cloud/resource_manager/#{version.to_s.downcase}"
        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::ResourceManager.const_get package_name
        return false unless service_module.const_defined? :Folders
        service_module = service_module.const_get :Folders
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for Organizations.
      #
      # By default, this returns an instance of
      # [Google::Cloud::ResourceManager::V3::Organizations::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-resource_manager-v3/latest/Google-Cloud-ResourceManager-V3-Organizations-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Organizations service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the Organizations service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::ResourceManager.organizations_available?}.
      #
      # ## About Organizations
      #
      # Allows users to manage their organization resources.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.organizations version: :v3, transport: :grpc, &block
        require "google/cloud/resource_manager/#{version.to_s.downcase}"

        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::ResourceManager.const_get(package_name).const_get(:Organizations)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the Organizations service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::ResourceManager.organizations}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the Organizations service,
      # or if the versioned client gem needs an update to support the Organizations service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.organizations_available? version: :v3, transport: :grpc
        require "google/cloud/resource_manager/#{version.to_s.downcase}"
        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::ResourceManager.const_get package_name
        return false unless service_module.const_defined? :Organizations
        service_module = service_module.const_get :Organizations
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for Projects.
      #
      # By default, this returns an instance of
      # [Google::Cloud::ResourceManager::V3::Projects::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-resource_manager-v3/latest/Google-Cloud-ResourceManager-V3-Projects-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the Projects service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the Projects service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::ResourceManager.projects_available?}.
      #
      # ## About Projects
      #
      # Manages Google Cloud Projects.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.projects version: :v3, transport: :grpc, &block
        require "google/cloud/resource_manager/#{version.to_s.downcase}"

        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::ResourceManager.const_get(package_name).const_get(:Projects)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the Projects service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::ResourceManager.projects}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the Projects service,
      # or if the versioned client gem needs an update to support the Projects service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.projects_available? version: :v3, transport: :grpc
        require "google/cloud/resource_manager/#{version.to_s.downcase}"
        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::ResourceManager.const_get package_name
        return false unless service_module.const_defined? :Projects
        service_module = service_module.const_get :Projects
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for TagBindings.
      #
      # By default, this returns an instance of
      # [Google::Cloud::ResourceManager::V3::TagBindings::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-resource_manager-v3/latest/Google-Cloud-ResourceManager-V3-TagBindings-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the TagBindings service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the TagBindings service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::ResourceManager.tag_bindings_available?}.
      #
      # ## About TagBindings
      #
      # Allow users to create and manage TagBindings between TagValues and
      # different Google Cloud resources throughout the GCP resource hierarchy.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.tag_bindings version: :v3, transport: :grpc, &block
        require "google/cloud/resource_manager/#{version.to_s.downcase}"

        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::ResourceManager.const_get(package_name).const_get(:TagBindings)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the TagBindings service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::ResourceManager.tag_bindings}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the TagBindings service,
      # or if the versioned client gem needs an update to support the TagBindings service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.tag_bindings_available? version: :v3, transport: :grpc
        require "google/cloud/resource_manager/#{version.to_s.downcase}"
        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::ResourceManager.const_get package_name
        return false unless service_module.const_defined? :TagBindings
        service_module = service_module.const_get :TagBindings
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for TagHolds.
      #
      # By default, this returns an instance of
      # [Google::Cloud::ResourceManager::V3::TagHolds::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-resource_manager-v3/latest/Google-Cloud-ResourceManager-V3-TagHolds-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the TagHolds service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the TagHolds service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::ResourceManager.tag_holds_available?}.
      #
      # ## About TagHolds
      #
      # Allow users to create and manage TagHolds for TagValues. TagHolds represent
      # the use of a Tag Value that is not captured by TagBindings but
      # should still block TagValue deletion (such as a reference in a policy
      # condition). This service provides isolated failure domains by cloud location
      # so that TagHolds can be managed in the same location as their usage.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.tag_holds version: :v3, transport: :grpc, &block
        require "google/cloud/resource_manager/#{version.to_s.downcase}"

        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::ResourceManager.const_get(package_name).const_get(:TagHolds)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the TagHolds service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::ResourceManager.tag_holds}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the TagHolds service,
      # or if the versioned client gem needs an update to support the TagHolds service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.tag_holds_available? version: :v3, transport: :grpc
        require "google/cloud/resource_manager/#{version.to_s.downcase}"
        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::ResourceManager.const_get package_name
        return false unless service_module.const_defined? :TagHolds
        service_module = service_module.const_get :TagHolds
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for TagKeys.
      #
      # By default, this returns an instance of
      # [Google::Cloud::ResourceManager::V3::TagKeys::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-resource_manager-v3/latest/Google-Cloud-ResourceManager-V3-TagKeys-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the TagKeys service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the TagKeys service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::ResourceManager.tag_keys_available?}.
      #
      # ## About TagKeys
      #
      # Allow users to create and manage tag keys.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.tag_keys version: :v3, transport: :grpc, &block
        require "google/cloud/resource_manager/#{version.to_s.downcase}"

        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::ResourceManager.const_get(package_name).const_get(:TagKeys)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the TagKeys service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::ResourceManager.tag_keys}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the TagKeys service,
      # or if the versioned client gem needs an update to support the TagKeys service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.tag_keys_available? version: :v3, transport: :grpc
        require "google/cloud/resource_manager/#{version.to_s.downcase}"
        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::ResourceManager.const_get package_name
        return false unless service_module.const_defined? :TagKeys
        service_module = service_module.const_get :TagKeys
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Create a new client object for TagValues.
      #
      # By default, this returns an instance of
      # [Google::Cloud::ResourceManager::V3::TagValues::Client](https://cloud.google.com/ruby/docs/reference/google-cloud-resource_manager-v3/latest/Google-Cloud-ResourceManager-V3-TagValues-Client)
      # for a gRPC client for version V3 of the API.
      # However, you can specify a different API version by passing it in the
      # `version` parameter. If the TagValues service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      # You can also specify a different transport by passing `:rest` or `:grpc` in
      # the `transport` parameter.
      #
      # Raises an exception if the currently installed versioned client gem for the
      # given API version does not support the given transport of the TagValues service.
      # You can determine whether the method will succeed by calling
      # {Google::Cloud::ResourceManager.tag_values_available?}.
      #
      # ## About TagValues
      #
      # Allow users to create and manage tag values.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [::Object] A client object for the specified version.
      #
      def self.tag_values version: :v3, transport: :grpc, &block
        require "google/cloud/resource_manager/#{version.to_s.downcase}"

        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        service_module = Google::Cloud::ResourceManager.const_get(package_name).const_get(:TagValues)
        service_module = service_module.const_get(:Rest) if transport == :rest
        service_module.const_get(:Client).new(&block)
      end

      ##
      # Determines whether the TagValues service is supported by the current client.
      # If true, you can retrieve a client object by calling {Google::Cloud::ResourceManager.tag_values}.
      # If false, that method will raise an exception. This could happen if the given
      # API version does not exist or does not support the TagValues service,
      # or if the versioned client gem needs an update to support the TagValues service.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v3`.
      # @param transport [:grpc, :rest] The transport to use. Defaults to `:grpc`.
      # @return [boolean] Whether the service is available.
      #
      def self.tag_values_available? version: :v3, transport: :grpc
        require "google/cloud/resource_manager/#{version.to_s.downcase}"
        package_name = Google::Cloud::ResourceManager
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        return false unless package_name
        service_module = Google::Cloud::ResourceManager.const_get package_name
        return false unless service_module.const_defined? :TagValues
        service_module = service_module.const_get :TagValues
        if transport == :rest
          return false unless service_module.const_defined? :Rest
          service_module = service_module.const_get :Rest
        end
        service_module.const_defined? :Client
      rescue ::LoadError
        false
      end

      ##
      # Configure the google-cloud-resource_manager library.
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
        yield ::Google::Cloud.configure.resource_manager if block_given?

        ::Google::Cloud.configure.resource_manager
      end
    end
  end
end

helper_path = ::File.join __dir__, "resource_manager", "helpers.rb"
require "google/cloud/resource_manager/helpers" if ::File.file? helper_path
