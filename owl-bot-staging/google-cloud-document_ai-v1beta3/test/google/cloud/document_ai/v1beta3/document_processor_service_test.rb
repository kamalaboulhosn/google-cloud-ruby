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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/documentai/v1beta3/document_processor_service_pb"
require "google/cloud/documentai/v1beta3/document_processor_service_services_pb"
require "google/cloud/document_ai/v1beta3/document_processor_service"

class ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_process_document
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DocumentAI::V1beta3::ProcessResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    inline_document = {}
    name = "hello world"
    document = {}
    skip_human_review = true

    process_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :process_document, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::ProcessRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1beta3::Document), request["inline_document"]
      assert_equal :inline_document, request.source
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1beta3::Document), request["document"]
      assert_equal true, request["skip_human_review"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, process_document_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.process_document({ inline_document: inline_document, name: name, document: document, skip_human_review: skip_human_review }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.process_document inline_document: inline_document, name: name, document: document, skip_human_review: skip_human_review do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.process_document ::Google::Cloud::DocumentAI::V1beta3::ProcessRequest.new(inline_document: inline_document, name: name, document: document, skip_human_review: skip_human_review) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.process_document({ inline_document: inline_document, name: name, document: document, skip_human_review: skip_human_review }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.process_document(::Google::Cloud::DocumentAI::V1beta3::ProcessRequest.new(inline_document: inline_document, name: name, document: document, skip_human_review: skip_human_review), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, process_document_client_stub.call_rpc_count
    end
  end

  def test_batch_process_documents
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    input_configs = [{}]
    output_config = {}
    input_documents = {}
    document_output_config = {}
    skip_human_review = true

    batch_process_documents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_process_documents, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest, request
      assert_equal "hello world", request["name"]
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest::BatchInputConfig, request["input_configs"].first
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest::BatchOutputConfig), request["output_config"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1beta3::BatchDocumentsInputConfig), request["input_documents"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1beta3::DocumentOutputConfig), request["document_output_config"]
      assert_equal true, request["skip_human_review"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_process_documents_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_process_documents({ name: name, input_configs: input_configs, output_config: output_config, input_documents: input_documents, document_output_config: document_output_config, skip_human_review: skip_human_review }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_process_documents name: name, input_configs: input_configs, output_config: output_config, input_documents: input_documents, document_output_config: document_output_config, skip_human_review: skip_human_review do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_process_documents ::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest.new(name: name, input_configs: input_configs, output_config: output_config, input_documents: input_documents, document_output_config: document_output_config, skip_human_review: skip_human_review) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_process_documents({ name: name, input_configs: input_configs, output_config: output_config, input_documents: input_documents, document_output_config: document_output_config, skip_human_review: skip_human_review }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_process_documents(::Google::Cloud::DocumentAI::V1beta3::BatchProcessRequest.new(name: name, input_configs: input_configs, output_config: output_config, input_documents: input_documents, document_output_config: document_output_config, skip_human_review: skip_human_review), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_process_documents_client_stub.call_rpc_count
    end
  end

  def test_fetch_processor_types
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DocumentAI::V1beta3::FetchProcessorTypesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    fetch_processor_types_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :fetch_processor_types, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::FetchProcessorTypesRequest, request
      assert_equal "hello world", request["parent"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, fetch_processor_types_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.fetch_processor_types({ parent: parent }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.fetch_processor_types parent: parent do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.fetch_processor_types ::Google::Cloud::DocumentAI::V1beta3::FetchProcessorTypesRequest.new(parent: parent) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.fetch_processor_types({ parent: parent }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.fetch_processor_types(::Google::Cloud::DocumentAI::V1beta3::FetchProcessorTypesRequest.new(parent: parent), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, fetch_processor_types_client_stub.call_rpc_count
    end
  end

  def test_list_processors
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DocumentAI::V1beta3::ListProcessorsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_processors_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_processors, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::ListProcessorsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_processors_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_processors({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_processors parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_processors ::Google::Cloud::DocumentAI::V1beta3::ListProcessorsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_processors({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_processors(::Google::Cloud::DocumentAI::V1beta3::ListProcessorsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_processors_client_stub.call_rpc_count
    end
  end

  def test_create_processor
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DocumentAI::V1beta3::Processor.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    processor = {}

    create_processor_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_processor, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::CreateProcessorRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1beta3::Processor), request["processor"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_processor_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_processor({ parent: parent, processor: processor }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_processor parent: parent, processor: processor do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_processor ::Google::Cloud::DocumentAI::V1beta3::CreateProcessorRequest.new(parent: parent, processor: processor) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_processor({ parent: parent, processor: processor }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_processor(::Google::Cloud::DocumentAI::V1beta3::CreateProcessorRequest.new(parent: parent, processor: processor), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_processor_client_stub.call_rpc_count
    end
  end

  def test_delete_processor
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_processor_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_processor, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::DeleteProcessorRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_processor_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_processor({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_processor name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_processor ::Google::Cloud::DocumentAI::V1beta3::DeleteProcessorRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_processor({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_processor(::Google::Cloud::DocumentAI::V1beta3::DeleteProcessorRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_processor_client_stub.call_rpc_count
    end
  end

  def test_enable_processor
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    enable_processor_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :enable_processor, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::EnableProcessorRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, enable_processor_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.enable_processor({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.enable_processor name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.enable_processor ::Google::Cloud::DocumentAI::V1beta3::EnableProcessorRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.enable_processor({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.enable_processor(::Google::Cloud::DocumentAI::V1beta3::EnableProcessorRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, enable_processor_client_stub.call_rpc_count
    end
  end

  def test_disable_processor
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    disable_processor_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :disable_processor, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::DisableProcessorRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, disable_processor_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.disable_processor({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.disable_processor name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.disable_processor ::Google::Cloud::DocumentAI::V1beta3::DisableProcessorRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.disable_processor({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.disable_processor(::Google::Cloud::DocumentAI::V1beta3::DisableProcessorRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, disable_processor_client_stub.call_rpc_count
    end
  end

  def test_review_document
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    inline_document = {}
    human_review_config = "hello world"
    document = {}
    enable_schema_validation = true
    priority = :DEFAULT

    review_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :review_document, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::ReviewDocumentRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1beta3::Document), request["inline_document"]
      assert_equal :inline_document, request.source
      assert_equal "hello world", request["human_review_config"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1beta3::Document), request["document"]
      assert_equal true, request["enable_schema_validation"]
      assert_equal :DEFAULT, request["priority"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, review_document_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.review_document({ inline_document: inline_document, human_review_config: human_review_config, document: document, enable_schema_validation: enable_schema_validation, priority: priority }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.review_document inline_document: inline_document, human_review_config: human_review_config, document: document, enable_schema_validation: enable_schema_validation, priority: priority do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.review_document ::Google::Cloud::DocumentAI::V1beta3::ReviewDocumentRequest.new(inline_document: inline_document, human_review_config: human_review_config, document: document, enable_schema_validation: enable_schema_validation, priority: priority) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.review_document({ inline_document: inline_document, human_review_config: human_review_config, document: document, enable_schema_validation: enable_schema_validation, priority: priority }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.review_document(::Google::Cloud::DocumentAI::V1beta3::ReviewDocumentRequest.new(inline_document: inline_document, human_review_config: human_review_config, document: document, enable_schema_validation: enable_schema_validation, priority: priority), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, review_document_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::DocumentAI::V1beta3::DocumentProcessorService::Operations, client.operations_client
  end
end