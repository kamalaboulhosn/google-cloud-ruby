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
require "google/cloud/talent/v4/company_service_pb"
require "google/cloud/talent/v4/company_service/rest"


class ::Google::Cloud::Talent::V4::CompanyService::Rest::ClientTest < Minitest::Test
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

  def test_create_company
    # Create test objects.
    client_result = ::Google::Cloud::Talent::V4::Company.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    company = {}

    create_company_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4::CompanyService::Rest::ServiceStub.stub :transcode_create_company_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_company_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4::CompanyService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_company({ parent: parent, company: company }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_company parent: parent, company: company do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_company ::Google::Cloud::Talent::V4::CreateCompanyRequest.new(parent: parent, company: company) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_company({ parent: parent, company: company }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_company(::Google::Cloud::Talent::V4::CreateCompanyRequest.new(parent: parent, company: company), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_company_client_stub.call_count
      end
    end
  end

  def test_get_company
    # Create test objects.
    client_result = ::Google::Cloud::Talent::V4::Company.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_company_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4::CompanyService::Rest::ServiceStub.stub :transcode_get_company_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_company_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4::CompanyService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_company({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_company name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_company ::Google::Cloud::Talent::V4::GetCompanyRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_company({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_company(::Google::Cloud::Talent::V4::GetCompanyRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_company_client_stub.call_count
      end
    end
  end

  def test_update_company
    # Create test objects.
    client_result = ::Google::Cloud::Talent::V4::Company.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    company = {}
    update_mask = {}

    update_company_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4::CompanyService::Rest::ServiceStub.stub :transcode_update_company_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_company_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4::CompanyService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_company({ company: company, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_company company: company, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_company ::Google::Cloud::Talent::V4::UpdateCompanyRequest.new(company: company, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_company({ company: company, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_company(::Google::Cloud::Talent::V4::UpdateCompanyRequest.new(company: company, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_company_client_stub.call_count
      end
    end
  end

  def test_delete_company
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_company_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4::CompanyService::Rest::ServiceStub.stub :transcode_delete_company_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_company_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4::CompanyService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_company({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_company name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_company ::Google::Cloud::Talent::V4::DeleteCompanyRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_company({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_company(::Google::Cloud::Talent::V4::DeleteCompanyRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_company_client_stub.call_count
      end
    end
  end

  def test_list_companies
    # Create test objects.
    client_result = ::Google::Cloud::Talent::V4::ListCompaniesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_token = "hello world"
    page_size = 42
    require_open_jobs = true

    list_companies_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Talent::V4::CompanyService::Rest::ServiceStub.stub :transcode_list_companies_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_companies_client_stub do
        # Create client
        client = ::Google::Cloud::Talent::V4::CompanyService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_companies({ parent: parent, page_token: page_token, page_size: page_size, require_open_jobs: require_open_jobs }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_companies parent: parent, page_token: page_token, page_size: page_size, require_open_jobs: require_open_jobs do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_companies ::Google::Cloud::Talent::V4::ListCompaniesRequest.new(parent: parent, page_token: page_token, page_size: page_size, require_open_jobs: require_open_jobs) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_companies({ parent: parent, page_token: page_token, page_size: page_size, require_open_jobs: require_open_jobs }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_companies(::Google::Cloud::Talent::V4::ListCompaniesRequest.new(parent: parent, page_token: page_token, page_size: page_size, require_open_jobs: require_open_jobs), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_companies_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Talent::V4::CompanyService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Talent::V4::CompanyService::Rest::Client::Configuration, config
  end
end
