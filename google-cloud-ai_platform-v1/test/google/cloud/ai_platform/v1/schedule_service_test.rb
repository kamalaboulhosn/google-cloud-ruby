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

require "gapic/grpc/service_stub"

require "google/cloud/aiplatform/v1/schedule_service_pb"
require "google/cloud/aiplatform/v1/schedule_service_services_pb"
require "google/cloud/ai_platform/v1/schedule_service"

class ::Google::Cloud::AIPlatform::V1::ScheduleService::ClientTest < Minitest::Test
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

  def test_create_schedule
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::Schedule.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    schedule = {}

    create_schedule_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_schedule, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::CreateScheduleRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::Schedule), request["schedule"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_schedule_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::ScheduleService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_schedule({ parent: parent, schedule: schedule }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_schedule parent: parent, schedule: schedule do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_schedule ::Google::Cloud::AIPlatform::V1::CreateScheduleRequest.new(parent: parent, schedule: schedule) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_schedule({ parent: parent, schedule: schedule }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_schedule(::Google::Cloud::AIPlatform::V1::CreateScheduleRequest.new(parent: parent, schedule: schedule), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_schedule_client_stub.call_rpc_count
    end
  end

  def test_delete_schedule
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_schedule_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_schedule, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::DeleteScheduleRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_schedule_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::ScheduleService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_schedule({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_schedule name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_schedule ::Google::Cloud::AIPlatform::V1::DeleteScheduleRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_schedule({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_schedule(::Google::Cloud::AIPlatform::V1::DeleteScheduleRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_schedule_client_stub.call_rpc_count
    end
  end

  def test_get_schedule
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::Schedule.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_schedule_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_schedule, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::GetScheduleRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_schedule_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::ScheduleService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_schedule({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_schedule name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_schedule ::Google::Cloud::AIPlatform::V1::GetScheduleRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_schedule({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_schedule(::Google::Cloud::AIPlatform::V1::GetScheduleRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_schedule_client_stub.call_rpc_count
    end
  end

  def test_list_schedules
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::ListSchedulesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"
    order_by = "hello world"

    list_schedules_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_schedules, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ListSchedulesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["order_by"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_schedules_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::ScheduleService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_schedules({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_schedules parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_schedules ::Google::Cloud::AIPlatform::V1::ListSchedulesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_schedules({ parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_schedules(::Google::Cloud::AIPlatform::V1::ListSchedulesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token, order_by: order_by), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_schedules_client_stub.call_rpc_count
    end
  end

  def test_pause_schedule
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    pause_schedule_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :pause_schedule, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::PauseScheduleRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, pause_schedule_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::ScheduleService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.pause_schedule({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.pause_schedule name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.pause_schedule ::Google::Cloud::AIPlatform::V1::PauseScheduleRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.pause_schedule({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.pause_schedule(::Google::Cloud::AIPlatform::V1::PauseScheduleRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, pause_schedule_client_stub.call_rpc_count
    end
  end

  def test_resume_schedule
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    catch_up = true

    resume_schedule_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :resume_schedule, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::ResumeScheduleRequest, request
      assert_equal "hello world", request["name"]
      assert_equal true, request["catch_up"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, resume_schedule_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::ScheduleService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.resume_schedule({ name: name, catch_up: catch_up }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.resume_schedule name: name, catch_up: catch_up do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.resume_schedule ::Google::Cloud::AIPlatform::V1::ResumeScheduleRequest.new(name: name, catch_up: catch_up) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.resume_schedule({ name: name, catch_up: catch_up }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.resume_schedule(::Google::Cloud::AIPlatform::V1::ResumeScheduleRequest.new(name: name, catch_up: catch_up), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, resume_schedule_client_stub.call_rpc_count
    end
  end

  def test_update_schedule
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::AIPlatform::V1::Schedule.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    schedule = {}
    update_mask = {}

    update_schedule_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_schedule, name
      assert_kind_of ::Google::Cloud::AIPlatform::V1::UpdateScheduleRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::AIPlatform::V1::Schedule), request["schedule"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_schedule_client_stub do
      # Create client
      client = ::Google::Cloud::AIPlatform::V1::ScheduleService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_schedule({ schedule: schedule, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_schedule schedule: schedule, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_schedule ::Google::Cloud::AIPlatform::V1::UpdateScheduleRequest.new(schedule: schedule, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_schedule({ schedule: schedule, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_schedule(::Google::Cloud::AIPlatform::V1::UpdateScheduleRequest.new(schedule: schedule, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_schedule_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AIPlatform::V1::ScheduleService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::AIPlatform::V1::ScheduleService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::AIPlatform::V1::ScheduleService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::AIPlatform::V1::ScheduleService::Operations, client.operations_client
  end
end
