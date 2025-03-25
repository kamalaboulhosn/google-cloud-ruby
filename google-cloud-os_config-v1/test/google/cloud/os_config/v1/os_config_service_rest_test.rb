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
require "google/cloud/osconfig/v1/osconfig_service_pb"
require "google/cloud/os_config/v1/os_config_service/rest"


class ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ClientTest < Minitest::Test
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

  def test_execute_patch_job
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::PatchJob.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    description = "hello world"
    instance_filter = {}
    patch_config = {}
    duration = {}
    dry_run = true
    display_name = "hello world"
    rollout = {}

    execute_patch_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ServiceStub.stub :transcode_execute_patch_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, execute_patch_job_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.execute_patch_job({ parent: parent, description: description, instance_filter: instance_filter, patch_config: patch_config, duration: duration, dry_run: dry_run, display_name: display_name, rollout: rollout }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.execute_patch_job parent: parent, description: description, instance_filter: instance_filter, patch_config: patch_config, duration: duration, dry_run: dry_run, display_name: display_name, rollout: rollout do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.execute_patch_job ::Google::Cloud::OsConfig::V1::ExecutePatchJobRequest.new(parent: parent, description: description, instance_filter: instance_filter, patch_config: patch_config, duration: duration, dry_run: dry_run, display_name: display_name, rollout: rollout) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.execute_patch_job({ parent: parent, description: description, instance_filter: instance_filter, patch_config: patch_config, duration: duration, dry_run: dry_run, display_name: display_name, rollout: rollout }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.execute_patch_job(::Google::Cloud::OsConfig::V1::ExecutePatchJobRequest.new(parent: parent, description: description, instance_filter: instance_filter, patch_config: patch_config, duration: duration, dry_run: dry_run, display_name: display_name, rollout: rollout), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, execute_patch_job_client_stub.call_count
      end
    end
  end

  def test_get_patch_job
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::PatchJob.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_patch_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ServiceStub.stub :transcode_get_patch_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_patch_job_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_patch_job({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_patch_job name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_patch_job ::Google::Cloud::OsConfig::V1::GetPatchJobRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_patch_job({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_patch_job(::Google::Cloud::OsConfig::V1::GetPatchJobRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_patch_job_client_stub.call_count
      end
    end
  end

  def test_cancel_patch_job
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::PatchJob.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    cancel_patch_job_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ServiceStub.stub :transcode_cancel_patch_job_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, cancel_patch_job_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.cancel_patch_job({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.cancel_patch_job name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.cancel_patch_job ::Google::Cloud::OsConfig::V1::CancelPatchJobRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.cancel_patch_job({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.cancel_patch_job(::Google::Cloud::OsConfig::V1::CancelPatchJobRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, cancel_patch_job_client_stub.call_count
      end
    end
  end

  def test_list_patch_jobs
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::ListPatchJobsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_patch_jobs_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ServiceStub.stub :transcode_list_patch_jobs_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_patch_jobs_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_patch_jobs({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_patch_jobs parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_patch_jobs ::Google::Cloud::OsConfig::V1::ListPatchJobsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_patch_jobs({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_patch_jobs(::Google::Cloud::OsConfig::V1::ListPatchJobsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_patch_jobs_client_stub.call_count
      end
    end
  end

  def test_list_patch_job_instance_details
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::ListPatchJobInstanceDetailsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_patch_job_instance_details_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ServiceStub.stub :transcode_list_patch_job_instance_details_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_patch_job_instance_details_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_patch_job_instance_details({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_patch_job_instance_details parent: parent, page_size: page_size, page_token: page_token, filter: filter do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_patch_job_instance_details ::Google::Cloud::OsConfig::V1::ListPatchJobInstanceDetailsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_patch_job_instance_details({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_patch_job_instance_details(::Google::Cloud::OsConfig::V1::ListPatchJobInstanceDetailsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_patch_job_instance_details_client_stub.call_count
      end
    end
  end

  def test_create_patch_deployment
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::PatchDeployment.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    patch_deployment_id = "hello world"
    patch_deployment = {}

    create_patch_deployment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ServiceStub.stub :transcode_create_patch_deployment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_patch_deployment_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_patch_deployment({ parent: parent, patch_deployment_id: patch_deployment_id, patch_deployment: patch_deployment }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_patch_deployment parent: parent, patch_deployment_id: patch_deployment_id, patch_deployment: patch_deployment do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_patch_deployment ::Google::Cloud::OsConfig::V1::CreatePatchDeploymentRequest.new(parent: parent, patch_deployment_id: patch_deployment_id, patch_deployment: patch_deployment) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_patch_deployment({ parent: parent, patch_deployment_id: patch_deployment_id, patch_deployment: patch_deployment }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_patch_deployment(::Google::Cloud::OsConfig::V1::CreatePatchDeploymentRequest.new(parent: parent, patch_deployment_id: patch_deployment_id, patch_deployment: patch_deployment), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_patch_deployment_client_stub.call_count
      end
    end
  end

  def test_get_patch_deployment
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::PatchDeployment.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_patch_deployment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ServiceStub.stub :transcode_get_patch_deployment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_patch_deployment_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_patch_deployment({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_patch_deployment name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_patch_deployment ::Google::Cloud::OsConfig::V1::GetPatchDeploymentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_patch_deployment({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_patch_deployment(::Google::Cloud::OsConfig::V1::GetPatchDeploymentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_patch_deployment_client_stub.call_count
      end
    end
  end

  def test_list_patch_deployments
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::ListPatchDeploymentsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_patch_deployments_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ServiceStub.stub :transcode_list_patch_deployments_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_patch_deployments_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_patch_deployments({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_patch_deployments parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_patch_deployments ::Google::Cloud::OsConfig::V1::ListPatchDeploymentsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_patch_deployments({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_patch_deployments(::Google::Cloud::OsConfig::V1::ListPatchDeploymentsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_patch_deployments_client_stub.call_count
      end
    end
  end

  def test_delete_patch_deployment
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_patch_deployment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ServiceStub.stub :transcode_delete_patch_deployment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_patch_deployment_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_patch_deployment({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_patch_deployment name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_patch_deployment ::Google::Cloud::OsConfig::V1::DeletePatchDeploymentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_patch_deployment({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_patch_deployment(::Google::Cloud::OsConfig::V1::DeletePatchDeploymentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_patch_deployment_client_stub.call_count
      end
    end
  end

  def test_update_patch_deployment
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::PatchDeployment.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    patch_deployment = {}
    update_mask = {}

    update_patch_deployment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ServiceStub.stub :transcode_update_patch_deployment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_patch_deployment_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_patch_deployment({ patch_deployment: patch_deployment, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_patch_deployment patch_deployment: patch_deployment, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_patch_deployment ::Google::Cloud::OsConfig::V1::UpdatePatchDeploymentRequest.new(patch_deployment: patch_deployment, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_patch_deployment({ patch_deployment: patch_deployment, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_patch_deployment(::Google::Cloud::OsConfig::V1::UpdatePatchDeploymentRequest.new(patch_deployment: patch_deployment, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_patch_deployment_client_stub.call_count
      end
    end
  end

  def test_pause_patch_deployment
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::PatchDeployment.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    pause_patch_deployment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ServiceStub.stub :transcode_pause_patch_deployment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, pause_patch_deployment_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.pause_patch_deployment({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.pause_patch_deployment name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.pause_patch_deployment ::Google::Cloud::OsConfig::V1::PausePatchDeploymentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.pause_patch_deployment({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.pause_patch_deployment(::Google::Cloud::OsConfig::V1::PausePatchDeploymentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, pause_patch_deployment_client_stub.call_count
      end
    end
  end

  def test_resume_patch_deployment
    # Create test objects.
    client_result = ::Google::Cloud::OsConfig::V1::PatchDeployment.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    resume_patch_deployment_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::ServiceStub.stub :transcode_resume_patch_deployment_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, resume_patch_deployment_client_stub do
        # Create client
        client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.resume_patch_deployment({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.resume_patch_deployment name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.resume_patch_deployment ::Google::Cloud::OsConfig::V1::ResumePatchDeploymentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.resume_patch_deployment({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.resume_patch_deployment(::Google::Cloud::OsConfig::V1::ResumePatchDeploymentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, resume_patch_deployment_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::OsConfig::V1::OsConfigService::Rest::Client::Configuration, config
  end
end
