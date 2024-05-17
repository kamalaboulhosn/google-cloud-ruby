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
require "google/storagetransfer/v1/transfer_pb"
require "google/cloud/storage_transfer/v1/storage_transfer_service/rest"


class ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ClientTest < Minitest::Test
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

  def test_get_google_service_account
    # Create test objects.
    client_result = ::Google::Cloud::StorageTransfer::V1::GoogleServiceAccount.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"

    get_google_service_account_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_get_google_service_account_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_google_service_account_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_google_service_account({ project_id: project_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_google_service_account project_id: project_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_google_service_account ::Google::Cloud::StorageTransfer::V1::GetGoogleServiceAccountRequest.new(project_id: project_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_google_service_account({ project_id: project_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_google_service_account(::Google::Cloud::StorageTransfer::V1::GetGoogleServiceAccountRequest.new(project_id: project_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_google_service_account_client_stub.call_count
      end
    end
  end

  def test_create_transfer_job
    # Create test objects.
    client_result = ::Google::Cloud::StorageTransfer::V1::TransferJob.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    transfer_job = {}

    create_transfer_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_create_transfer_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_transfer_job_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_transfer_job({ transfer_job: transfer_job }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_transfer_job transfer_job: transfer_job do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_transfer_job ::Google::Cloud::StorageTransfer::V1::CreateTransferJobRequest.new(transfer_job: transfer_job) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_transfer_job({ transfer_job: transfer_job }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_transfer_job(::Google::Cloud::StorageTransfer::V1::CreateTransferJobRequest.new(transfer_job: transfer_job), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_transfer_job_client_stub.call_count
      end
    end
  end

  def test_update_transfer_job
    # Create test objects.
    client_result = ::Google::Cloud::StorageTransfer::V1::TransferJob.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    job_name = "hello world"
    project_id = "hello world"
    transfer_job = {}
    update_transfer_job_field_mask = {}

    update_transfer_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_update_transfer_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_transfer_job_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_transfer_job({ job_name: job_name, project_id: project_id, transfer_job: transfer_job, update_transfer_job_field_mask: update_transfer_job_field_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_transfer_job job_name: job_name, project_id: project_id, transfer_job: transfer_job, update_transfer_job_field_mask: update_transfer_job_field_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_transfer_job ::Google::Cloud::StorageTransfer::V1::UpdateTransferJobRequest.new(job_name: job_name, project_id: project_id, transfer_job: transfer_job, update_transfer_job_field_mask: update_transfer_job_field_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_transfer_job({ job_name: job_name, project_id: project_id, transfer_job: transfer_job, update_transfer_job_field_mask: update_transfer_job_field_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_transfer_job(::Google::Cloud::StorageTransfer::V1::UpdateTransferJobRequest.new(job_name: job_name, project_id: project_id, transfer_job: transfer_job, update_transfer_job_field_mask: update_transfer_job_field_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_transfer_job_client_stub.call_count
      end
    end
  end

  def test_get_transfer_job
    # Create test objects.
    client_result = ::Google::Cloud::StorageTransfer::V1::TransferJob.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    job_name = "hello world"
    project_id = "hello world"

    get_transfer_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_get_transfer_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_transfer_job_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_transfer_job({ job_name: job_name, project_id: project_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_transfer_job job_name: job_name, project_id: project_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_transfer_job ::Google::Cloud::StorageTransfer::V1::GetTransferJobRequest.new(job_name: job_name, project_id: project_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_transfer_job({ job_name: job_name, project_id: project_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_transfer_job(::Google::Cloud::StorageTransfer::V1::GetTransferJobRequest.new(job_name: job_name, project_id: project_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_transfer_job_client_stub.call_count
      end
    end
  end

  def test_list_transfer_jobs
    # Create test objects.
    client_result = ::Google::Cloud::StorageTransfer::V1::ListTransferJobsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_transfer_jobs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_list_transfer_jobs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_transfer_jobs_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_transfer_jobs({ filter: filter, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_transfer_jobs filter: filter, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_transfer_jobs ::Google::Cloud::StorageTransfer::V1::ListTransferJobsRequest.new(filter: filter, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_transfer_jobs({ filter: filter, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_transfer_jobs(::Google::Cloud::StorageTransfer::V1::ListTransferJobsRequest.new(filter: filter, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_transfer_jobs_client_stub.call_count
      end
    end
  end

  def test_pause_transfer_operation
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    pause_transfer_operation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_pause_transfer_operation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, pause_transfer_operation_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.pause_transfer_operation({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.pause_transfer_operation name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.pause_transfer_operation ::Google::Cloud::StorageTransfer::V1::PauseTransferOperationRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.pause_transfer_operation({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.pause_transfer_operation(::Google::Cloud::StorageTransfer::V1::PauseTransferOperationRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, pause_transfer_operation_client_stub.call_count
      end
    end
  end

  def test_resume_transfer_operation
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    resume_transfer_operation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_resume_transfer_operation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, resume_transfer_operation_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.resume_transfer_operation({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.resume_transfer_operation name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.resume_transfer_operation ::Google::Cloud::StorageTransfer::V1::ResumeTransferOperationRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.resume_transfer_operation({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.resume_transfer_operation(::Google::Cloud::StorageTransfer::V1::ResumeTransferOperationRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, resume_transfer_operation_client_stub.call_count
      end
    end
  end

  def test_run_transfer_job
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    job_name = "hello world"
    project_id = "hello world"

    run_transfer_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_run_transfer_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, run_transfer_job_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.run_transfer_job({ job_name: job_name, project_id: project_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.run_transfer_job job_name: job_name, project_id: project_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.run_transfer_job ::Google::Cloud::StorageTransfer::V1::RunTransferJobRequest.new(job_name: job_name, project_id: project_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.run_transfer_job({ job_name: job_name, project_id: project_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.run_transfer_job(::Google::Cloud::StorageTransfer::V1::RunTransferJobRequest.new(job_name: job_name, project_id: project_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, run_transfer_job_client_stub.call_count
      end
    end
  end

  def test_delete_transfer_job
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    job_name = "hello world"
    project_id = "hello world"

    delete_transfer_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_delete_transfer_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_transfer_job_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_transfer_job({ job_name: job_name, project_id: project_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_transfer_job job_name: job_name, project_id: project_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_transfer_job ::Google::Cloud::StorageTransfer::V1::DeleteTransferJobRequest.new(job_name: job_name, project_id: project_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_transfer_job({ job_name: job_name, project_id: project_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_transfer_job(::Google::Cloud::StorageTransfer::V1::DeleteTransferJobRequest.new(job_name: job_name, project_id: project_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_transfer_job_client_stub.call_count
      end
    end
  end

  def test_create_agent_pool
    # Create test objects.
    client_result = ::Google::Cloud::StorageTransfer::V1::AgentPool.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    agent_pool = {}
    agent_pool_id = "hello world"

    create_agent_pool_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_create_agent_pool_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_agent_pool_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_agent_pool({ project_id: project_id, agent_pool: agent_pool, agent_pool_id: agent_pool_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_agent_pool project_id: project_id, agent_pool: agent_pool, agent_pool_id: agent_pool_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_agent_pool ::Google::Cloud::StorageTransfer::V1::CreateAgentPoolRequest.new(project_id: project_id, agent_pool: agent_pool, agent_pool_id: agent_pool_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_agent_pool({ project_id: project_id, agent_pool: agent_pool, agent_pool_id: agent_pool_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_agent_pool(::Google::Cloud::StorageTransfer::V1::CreateAgentPoolRequest.new(project_id: project_id, agent_pool: agent_pool, agent_pool_id: agent_pool_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_agent_pool_client_stub.call_count
      end
    end
  end

  def test_update_agent_pool
    # Create test objects.
    client_result = ::Google::Cloud::StorageTransfer::V1::AgentPool.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    agent_pool = {}
    update_mask = {}

    update_agent_pool_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_update_agent_pool_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_agent_pool_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_agent_pool({ agent_pool: agent_pool, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_agent_pool agent_pool: agent_pool, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_agent_pool ::Google::Cloud::StorageTransfer::V1::UpdateAgentPoolRequest.new(agent_pool: agent_pool, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_agent_pool({ agent_pool: agent_pool, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_agent_pool(::Google::Cloud::StorageTransfer::V1::UpdateAgentPoolRequest.new(agent_pool: agent_pool, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_agent_pool_client_stub.call_count
      end
    end
  end

  def test_get_agent_pool
    # Create test objects.
    client_result = ::Google::Cloud::StorageTransfer::V1::AgentPool.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_agent_pool_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_get_agent_pool_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_agent_pool_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_agent_pool({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_agent_pool name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_agent_pool ::Google::Cloud::StorageTransfer::V1::GetAgentPoolRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_agent_pool({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_agent_pool(::Google::Cloud::StorageTransfer::V1::GetAgentPoolRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_agent_pool_client_stub.call_count
      end
    end
  end

  def test_list_agent_pools
    # Create test objects.
    client_result = ::Google::Cloud::StorageTransfer::V1::ListAgentPoolsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project_id = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_agent_pools_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_list_agent_pools_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_agent_pools_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_agent_pools({ project_id: project_id, filter: filter, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_agent_pools project_id: project_id, filter: filter, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_agent_pools ::Google::Cloud::StorageTransfer::V1::ListAgentPoolsRequest.new(project_id: project_id, filter: filter, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_agent_pools({ project_id: project_id, filter: filter, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_agent_pools(::Google::Cloud::StorageTransfer::V1::ListAgentPoolsRequest.new(project_id: project_id, filter: filter, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_agent_pools_client_stub.call_count
      end
    end
  end

  def test_delete_agent_pool
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_agent_pool_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::ServiceStub.stub :transcode_delete_agent_pool_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_agent_pool_client_stub do
        # Create client
        client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_agent_pool({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_agent_pool name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_agent_pool ::Google::Cloud::StorageTransfer::V1::DeleteAgentPoolRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_agent_pool({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_agent_pool(::Google::Cloud::StorageTransfer::V1::DeleteAgentPoolRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_agent_pool_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::StorageTransfer::V1::StorageTransferService::Rest::Client::Configuration, config
  end
end
