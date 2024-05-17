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

require "google/cloud/gsuiteaddons/v1/gsuiteaddons_pb"
require "google/cloud/gsuiteaddons/v1/gsuiteaddons_services_pb"
require "google/cloud/gsuite_add_ons/v1/gsuite_add_ons"

class ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::ClientTest < Minitest::Test
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

  def test_get_authorization
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GSuiteAddOns::V1::Authorization.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_authorization_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_authorization, name
      assert_kind_of ::Google::Cloud::GSuiteAddOns::V1::GetAuthorizationRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_authorization_client_stub do
      # Create client
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_authorization({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_authorization name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_authorization ::Google::Cloud::GSuiteAddOns::V1::GetAuthorizationRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_authorization({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_authorization(::Google::Cloud::GSuiteAddOns::V1::GetAuthorizationRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_authorization_client_stub.call_rpc_count
    end
  end

  def test_create_deployment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GSuiteAddOns::V1::Deployment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    deployment_id = "hello world"
    deployment = {}

    create_deployment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_deployment, name
      assert_kind_of ::Google::Cloud::GSuiteAddOns::V1::CreateDeploymentRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["deployment_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::GSuiteAddOns::V1::Deployment), request["deployment"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_deployment_client_stub do
      # Create client
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_deployment({ parent: parent, deployment_id: deployment_id, deployment: deployment }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_deployment parent: parent, deployment_id: deployment_id, deployment: deployment do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_deployment ::Google::Cloud::GSuiteAddOns::V1::CreateDeploymentRequest.new(parent: parent, deployment_id: deployment_id, deployment: deployment) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_deployment({ parent: parent, deployment_id: deployment_id, deployment: deployment }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_deployment(::Google::Cloud::GSuiteAddOns::V1::CreateDeploymentRequest.new(parent: parent, deployment_id: deployment_id, deployment: deployment), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_deployment_client_stub.call_rpc_count
    end
  end

  def test_replace_deployment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GSuiteAddOns::V1::Deployment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    deployment = {}

    replace_deployment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :replace_deployment, name
      assert_kind_of ::Google::Cloud::GSuiteAddOns::V1::ReplaceDeploymentRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::GSuiteAddOns::V1::Deployment), request["deployment"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, replace_deployment_client_stub do
      # Create client
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.replace_deployment({ deployment: deployment }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.replace_deployment deployment: deployment do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.replace_deployment ::Google::Cloud::GSuiteAddOns::V1::ReplaceDeploymentRequest.new(deployment: deployment) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.replace_deployment({ deployment: deployment }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.replace_deployment(::Google::Cloud::GSuiteAddOns::V1::ReplaceDeploymentRequest.new(deployment: deployment), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, replace_deployment_client_stub.call_rpc_count
    end
  end

  def test_get_deployment
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GSuiteAddOns::V1::Deployment.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_deployment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_deployment, name
      assert_kind_of ::Google::Cloud::GSuiteAddOns::V1::GetDeploymentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_deployment_client_stub do
      # Create client
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_deployment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_deployment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_deployment ::Google::Cloud::GSuiteAddOns::V1::GetDeploymentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_deployment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_deployment(::Google::Cloud::GSuiteAddOns::V1::GetDeploymentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_deployment_client_stub.call_rpc_count
    end
  end

  def test_list_deployments
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GSuiteAddOns::V1::ListDeploymentsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_deployments_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_deployments, name
      assert_kind_of ::Google::Cloud::GSuiteAddOns::V1::ListDeploymentsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_deployments_client_stub do
      # Create client
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_deployments({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_deployments parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_deployments ::Google::Cloud::GSuiteAddOns::V1::ListDeploymentsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_deployments({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_deployments(::Google::Cloud::GSuiteAddOns::V1::ListDeploymentsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_deployments_client_stub.call_rpc_count
    end
  end

  def test_delete_deployment
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    etag = "hello world"

    delete_deployment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_deployment, name
      assert_kind_of ::Google::Cloud::GSuiteAddOns::V1::DeleteDeploymentRequest, request
      assert_equal "hello world", request["name"]
      assert_equal "hello world", request["etag"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_deployment_client_stub do
      # Create client
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_deployment({ name: name, etag: etag }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_deployment name: name, etag: etag do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_deployment ::Google::Cloud::GSuiteAddOns::V1::DeleteDeploymentRequest.new(name: name, etag: etag) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_deployment({ name: name, etag: etag }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_deployment(::Google::Cloud::GSuiteAddOns::V1::DeleteDeploymentRequest.new(name: name, etag: etag), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_deployment_client_stub.call_rpc_count
    end
  end

  def test_install_deployment
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    install_deployment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :install_deployment, name
      assert_kind_of ::Google::Cloud::GSuiteAddOns::V1::InstallDeploymentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, install_deployment_client_stub do
      # Create client
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.install_deployment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.install_deployment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.install_deployment ::Google::Cloud::GSuiteAddOns::V1::InstallDeploymentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.install_deployment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.install_deployment(::Google::Cloud::GSuiteAddOns::V1::InstallDeploymentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, install_deployment_client_stub.call_rpc_count
    end
  end

  def test_uninstall_deployment
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    uninstall_deployment_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :uninstall_deployment, name
      assert_kind_of ::Google::Cloud::GSuiteAddOns::V1::UninstallDeploymentRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, uninstall_deployment_client_stub do
      # Create client
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.uninstall_deployment({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.uninstall_deployment name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.uninstall_deployment ::Google::Cloud::GSuiteAddOns::V1::UninstallDeploymentRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.uninstall_deployment({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.uninstall_deployment(::Google::Cloud::GSuiteAddOns::V1::UninstallDeploymentRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, uninstall_deployment_client_stub.call_rpc_count
    end
  end

  def test_get_install_status
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::GSuiteAddOns::V1::InstallStatus.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_install_status_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_install_status, name
      assert_kind_of ::Google::Cloud::GSuiteAddOns::V1::GetInstallStatusRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_install_status_client_stub do
      # Create client
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_install_status({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_install_status name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_install_status ::Google::Cloud::GSuiteAddOns::V1::GetInstallStatusRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_install_status({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_install_status(::Google::Cloud::GSuiteAddOns::V1::GetInstallStatusRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_install_status_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::GSuiteAddOns::V1::GSuiteAddOns::Client::Configuration, config
  end
end
