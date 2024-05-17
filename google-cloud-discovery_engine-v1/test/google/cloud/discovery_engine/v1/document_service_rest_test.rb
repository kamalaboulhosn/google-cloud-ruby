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
require "google/cloud/discoveryengine/v1/document_service_pb"
require "google/cloud/discovery_engine/v1/document_service/rest"


class ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
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
  end

  def test_get_document
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1::Document.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_document_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::ServiceStub.stub :transcode_get_document_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_document_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_document({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_document name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_document ::Google::Cloud::DiscoveryEngine::V1::GetDocumentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_document({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_document(::Google::Cloud::DiscoveryEngine::V1::GetDocumentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_document_client_stub.call_count
      end
    end
  end

  def test_list_documents
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1::ListDocumentsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_documents_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::ServiceStub.stub :transcode_list_documents_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_documents_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_documents({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_documents parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_documents ::Google::Cloud::DiscoveryEngine::V1::ListDocumentsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_documents({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_documents(::Google::Cloud::DiscoveryEngine::V1::ListDocumentsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_documents_client_stub.call_count
      end
    end
  end

  def test_create_document
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1::Document.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    document = {}
    document_id = "hello world"

    create_document_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::ServiceStub.stub :transcode_create_document_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_document_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_document({ parent: parent, document: document, document_id: document_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_document parent: parent, document: document, document_id: document_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_document ::Google::Cloud::DiscoveryEngine::V1::CreateDocumentRequest.new(parent: parent, document: document, document_id: document_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_document({ parent: parent, document: document, document_id: document_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_document(::Google::Cloud::DiscoveryEngine::V1::CreateDocumentRequest.new(parent: parent, document: document, document_id: document_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_document_client_stub.call_count
      end
    end
  end

  def test_update_document
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1::Document.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    document = {}
    allow_missing = true
    update_mask = {}

    update_document_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::ServiceStub.stub :transcode_update_document_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_document_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_document({ document: document, allow_missing: allow_missing, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_document document: document, allow_missing: allow_missing, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_document ::Google::Cloud::DiscoveryEngine::V1::UpdateDocumentRequest.new(document: document, allow_missing: allow_missing, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_document({ document: document, allow_missing: allow_missing, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_document(::Google::Cloud::DiscoveryEngine::V1::UpdateDocumentRequest.new(document: document, allow_missing: allow_missing, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_document_client_stub.call_count
      end
    end
  end

  def test_delete_document
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_document_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::ServiceStub.stub :transcode_delete_document_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_document_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_document({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_document name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_document ::Google::Cloud::DiscoveryEngine::V1::DeleteDocumentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_document({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_document(::Google::Cloud::DiscoveryEngine::V1::DeleteDocumentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_document_client_stub.call_count
      end
    end
  end

  def test_import_documents
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    inline_source = {}
    parent = "hello world"
    error_config = {}
    reconciliation_mode = :RECONCILIATION_MODE_UNSPECIFIED
    update_mask = {}
    auto_generate_ids = true
    id_field = "hello world"

    import_documents_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::ServiceStub.stub :transcode_import_documents_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, import_documents_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.import_documents({ inline_source: inline_source, parent: parent, error_config: error_config, reconciliation_mode: reconciliation_mode, update_mask: update_mask, auto_generate_ids: auto_generate_ids, id_field: id_field }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.import_documents inline_source: inline_source, parent: parent, error_config: error_config, reconciliation_mode: reconciliation_mode, update_mask: update_mask, auto_generate_ids: auto_generate_ids, id_field: id_field do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.import_documents ::Google::Cloud::DiscoveryEngine::V1::ImportDocumentsRequest.new(inline_source: inline_source, parent: parent, error_config: error_config, reconciliation_mode: reconciliation_mode, update_mask: update_mask, auto_generate_ids: auto_generate_ids, id_field: id_field) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.import_documents({ inline_source: inline_source, parent: parent, error_config: error_config, reconciliation_mode: reconciliation_mode, update_mask: update_mask, auto_generate_ids: auto_generate_ids, id_field: id_field }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.import_documents(::Google::Cloud::DiscoveryEngine::V1::ImportDocumentsRequest.new(inline_source: inline_source, parent: parent, error_config: error_config, reconciliation_mode: reconciliation_mode, update_mask: update_mask, auto_generate_ids: auto_generate_ids, id_field: id_field), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, import_documents_client_stub.call_count
      end
    end
  end

  def test_purge_documents
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    force = true

    purge_documents_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::ServiceStub.stub :transcode_purge_documents_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, purge_documents_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.purge_documents({ parent: parent, filter: filter, force: force }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.purge_documents parent: parent, filter: filter, force: force do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.purge_documents ::Google::Cloud::DiscoveryEngine::V1::PurgeDocumentsRequest.new(parent: parent, filter: filter, force: force) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.purge_documents({ parent: parent, filter: filter, force: force }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.purge_documents(::Google::Cloud::DiscoveryEngine::V1::PurgeDocumentsRequest.new(parent: parent, filter: filter, force: force), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, purge_documents_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::DocumentService::Rest::Client::Configuration, config
  end
end
