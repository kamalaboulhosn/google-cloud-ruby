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

require "google/cloud/retail/v2/product_service_pb"
require "google/cloud/retail/v2/product_service_services_pb"
require "google/cloud/retail/v2/product_service"

class ::Google::Cloud::Retail::V2::ProductService::ClientTest < Minitest::Test
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

  def test_create_product
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::Product.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    product = {}
    product_id = "hello world"

    create_product_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_product, name
      assert_kind_of ::Google::Cloud::Retail::V2::CreateProductRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::Product), request["product"]
      assert_equal "hello world", request["product_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_product_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_product({ parent: parent, product: product, product_id: product_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_product parent: parent, product: product, product_id: product_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_product ::Google::Cloud::Retail::V2::CreateProductRequest.new(parent: parent, product: product, product_id: product_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_product({ parent: parent, product: product, product_id: product_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_product(::Google::Cloud::Retail::V2::CreateProductRequest.new(parent: parent, product: product, product_id: product_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_product_client_stub.call_rpc_count
    end
  end

  def test_get_product
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::Product.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_product_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_product, name
      assert_kind_of ::Google::Cloud::Retail::V2::GetProductRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_product_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_product({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_product name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_product ::Google::Cloud::Retail::V2::GetProductRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_product({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_product(::Google::Cloud::Retail::V2::GetProductRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_product_client_stub.call_rpc_count
    end
  end

  def test_list_products
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::ListProductsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    read_mask = {}

    list_products_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_products, name
      assert_kind_of ::Google::Cloud::Retail::V2::ListProductsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["read_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_products_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_products({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, read_mask: read_mask }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_products parent: parent, page_size: page_size, page_token: page_token, filter: filter, read_mask: read_mask do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_products ::Google::Cloud::Retail::V2::ListProductsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, read_mask: read_mask) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_products({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, read_mask: read_mask }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_products(::Google::Cloud::Retail::V2::ListProductsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, read_mask: read_mask), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_products_client_stub.call_rpc_count
    end
  end

  def test_update_product
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::Product.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    product = {}
    update_mask = {}
    allow_missing = true

    update_product_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_product, name
      assert_kind_of ::Google::Cloud::Retail::V2::UpdateProductRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::Product), request["product"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal true, request["allow_missing"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_product_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_product({ product: product, update_mask: update_mask, allow_missing: allow_missing }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_product product: product, update_mask: update_mask, allow_missing: allow_missing do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_product ::Google::Cloud::Retail::V2::UpdateProductRequest.new(product: product, update_mask: update_mask, allow_missing: allow_missing) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_product({ product: product, update_mask: update_mask, allow_missing: allow_missing }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_product(::Google::Cloud::Retail::V2::UpdateProductRequest.new(product: product, update_mask: update_mask, allow_missing: allow_missing), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_product_client_stub.call_rpc_count
    end
  end

  def test_delete_product
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_product_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_product, name
      assert_kind_of ::Google::Cloud::Retail::V2::DeleteProductRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_product_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_product({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_product name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_product ::Google::Cloud::Retail::V2::DeleteProductRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_product({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_product(::Google::Cloud::Retail::V2::DeleteProductRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_product_client_stub.call_rpc_count
    end
  end

  def test_import_products
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    request_id = "hello world"
    input_config = {}
    errors_config = {}
    update_mask = {}
    reconciliation_mode = :RECONCILIATION_MODE_UNSPECIFIED
    notification_pubsub_topic = "hello world"

    import_products_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :import_products, name
      assert_kind_of ::Google::Cloud::Retail::V2::ImportProductsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["request_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::ProductInputConfig), request["input_config"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::ImportErrorsConfig), request["errors_config"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      assert_equal :RECONCILIATION_MODE_UNSPECIFIED, request["reconciliation_mode"]
      assert_equal "hello world", request["notification_pubsub_topic"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, import_products_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.import_products({ parent: parent, request_id: request_id, input_config: input_config, errors_config: errors_config, update_mask: update_mask, reconciliation_mode: reconciliation_mode, notification_pubsub_topic: notification_pubsub_topic }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.import_products parent: parent, request_id: request_id, input_config: input_config, errors_config: errors_config, update_mask: update_mask, reconciliation_mode: reconciliation_mode, notification_pubsub_topic: notification_pubsub_topic do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.import_products ::Google::Cloud::Retail::V2::ImportProductsRequest.new(parent: parent, request_id: request_id, input_config: input_config, errors_config: errors_config, update_mask: update_mask, reconciliation_mode: reconciliation_mode, notification_pubsub_topic: notification_pubsub_topic) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.import_products({ parent: parent, request_id: request_id, input_config: input_config, errors_config: errors_config, update_mask: update_mask, reconciliation_mode: reconciliation_mode, notification_pubsub_topic: notification_pubsub_topic }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.import_products(::Google::Cloud::Retail::V2::ImportProductsRequest.new(parent: parent, request_id: request_id, input_config: input_config, errors_config: errors_config, update_mask: update_mask, reconciliation_mode: reconciliation_mode, notification_pubsub_topic: notification_pubsub_topic), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, import_products_client_stub.call_rpc_count
    end
  end

  def test_set_inventory
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    inventory = {}
    set_mask = {}
    set_time = {}
    allow_missing = true

    set_inventory_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :set_inventory, name
      assert_kind_of ::Google::Cloud::Retail::V2::SetInventoryRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::Product), request["inventory"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["set_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["set_time"]
      assert_equal true, request["allow_missing"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, set_inventory_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.set_inventory({ inventory: inventory, set_mask: set_mask, set_time: set_time, allow_missing: allow_missing }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.set_inventory inventory: inventory, set_mask: set_mask, set_time: set_time, allow_missing: allow_missing do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.set_inventory ::Google::Cloud::Retail::V2::SetInventoryRequest.new(inventory: inventory, set_mask: set_mask, set_time: set_time, allow_missing: allow_missing) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.set_inventory({ inventory: inventory, set_mask: set_mask, set_time: set_time, allow_missing: allow_missing }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.set_inventory(::Google::Cloud::Retail::V2::SetInventoryRequest.new(inventory: inventory, set_mask: set_mask, set_time: set_time, allow_missing: allow_missing), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, set_inventory_client_stub.call_rpc_count
    end
  end

  def test_add_fulfillment_places
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    product = "hello world"
    type = "hello world"
    place_ids = ["hello world"]
    add_time = {}
    allow_missing = true

    add_fulfillment_places_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :add_fulfillment_places, name
      assert_kind_of ::Google::Cloud::Retail::V2::AddFulfillmentPlacesRequest, request
      assert_equal "hello world", request["product"]
      assert_equal "hello world", request["type"]
      assert_equal ["hello world"], request["place_ids"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["add_time"]
      assert_equal true, request["allow_missing"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, add_fulfillment_places_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.add_fulfillment_places({ product: product, type: type, place_ids: place_ids, add_time: add_time, allow_missing: allow_missing }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.add_fulfillment_places product: product, type: type, place_ids: place_ids, add_time: add_time, allow_missing: allow_missing do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.add_fulfillment_places ::Google::Cloud::Retail::V2::AddFulfillmentPlacesRequest.new(product: product, type: type, place_ids: place_ids, add_time: add_time, allow_missing: allow_missing) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.add_fulfillment_places({ product: product, type: type, place_ids: place_ids, add_time: add_time, allow_missing: allow_missing }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.add_fulfillment_places(::Google::Cloud::Retail::V2::AddFulfillmentPlacesRequest.new(product: product, type: type, place_ids: place_ids, add_time: add_time, allow_missing: allow_missing), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, add_fulfillment_places_client_stub.call_rpc_count
    end
  end

  def test_remove_fulfillment_places
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    product = "hello world"
    type = "hello world"
    place_ids = ["hello world"]
    remove_time = {}
    allow_missing = true

    remove_fulfillment_places_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :remove_fulfillment_places, name
      assert_kind_of ::Google::Cloud::Retail::V2::RemoveFulfillmentPlacesRequest, request
      assert_equal "hello world", request["product"]
      assert_equal "hello world", request["type"]
      assert_equal ["hello world"], request["place_ids"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["remove_time"]
      assert_equal true, request["allow_missing"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, remove_fulfillment_places_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.remove_fulfillment_places({ product: product, type: type, place_ids: place_ids, remove_time: remove_time, allow_missing: allow_missing }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.remove_fulfillment_places product: product, type: type, place_ids: place_ids, remove_time: remove_time, allow_missing: allow_missing do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.remove_fulfillment_places ::Google::Cloud::Retail::V2::RemoveFulfillmentPlacesRequest.new(product: product, type: type, place_ids: place_ids, remove_time: remove_time, allow_missing: allow_missing) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.remove_fulfillment_places({ product: product, type: type, place_ids: place_ids, remove_time: remove_time, allow_missing: allow_missing }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.remove_fulfillment_places(::Google::Cloud::Retail::V2::RemoveFulfillmentPlacesRequest.new(product: product, type: type, place_ids: place_ids, remove_time: remove_time, allow_missing: allow_missing), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, remove_fulfillment_places_client_stub.call_rpc_count
    end
  end

  def test_add_local_inventories
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    product = "hello world"
    local_inventories = [{}]
    add_mask = {}
    add_time = {}
    allow_missing = true

    add_local_inventories_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :add_local_inventories, name
      assert_kind_of ::Google::Cloud::Retail::V2::AddLocalInventoriesRequest, request
      assert_equal "hello world", request["product"]
      assert_kind_of ::Google::Cloud::Retail::V2::LocalInventory, request["local_inventories"].first
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["add_mask"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["add_time"]
      assert_equal true, request["allow_missing"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, add_local_inventories_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.add_local_inventories({ product: product, local_inventories: local_inventories, add_mask: add_mask, add_time: add_time, allow_missing: allow_missing }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.add_local_inventories product: product, local_inventories: local_inventories, add_mask: add_mask, add_time: add_time, allow_missing: allow_missing do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.add_local_inventories ::Google::Cloud::Retail::V2::AddLocalInventoriesRequest.new(product: product, local_inventories: local_inventories, add_mask: add_mask, add_time: add_time, allow_missing: allow_missing) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.add_local_inventories({ product: product, local_inventories: local_inventories, add_mask: add_mask, add_time: add_time, allow_missing: allow_missing }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.add_local_inventories(::Google::Cloud::Retail::V2::AddLocalInventoriesRequest.new(product: product, local_inventories: local_inventories, add_mask: add_mask, add_time: add_time, allow_missing: allow_missing), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, add_local_inventories_client_stub.call_rpc_count
    end
  end

  def test_remove_local_inventories
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    product = "hello world"
    place_ids = ["hello world"]
    remove_time = {}
    allow_missing = true

    remove_local_inventories_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :remove_local_inventories, name
      assert_kind_of ::Google::Cloud::Retail::V2::RemoveLocalInventoriesRequest, request
      assert_equal "hello world", request["product"]
      assert_equal ["hello world"], request["place_ids"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Timestamp), request["remove_time"]
      assert_equal true, request["allow_missing"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, remove_local_inventories_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.remove_local_inventories({ product: product, place_ids: place_ids, remove_time: remove_time, allow_missing: allow_missing }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.remove_local_inventories product: product, place_ids: place_ids, remove_time: remove_time, allow_missing: allow_missing do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.remove_local_inventories ::Google::Cloud::Retail::V2::RemoveLocalInventoriesRequest.new(product: product, place_ids: place_ids, remove_time: remove_time, allow_missing: allow_missing) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.remove_local_inventories({ product: product, place_ids: place_ids, remove_time: remove_time, allow_missing: allow_missing }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.remove_local_inventories(::Google::Cloud::Retail::V2::RemoveLocalInventoriesRequest.new(product: product, place_ids: place_ids, remove_time: remove_time, allow_missing: allow_missing), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, remove_local_inventories_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Retail::V2::ProductService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Retail::V2::ProductService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::Retail::V2::ProductService::Operations, client.operations_client
  end
end