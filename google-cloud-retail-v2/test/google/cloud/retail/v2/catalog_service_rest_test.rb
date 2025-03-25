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

require "helper"
require "gapic/rest"
require "google/cloud/retail/v2/catalog_service_pb"
require "google/cloud/retail/v2/catalog_service/rest"


class ::Google::Cloud::Retail::V2::CatalogService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_list_catalogs
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::ListCatalogsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_catalogs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CatalogService::Rest::ServiceStub.stub :transcode_list_catalogs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_catalogs_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_catalogs({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_catalogs parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_catalogs ::Google::Cloud::Retail::V2::ListCatalogsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_catalogs({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_catalogs(::Google::Cloud::Retail::V2::ListCatalogsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_catalogs_client_stub.call_count
      end
    end
  end

  def test_update_catalog
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::Catalog.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    catalog = {}
    update_mask = {}

    update_catalog_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CatalogService::Rest::ServiceStub.stub :transcode_update_catalog_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_catalog_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_catalog({ catalog: catalog, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_catalog catalog: catalog, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_catalog ::Google::Cloud::Retail::V2::UpdateCatalogRequest.new(catalog: catalog, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_catalog({ catalog: catalog, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_catalog(::Google::Cloud::Retail::V2::UpdateCatalogRequest.new(catalog: catalog, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_catalog_client_stub.call_count
      end
    end
  end

  def test_set_default_branch
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    catalog = "hello world"
    branch_id = "hello world"
    note = "hello world"
    force = true

    set_default_branch_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CatalogService::Rest::ServiceStub.stub :transcode_set_default_branch_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_default_branch_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.set_default_branch({ catalog: catalog, branch_id: branch_id, note: note, force: force }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.set_default_branch catalog: catalog, branch_id: branch_id, note: note, force: force do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.set_default_branch ::Google::Cloud::Retail::V2::SetDefaultBranchRequest.new(catalog: catalog, branch_id: branch_id, note: note, force: force) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_default_branch({ catalog: catalog, branch_id: branch_id, note: note, force: force }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_default_branch(::Google::Cloud::Retail::V2::SetDefaultBranchRequest.new(catalog: catalog, branch_id: branch_id, note: note, force: force), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_default_branch_client_stub.call_count
      end
    end
  end

  def test_get_default_branch
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::GetDefaultBranchResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    catalog = "hello world"

    get_default_branch_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CatalogService::Rest::ServiceStub.stub :transcode_get_default_branch_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_default_branch_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_default_branch({ catalog: catalog }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_default_branch catalog: catalog do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_default_branch ::Google::Cloud::Retail::V2::GetDefaultBranchRequest.new(catalog: catalog) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_default_branch({ catalog: catalog }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_default_branch(::Google::Cloud::Retail::V2::GetDefaultBranchRequest.new(catalog: catalog), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_default_branch_client_stub.call_count
      end
    end
  end

  def test_get_completion_config
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::CompletionConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_completion_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CatalogService::Rest::ServiceStub.stub :transcode_get_completion_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_completion_config_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_completion_config({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_completion_config name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_completion_config ::Google::Cloud::Retail::V2::GetCompletionConfigRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_completion_config({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_completion_config(::Google::Cloud::Retail::V2::GetCompletionConfigRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_completion_config_client_stub.call_count
      end
    end
  end

  def test_update_completion_config
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::CompletionConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    completion_config = {}
    update_mask = {}

    update_completion_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CatalogService::Rest::ServiceStub.stub :transcode_update_completion_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_completion_config_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_completion_config({ completion_config: completion_config, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_completion_config completion_config: completion_config, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_completion_config ::Google::Cloud::Retail::V2::UpdateCompletionConfigRequest.new(completion_config: completion_config, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_completion_config({ completion_config: completion_config, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_completion_config(::Google::Cloud::Retail::V2::UpdateCompletionConfigRequest.new(completion_config: completion_config, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_completion_config_client_stub.call_count
      end
    end
  end

  def test_get_attributes_config
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::AttributesConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_attributes_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CatalogService::Rest::ServiceStub.stub :transcode_get_attributes_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_attributes_config_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_attributes_config({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_attributes_config name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_attributes_config ::Google::Cloud::Retail::V2::GetAttributesConfigRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_attributes_config({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_attributes_config(::Google::Cloud::Retail::V2::GetAttributesConfigRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_attributes_config_client_stub.call_count
      end
    end
  end

  def test_update_attributes_config
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::AttributesConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    attributes_config = {}
    update_mask = {}

    update_attributes_config_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CatalogService::Rest::ServiceStub.stub :transcode_update_attributes_config_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_attributes_config_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_attributes_config({ attributes_config: attributes_config, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_attributes_config attributes_config: attributes_config, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_attributes_config ::Google::Cloud::Retail::V2::UpdateAttributesConfigRequest.new(attributes_config: attributes_config, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_attributes_config({ attributes_config: attributes_config, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_attributes_config(::Google::Cloud::Retail::V2::UpdateAttributesConfigRequest.new(attributes_config: attributes_config, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_attributes_config_client_stub.call_count
      end
    end
  end

  def test_add_catalog_attribute
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::AttributesConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    attributes_config = "hello world"
    catalog_attribute = {}

    add_catalog_attribute_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CatalogService::Rest::ServiceStub.stub :transcode_add_catalog_attribute_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, add_catalog_attribute_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.add_catalog_attribute({ attributes_config: attributes_config, catalog_attribute: catalog_attribute }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.add_catalog_attribute attributes_config: attributes_config, catalog_attribute: catalog_attribute do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.add_catalog_attribute ::Google::Cloud::Retail::V2::AddCatalogAttributeRequest.new(attributes_config: attributes_config, catalog_attribute: catalog_attribute) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.add_catalog_attribute({ attributes_config: attributes_config, catalog_attribute: catalog_attribute }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.add_catalog_attribute(::Google::Cloud::Retail::V2::AddCatalogAttributeRequest.new(attributes_config: attributes_config, catalog_attribute: catalog_attribute), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, add_catalog_attribute_client_stub.call_count
      end
    end
  end

  def test_remove_catalog_attribute
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::AttributesConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    attributes_config = "hello world"
    key = "hello world"

    remove_catalog_attribute_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CatalogService::Rest::ServiceStub.stub :transcode_remove_catalog_attribute_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, remove_catalog_attribute_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.remove_catalog_attribute({ attributes_config: attributes_config, key: key }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.remove_catalog_attribute attributes_config: attributes_config, key: key do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.remove_catalog_attribute ::Google::Cloud::Retail::V2::RemoveCatalogAttributeRequest.new(attributes_config: attributes_config, key: key) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.remove_catalog_attribute({ attributes_config: attributes_config, key: key }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.remove_catalog_attribute(::Google::Cloud::Retail::V2::RemoveCatalogAttributeRequest.new(attributes_config: attributes_config, key: key), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, remove_catalog_attribute_client_stub.call_count
      end
    end
  end

  def test_replace_catalog_attribute
    # Create test objects.
    client_result = ::Google::Cloud::Retail::V2::AttributesConfig.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    attributes_config = "hello world"
    catalog_attribute = {}
    update_mask = {}

    replace_catalog_attribute_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Retail::V2::CatalogService::Rest::ServiceStub.stub :transcode_replace_catalog_attribute_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, replace_catalog_attribute_client_stub do
        # Create client
        client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.replace_catalog_attribute({ attributes_config: attributes_config, catalog_attribute: catalog_attribute, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.replace_catalog_attribute attributes_config: attributes_config, catalog_attribute: catalog_attribute, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.replace_catalog_attribute ::Google::Cloud::Retail::V2::ReplaceCatalogAttributeRequest.new(attributes_config: attributes_config, catalog_attribute: catalog_attribute, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.replace_catalog_attribute({ attributes_config: attributes_config, catalog_attribute: catalog_attribute, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.replace_catalog_attribute(::Google::Cloud::Retail::V2::ReplaceCatalogAttributeRequest.new(attributes_config: attributes_config, catalog_attribute: catalog_attribute, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, replace_catalog_attribute_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Retail::V2::CatalogService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Retail::V2::CatalogService::Rest::Client::Configuration, config
  end
end
