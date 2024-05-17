# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "google/maps/fleetengine/delivery/v1/delivery_api_pb"

module Google
  module Maps
    module FleetEngine
      module Delivery
        module V1
          module DeliveryService
            module Rest
              ##
              # REST service stub for the DeliveryService service.
              # Service stub contains baseline method implementations
              # including transcoding, making the REST call, and deserialing the response.
              #
              class ServiceStub
                def initialize endpoint:, endpoint_template:, universe_domain:, credentials:
                  # These require statements are intentionally placed here to initialize
                  # the REST modules only when it's required.
                  require "gapic/rest"

                  @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint,
                                                               endpoint_template: endpoint_template,
                                                               universe_domain: universe_domain,
                                                               credentials: credentials,
                                                               numeric_enums: true,
                                                               raise_faraday_errors: false
                end

                ##
                # The effective universe domain
                #
                # @return [String]
                #
                def universe_domain
                  @client_stub.universe_domain
                end

                ##
                # The effective endpoint
                #
                # @return [String]
                #
                def endpoint
                  @client_stub.endpoint
                end

                ##
                # Baseline implementation for the create_delivery_vehicle REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::CreateDeliveryVehicleRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle]
                #   A result object deserialized from the server's reply
                def create_delivery_vehicle request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_create_delivery_vehicle_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the get_delivery_vehicle REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::GetDeliveryVehicleRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle]
                #   A result object deserialized from the server's reply
                def get_delivery_vehicle request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_get_delivery_vehicle_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the update_delivery_vehicle REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::UpdateDeliveryVehicleRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle]
                #   A result object deserialized from the server's reply
                def update_delivery_vehicle request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_update_delivery_vehicle_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the batch_create_tasks REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::BatchCreateTasksRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Maps::FleetEngine::Delivery::V1::BatchCreateTasksResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Maps::FleetEngine::Delivery::V1::BatchCreateTasksResponse]
                #   A result object deserialized from the server's reply
                def batch_create_tasks request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_batch_create_tasks_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Maps::FleetEngine::Delivery::V1::BatchCreateTasksResponse.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the create_task REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::CreateTaskRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Maps::FleetEngine::Delivery::V1::Task]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Maps::FleetEngine::Delivery::V1::Task]
                #   A result object deserialized from the server's reply
                def create_task request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_create_task_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Maps::FleetEngine::Delivery::V1::Task.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the get_task REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::GetTaskRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Maps::FleetEngine::Delivery::V1::Task]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Maps::FleetEngine::Delivery::V1::Task]
                #   A result object deserialized from the server's reply
                def get_task request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_get_task_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Maps::FleetEngine::Delivery::V1::Task.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the update_task REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::UpdateTaskRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Maps::FleetEngine::Delivery::V1::Task]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Maps::FleetEngine::Delivery::V1::Task]
                #   A result object deserialized from the server's reply
                def update_task request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_update_task_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Maps::FleetEngine::Delivery::V1::Task.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the list_tasks REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::ListTasksRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Maps::FleetEngine::Delivery::V1::ListTasksResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Maps::FleetEngine::Delivery::V1::ListTasksResponse]
                #   A result object deserialized from the server's reply
                def list_tasks request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_list_tasks_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Maps::FleetEngine::Delivery::V1::ListTasksResponse.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the get_task_tracking_info REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::GetTaskTrackingInfoRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Maps::FleetEngine::Delivery::V1::TaskTrackingInfo]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Maps::FleetEngine::Delivery::V1::TaskTrackingInfo]
                #   A result object deserialized from the server's reply
                def get_task_tracking_info request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_get_task_tracking_info_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Maps::FleetEngine::Delivery::V1::TaskTrackingInfo.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the list_delivery_vehicles REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::ListDeliveryVehiclesRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Maps::FleetEngine::Delivery::V1::ListDeliveryVehiclesResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Maps::FleetEngine::Delivery::V1::ListDeliveryVehiclesResponse]
                #   A result object deserialized from the server's reply
                def list_delivery_vehicles request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_list_delivery_vehicles_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split "=", 2 }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Maps::FleetEngine::Delivery::V1::ListDeliveryVehiclesResponse.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the create_delivery_vehicle REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::CreateDeliveryVehicleRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_create_delivery_vehicle_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v1/{parent}/deliveryVehicles",
                                                            body: "delivery_vehicle",
                                                            matches: [
                                                              ["parent", %r{^providers/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the get_delivery_vehicle REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::GetDeliveryVehicleRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_get_delivery_vehicle_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{name}",
                                                            matches: [
                                                              ["name", %r{^providers/[^/]+/deliveryVehicles/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the update_delivery_vehicle REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::UpdateDeliveryVehicleRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_update_delivery_vehicle_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :patch,
                                                            uri_template: "/v1/{delivery_vehicle.name}",
                                                            body: "delivery_vehicle",
                                                            matches: [
                                                              ["delivery_vehicle.name", %r{^providers/[^/]+/deliveryVehicles/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the batch_create_tasks REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::BatchCreateTasksRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_batch_create_tasks_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v1/{parent}/tasks:batchCreate",
                                                            body: "*",
                                                            matches: [
                                                              ["parent", %r{^providers/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the create_task REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::CreateTaskRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_create_task_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v1/{parent}/tasks",
                                                            body: "task",
                                                            matches: [
                                                              ["parent", %r{^providers/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the get_task REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::GetTaskRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_get_task_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{name}",
                                                            matches: [
                                                              ["name", %r{^providers/[^/]+/tasks/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the update_task REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::UpdateTaskRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_update_task_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :patch,
                                                            uri_template: "/v1/{task.name}",
                                                            body: "task",
                                                            matches: [
                                                              ["task.name", %r{^providers/[^/]+/tasks/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the list_tasks REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::ListTasksRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_list_tasks_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{parent}/tasks",
                                                            matches: [
                                                              ["parent", %r{^providers/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the get_task_tracking_info REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::GetTaskTrackingInfoRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_get_task_tracking_info_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{name}",
                                                            matches: [
                                                              ["name", %r{^providers/[^/]+/taskTrackingInfo/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the list_delivery_vehicles REST call
                #
                # @param request_pb [::Google::Maps::FleetEngine::Delivery::V1::ListDeliveryVehiclesRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_list_delivery_vehicles_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v1/{parent}/deliveryVehicles",
                                                            matches: [
                                                              ["parent", %r{^providers/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end
              end
            end
          end
        end
      end
    end
  end
end
