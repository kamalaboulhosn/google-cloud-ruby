# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "grafeas/v1/grafeas_pb"
require "grafeas/v1/grafeas_services_pb"
require "grafeas/v1/grafeas"

class ::Grafeas::V1::Grafeas::ClientTest < Minitest::Test
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

      catch :response do
        yield @response, @operation if block_given?
        @response
      end
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

  def test_get_occurrence
    # Create GRPC objects.
    grpc_response = ::Grafeas::V1::Occurrence.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_occurrence_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_occurrence, name
      assert_kind_of ::Grafeas::V1::GetOccurrenceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_occurrence_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_occurrence({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_occurrence name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_occurrence ::Grafeas::V1::GetOccurrenceRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_occurrence({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_occurrence(::Grafeas::V1::GetOccurrenceRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_occurrence_client_stub.call_rpc_count
    end
  end

  def test_list_occurrences
    # Create GRPC objects.
    grpc_response = ::Grafeas::V1::ListOccurrencesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_occurrences_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_occurrences, name
      assert_kind_of ::Grafeas::V1::ListOccurrencesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_occurrences_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_occurrences({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_occurrences parent: parent, filter: filter, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_occurrences ::Grafeas::V1::ListOccurrencesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_occurrences({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_occurrences(::Grafeas::V1::ListOccurrencesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_occurrences_client_stub.call_rpc_count
    end
  end

  def test_delete_occurrence
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_occurrence_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_occurrence, name
      assert_kind_of ::Grafeas::V1::DeleteOccurrenceRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_occurrence_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_occurrence({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_occurrence name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_occurrence ::Grafeas::V1::DeleteOccurrenceRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_occurrence({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_occurrence(::Grafeas::V1::DeleteOccurrenceRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_occurrence_client_stub.call_rpc_count
    end
  end

  def test_create_occurrence
    # Create GRPC objects.
    grpc_response = ::Grafeas::V1::Occurrence.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    occurrence = {}

    create_occurrence_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_occurrence, name
      assert_kind_of ::Grafeas::V1::CreateOccurrenceRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Grafeas::V1::Occurrence), request["occurrence"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_occurrence_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_occurrence({ parent: parent, occurrence: occurrence }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_occurrence parent: parent, occurrence: occurrence do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_occurrence ::Grafeas::V1::CreateOccurrenceRequest.new(parent: parent, occurrence: occurrence) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_occurrence({ parent: parent, occurrence: occurrence }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_occurrence(::Grafeas::V1::CreateOccurrenceRequest.new(parent: parent, occurrence: occurrence), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_occurrence_client_stub.call_rpc_count
    end
  end

  def test_batch_create_occurrences
    # Create GRPC objects.
    grpc_response = ::Grafeas::V1::BatchCreateOccurrencesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    occurrences = [{}]

    batch_create_occurrences_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_create_occurrences, name
      assert_kind_of ::Grafeas::V1::BatchCreateOccurrencesRequest, request
      assert_equal "hello world", request["parent"]
      assert_kind_of ::Grafeas::V1::Occurrence, request["occurrences"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_create_occurrences_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_create_occurrences({ parent: parent, occurrences: occurrences }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_create_occurrences parent: parent, occurrences: occurrences do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_create_occurrences ::Grafeas::V1::BatchCreateOccurrencesRequest.new(parent: parent, occurrences: occurrences) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_create_occurrences({ parent: parent, occurrences: occurrences }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_create_occurrences(::Grafeas::V1::BatchCreateOccurrencesRequest.new(parent: parent, occurrences: occurrences), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_create_occurrences_client_stub.call_rpc_count
    end
  end

  def test_update_occurrence
    # Create GRPC objects.
    grpc_response = ::Grafeas::V1::Occurrence.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    occurrence = {}
    update_mask = {}

    update_occurrence_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_occurrence, name
      assert_kind_of ::Grafeas::V1::UpdateOccurrenceRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Grafeas::V1::Occurrence), request["occurrence"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_occurrence_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_occurrence({ name: name, occurrence: occurrence, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_occurrence name: name, occurrence: occurrence, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_occurrence ::Grafeas::V1::UpdateOccurrenceRequest.new(name: name, occurrence: occurrence, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_occurrence({ name: name, occurrence: occurrence, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_occurrence(::Grafeas::V1::UpdateOccurrenceRequest.new(name: name, occurrence: occurrence, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_occurrence_client_stub.call_rpc_count
    end
  end

  def test_get_occurrence_note
    # Create GRPC objects.
    grpc_response = ::Grafeas::V1::Note.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_occurrence_note_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_occurrence_note, name
      assert_kind_of ::Grafeas::V1::GetOccurrenceNoteRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_occurrence_note_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_occurrence_note({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_occurrence_note name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_occurrence_note ::Grafeas::V1::GetOccurrenceNoteRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_occurrence_note({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_occurrence_note(::Grafeas::V1::GetOccurrenceNoteRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_occurrence_note_client_stub.call_rpc_count
    end
  end

  def test_get_note
    # Create GRPC objects.
    grpc_response = ::Grafeas::V1::Note.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_note_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_note, name
      assert_kind_of ::Grafeas::V1::GetNoteRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_note_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_note({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_note name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_note ::Grafeas::V1::GetNoteRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_note({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_note(::Grafeas::V1::GetNoteRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_note_client_stub.call_rpc_count
    end
  end

  def test_list_notes
    # Create GRPC objects.
    grpc_response = ::Grafeas::V1::ListNotesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_notes_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_notes, name
      assert_kind_of ::Grafeas::V1::ListNotesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_notes_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_notes({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_notes parent: parent, filter: filter, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_notes ::Grafeas::V1::ListNotesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_notes({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_notes(::Grafeas::V1::ListNotesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_notes_client_stub.call_rpc_count
    end
  end

  def test_delete_note
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_note_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_note, name
      assert_kind_of ::Grafeas::V1::DeleteNoteRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_note_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_note({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_note name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_note ::Grafeas::V1::DeleteNoteRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_note({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_note(::Grafeas::V1::DeleteNoteRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_note_client_stub.call_rpc_count
    end
  end

  def test_create_note
    # Create GRPC objects.
    grpc_response = ::Grafeas::V1::Note.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    note_id = "hello world"
    note = {}

    create_note_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_note, name
      assert_kind_of ::Grafeas::V1::CreateNoteRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["note_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Grafeas::V1::Note), request["note"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_note_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_note({ parent: parent, note_id: note_id, note: note }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_note parent: parent, note_id: note_id, note: note do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_note ::Grafeas::V1::CreateNoteRequest.new(parent: parent, note_id: note_id, note: note) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_note({ parent: parent, note_id: note_id, note: note }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_note(::Grafeas::V1::CreateNoteRequest.new(parent: parent, note_id: note_id, note: note), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_note_client_stub.call_rpc_count
    end
  end

  def test_batch_create_notes
    # Create GRPC objects.
    grpc_response = ::Grafeas::V1::BatchCreateNotesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    notes = {}

    batch_create_notes_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_create_notes, name
      assert_kind_of ::Grafeas::V1::BatchCreateNotesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal({}, request["notes"].to_h)
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_create_notes_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_create_notes({ parent: parent, notes: notes }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_create_notes parent: parent, notes: notes do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_create_notes ::Grafeas::V1::BatchCreateNotesRequest.new(parent: parent, notes: notes) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_create_notes({ parent: parent, notes: notes }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_create_notes(::Grafeas::V1::BatchCreateNotesRequest.new(parent: parent, notes: notes), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_create_notes_client_stub.call_rpc_count
    end
  end

  def test_update_note
    # Create GRPC objects.
    grpc_response = ::Grafeas::V1::Note.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    note = {}
    update_mask = {}

    update_note_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_note, name
      assert_kind_of ::Grafeas::V1::UpdateNoteRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Grafeas::V1::Note), request["note"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_note_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_note({ name: name, note: note, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_note name: name, note: note, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_note ::Grafeas::V1::UpdateNoteRequest.new(name: name, note: note, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_note({ name: name, note: note, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_note(::Grafeas::V1::UpdateNoteRequest.new(name: name, note: note, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_note_client_stub.call_rpc_count
    end
  end

  def test_list_note_occurrences
    # Create GRPC objects.
    grpc_response = ::Grafeas::V1::ListNoteOccurrencesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_note_occurrences_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_note_occurrences, name
      assert_kind_of ::Grafeas::V1::ListNoteOccurrencesRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_note_occurrences_client_stub do
      # Create client
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_note_occurrences({ name: name, filter: filter, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_note_occurrences name: name, filter: filter, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_note_occurrences ::Grafeas::V1::ListNoteOccurrencesRequest.new(name: name, filter: filter, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_note_occurrences({ name: name, filter: filter, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_note_occurrences(::Grafeas::V1::ListNoteOccurrencesRequest.new(name: name, filter: filter, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_note_occurrences_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Grafeas::V1::Grafeas::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Grafeas::V1::Grafeas::Client::Configuration, config
  end
end
