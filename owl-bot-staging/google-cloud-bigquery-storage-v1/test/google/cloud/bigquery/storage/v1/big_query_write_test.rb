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

require "google/cloud/bigquery/storage/v1/storage_pb"
require "google/cloud/bigquery/storage/v1/storage_services_pb"
require "google/cloud/bigquery/storage/v1/big_query_write"

class ::Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::ClientTest < Minitest::Test
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

  def test_create_write_stream
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Storage::V1::WriteStream.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    write_stream = {}

    create_write_stream_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_write_stream, name
      assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::CreateWriteStreamRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Bigquery::Storage::V1::WriteStream), request["write_stream"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_write_stream_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_write_stream({ parent: parent, write_stream: write_stream }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_write_stream parent: parent, write_stream: write_stream do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_write_stream ::Google::Cloud::Bigquery::Storage::V1::CreateWriteStreamRequest.new(parent: parent, write_stream: write_stream) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_write_stream({ parent: parent, write_stream: write_stream }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_write_stream(::Google::Cloud::Bigquery::Storage::V1::CreateWriteStreamRequest.new(parent: parent, write_stream: write_stream), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_write_stream_client_stub.call_rpc_count
    end
  end

  def test_append_rows
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Storage::V1::AppendRowsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a bidi streaming method.
    write_stream = "hello world"
    offset = {}
    proto_rows = {}
    trace_id = "hello world"

    append_rows_client_stub = ClientStub.new [grpc_response].to_enum, grpc_operation do |name, request, options:|
      assert_equal :append_rows, name
      assert_kind_of Enumerable, request
      refute_nil options
      request
    end

    Gapic::ServiceStub.stub :new, append_rows_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use enumerable object with hash and protobuf object.
      request_hash = { write_stream: write_stream, offset: offset, proto_rows: proto_rows, trace_id: trace_id }
      request_proto = ::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest.new write_stream: write_stream, offset: offset, proto_rows: proto_rows, trace_id: trace_id
      enum_input = [request_hash, request_proto].to_enum
      client.append_rows enum_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::AppendRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common).
      request_hash = { write_stream: write_stream, offset: offset, proto_rows: proto_rows, trace_id: trace_id }
      request_proto = ::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest.new write_stream: write_stream, offset: offset, proto_rows: proto_rows, trace_id: trace_id
      stream_input = Gapic::StreamInput.new
      client.append_rows stream_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::AppendRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Use enumerable object with hash and protobuf object with options.
      request_hash = { write_stream: write_stream, offset: offset, proto_rows: proto_rows, trace_id: trace_id }
      request_proto = ::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest.new write_stream: write_stream, offset: offset, proto_rows: proto_rows, trace_id: trace_id
      enum_input = [request_hash, request_proto].to_enum
      client.append_rows enum_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::AppendRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common) with options.
      request_hash = { write_stream: write_stream, offset: offset, proto_rows: proto_rows, trace_id: trace_id }
      request_proto = ::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest.new write_stream: write_stream, offset: offset, proto_rows: proto_rows, trace_id: trace_id
      stream_input = Gapic::StreamInput.new
      client.append_rows stream_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::AppendRowsResponse, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Verify method calls
      assert_equal 4, append_rows_client_stub.call_rpc_count
      append_rows_client_stub.requests.each do |request|
        request.to_a.each do |r|
          assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest, r
          assert_equal "hello world", r["write_stream"]
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Int64Value), r["offset"]
          assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Bigquery::Storage::V1::AppendRowsRequest::ProtoData), r["proto_rows"]
          assert_equal :proto_rows, r.rows
          assert_equal "hello world", r["trace_id"]
        end
      end
    end
  end

  def test_get_write_stream
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Storage::V1::WriteStream.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_write_stream_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_write_stream, name
      assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::GetWriteStreamRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_write_stream_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_write_stream({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_write_stream name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_write_stream ::Google::Cloud::Bigquery::Storage::V1::GetWriteStreamRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_write_stream({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_write_stream(::Google::Cloud::Bigquery::Storage::V1::GetWriteStreamRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_write_stream_client_stub.call_rpc_count
    end
  end

  def test_finalize_write_stream
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Storage::V1::FinalizeWriteStreamResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    finalize_write_stream_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :finalize_write_stream, name
      assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::FinalizeWriteStreamRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, finalize_write_stream_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.finalize_write_stream({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.finalize_write_stream name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.finalize_write_stream ::Google::Cloud::Bigquery::Storage::V1::FinalizeWriteStreamRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.finalize_write_stream({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.finalize_write_stream(::Google::Cloud::Bigquery::Storage::V1::FinalizeWriteStreamRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, finalize_write_stream_client_stub.call_rpc_count
    end
  end

  def test_batch_commit_write_streams
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Storage::V1::BatchCommitWriteStreamsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    write_streams = ["hello world"]

    batch_commit_write_streams_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_commit_write_streams, name
      assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::BatchCommitWriteStreamsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal ["hello world"], request["write_streams"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_commit_write_streams_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_commit_write_streams({ parent: parent, write_streams: write_streams }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_commit_write_streams parent: parent, write_streams: write_streams do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_commit_write_streams ::Google::Cloud::Bigquery::Storage::V1::BatchCommitWriteStreamsRequest.new(parent: parent, write_streams: write_streams) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_commit_write_streams({ parent: parent, write_streams: write_streams }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_commit_write_streams(::Google::Cloud::Bigquery::Storage::V1::BatchCommitWriteStreamsRequest.new(parent: parent, write_streams: write_streams), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_commit_write_streams_client_stub.call_rpc_count
    end
  end

  def test_flush_rows
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Bigquery::Storage::V1::FlushRowsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    write_stream = "hello world"
    offset = {}

    flush_rows_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :flush_rows, name
      assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::FlushRowsRequest, request
      assert_equal "hello world", request["write_stream"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Int64Value), request["offset"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, flush_rows_client_stub do
      # Create client
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.flush_rows({ write_stream: write_stream, offset: offset }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.flush_rows write_stream: write_stream, offset: offset do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.flush_rows ::Google::Cloud::Bigquery::Storage::V1::FlushRowsRequest.new(write_stream: write_stream, offset: offset) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.flush_rows({ write_stream: write_stream, offset: offset }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.flush_rows(::Google::Cloud::Bigquery::Storage::V1::FlushRowsRequest.new(write_stream: write_stream, offset: offset), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, flush_rows_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Bigquery::Storage::V1::BigQueryWrite::Client::Configuration, config
  end
end
