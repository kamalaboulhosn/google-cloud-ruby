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

require "google/cloud/documentai/v1/document_processor_service_pb"
require "google/cloud/documentai/v1/document_processor_service_services_pb"
require "google/cloud/document_ai/v1/document_processor_service"

class ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::ClientTest < Minitest::Test
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
    grpc_response = ::Google::Cloud::DocumentAI::V1::ProcessResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    inline_document = {}
    name = "hello world"
    skip_human_review = true

    process_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :process_document, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1::ProcessRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1::Document), request["inline_document"]
      assert_equal :inline_document, request.source
      assert_equal "hello world", request["name"]
      assert_equal true, request["skip_human_review"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, process_document_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.process_document({ inline_document: inline_document, name: name, skip_human_review: skip_human_review }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.process_document inline_document: inline_document, name: name, skip_human_review: skip_human_review do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.process_document ::Google::Cloud::DocumentAI::V1::ProcessRequest.new(inline_document: inline_document, name: name, skip_human_review: skip_human_review) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.process_document({ inline_document: inline_document, name: name, skip_human_review: skip_human_review }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.process_document(::Google::Cloud::DocumentAI::V1::ProcessRequest.new(inline_document: inline_document, name: name, skip_human_review: skip_human_review), grpc_options) do |response, operation|
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
    input_documents = {}
    document_output_config = {}
    skip_human_review = true

    batch_process_documents_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_process_documents, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1::BatchProcessRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1::BatchDocumentsInputConfig), request["input_documents"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1::DocumentOutputConfig), request["document_output_config"]
      assert_equal true, request["skip_human_review"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_process_documents_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_process_documents({ name: name, input_documents: input_documents, document_output_config: document_output_config, skip_human_review: skip_human_review }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_process_documents name: name, input_documents: input_documents, document_output_config: document_output_config, skip_human_review: skip_human_review do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_process_documents ::Google::Cloud::DocumentAI::V1::BatchProcessRequest.new(name: name, input_documents: input_documents, document_output_config: document_output_config, skip_human_review: skip_human_review) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_process_documents({ name: name, input_documents: input_documents, document_output_config: document_output_config, skip_human_review: skip_human_review }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_process_documents(::Google::Cloud::DocumentAI::V1::BatchProcessRequest.new(name: name, input_documents: input_documents, document_output_config: document_output_config, skip_human_review: skip_human_review), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_process_documents_client_stub.call_rpc_count
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
    enable_schema_validation = true
    priority = :DEFAULT

    review_document_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :review_document, name
      assert_kind_of ::Google::Cloud::DocumentAI::V1::ReviewDocumentRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DocumentAI::V1::Document), request["inline_document"]
      assert_equal :inline_document, request.source
      assert_equal "hello world", request["human_review_config"]
      assert_equal true, request["enable_schema_validation"]
      assert_equal :DEFAULT, request["priority"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, review_document_client_stub do
      # Create client
      client = ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.review_document({ inline_document: inline_document, human_review_config: human_review_config, enable_schema_validation: enable_schema_validation, priority: priority }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.review_document inline_document: inline_document, human_review_config: human_review_config, enable_schema_validation: enable_schema_validation, priority: priority do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.review_document ::Google::Cloud::DocumentAI::V1::ReviewDocumentRequest.new(inline_document: inline_document, human_review_config: human_review_config, enable_schema_validation: enable_schema_validation, priority: priority) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.review_document({ inline_document: inline_document, human_review_config: human_review_config, enable_schema_validation: enable_schema_validation, priority: priority }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.review_document(::Google::Cloud::DocumentAI::V1::ReviewDocumentRequest.new(inline_document: inline_document, human_review_config: human_review_config, enable_schema_validation: enable_schema_validation, priority: priority), grpc_options) do |response, operation|
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
      client = ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::DocumentAI::V1::DocumentProcessorService::Operations, client.operations_client
  end
end
