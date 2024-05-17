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

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/dialogflow/cx/v3/experiment_pb"
require "google/cloud/dialogflow/cx/v3/experiment_services_pb"
require "google/cloud/dialogflow/cx/v3/experiments"

class ::Google::Cloud::Dialogflow::CX::V3::Experiments::ClientTest < Minitest::Test
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

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_list_experiments
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::ListExperimentsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_experiments_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_experiments, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::ListExperimentsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_experiments_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Experiments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_experiments({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_experiments parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_experiments ::Google::Cloud::Dialogflow::CX::V3::ListExperimentsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_experiments({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_experiments(::Google::Cloud::Dialogflow::CX::V3::ListExperimentsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_experiments_client_stub.call_rpc_count
    end
  end

  def test_get_experiment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::Experiment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_experiment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_experiment, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::GetExperimentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_experiment_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Experiments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_experiment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_experiment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_experiment ::Google::Cloud::Dialogflow::CX::V3::GetExperimentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_experiment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_experiment(::Google::Cloud::Dialogflow::CX::V3::GetExperimentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_experiment_client_stub.call_rpc_count
    end
  end

  def test_create_experiment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::Experiment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    experiment = {}

    create_experiment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_experiment, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::CreateExperimentRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::Experiment), request["experiment"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_experiment_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Experiments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_experiment({ parent: parent, experiment: experiment }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_experiment parent: parent, experiment: experiment do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_experiment ::Google::Cloud::Dialogflow::CX::V3::CreateExperimentRequest.new(parent: parent, experiment: experiment) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_experiment({ parent: parent, experiment: experiment }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_experiment(::Google::Cloud::Dialogflow::CX::V3::CreateExperimentRequest.new(parent: parent, experiment: experiment), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_experiment_client_stub.call_rpc_count
    end
  end

  def test_update_experiment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::Experiment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    experiment = {}
    update_mask = {}

    update_experiment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_experiment, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::UpdateExperimentRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::CX::V3::Experiment), request["experiment"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_experiment_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Experiments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_experiment({ experiment: experiment, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_experiment experiment: experiment, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_experiment ::Google::Cloud::Dialogflow::CX::V3::UpdateExperimentRequest.new(experiment: experiment, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_experiment({ experiment: experiment, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_experiment(::Google::Cloud::Dialogflow::CX::V3::UpdateExperimentRequest.new(experiment: experiment, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_experiment_client_stub.call_rpc_count
    end
  end

  def test_delete_experiment
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_experiment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_experiment, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::DeleteExperimentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_experiment_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Experiments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_experiment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_experiment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_experiment ::Google::Cloud::Dialogflow::CX::V3::DeleteExperimentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_experiment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_experiment(::Google::Cloud::Dialogflow::CX::V3::DeleteExperimentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_experiment_client_stub.call_rpc_count
    end
  end

  def test_start_experiment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::Experiment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    start_experiment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :start_experiment, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::StartExperimentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, start_experiment_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Experiments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.start_experiment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.start_experiment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.start_experiment ::Google::Cloud::Dialogflow::CX::V3::StartExperimentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.start_experiment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.start_experiment(::Google::Cloud::Dialogflow::CX::V3::StartExperimentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, start_experiment_client_stub.call_rpc_count
    end
  end

  def test_stop_experiment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::CX::V3::Experiment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    stop_experiment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :stop_experiment, name
      assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::StopExperimentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, stop_experiment_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::CX::V3::Experiments::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.stop_experiment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.stop_experiment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.stop_experiment ::Google::Cloud::Dialogflow::CX::V3::StopExperimentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.stop_experiment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.stop_experiment(::Google::Cloud::Dialogflow::CX::V3::StopExperimentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, stop_experiment_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::CX::V3::Experiments::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::Experiments::Client::Configuration, config
  end
end
