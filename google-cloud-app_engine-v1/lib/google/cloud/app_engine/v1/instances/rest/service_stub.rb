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

require "google/appengine/v1/appengine_pb"

module Google
  module Cloud
    module AppEngine
      module V1
        module Instances
          module Rest
            ##
            # REST service stub for the Instances service.
            # Service stub contains baseline method implementations
            # including transcoding, making the REST call, and deserialing the response.
            #
            class ServiceStub
              # @private
              def initialize endpoint:, endpoint_template:, universe_domain:, credentials:, logger:
                # These require statements are intentionally placed here to initialize
                # the REST modules only when it's required.
                require "gapic/rest"

                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint,
                                                             endpoint_template: endpoint_template,
                                                             universe_domain: universe_domain,
                                                             credentials: credentials,
                                                             numeric_enums: true,
                                                             service_name: self.class,
                                                             raise_faraday_errors: false,
                                                             logger: logger
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
              # The logger used for request/response debug logging.
              #
              # @return [Logger]
              #
              def logger stub: false
                stub ? @client_stub.stub_logger : @client_stub.logger
              end

              ##
              # Baseline implementation for the list_instances REST call
              #
              # @param request_pb [::Google::Cloud::AppEngine::V1::ListInstancesRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AppEngine::V1::ListInstancesResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AppEngine::V1::ListInstancesResponse]
              #   A result object deserialized from the server's reply
              def list_instances request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_list_instances_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "list_instances",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::AppEngine::V1::ListInstancesResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the get_instance REST call
              #
              # @param request_pb [::Google::Cloud::AppEngine::V1::GetInstanceRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::AppEngine::V1::Instance]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::AppEngine::V1::Instance]
              #   A result object deserialized from the server's reply
              def get_instance request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_get_instance_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "get_instance",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::AppEngine::V1::Instance.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the delete_instance REST call
              #
              # @param request_pb [::Google::Cloud::AppEngine::V1::DeleteInstanceRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Longrunning::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Longrunning::Operation]
              #   A result object deserialized from the server's reply
              def delete_instance request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_delete_instance_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "delete_instance",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the debug_instance REST call
              #
              # @param request_pb [::Google::Cloud::AppEngine::V1::DebugInstanceRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Longrunning::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Longrunning::Operation]
              #   A result object deserialized from the server's reply
              def debug_instance request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_debug_instance_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri: uri,
                  body: body || "",
                  params: query_string_params,
                  method_name: "debug_instance",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the list_instances REST call
              #
              # @param request_pb [::Google::Cloud::AppEngine::V1::ListInstancesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_list_instances_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{parent}/instances",
                                                          matches: [
                                                            ["parent", %r{^apps/[^/]+/services/[^/]+/versions/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the get_instance REST call
              #
              # @param request_pb [::Google::Cloud::AppEngine::V1::GetInstanceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_get_instance_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{name}",
                                                          matches: [
                                                            ["name", %r{^apps/[^/]+/services/[^/]+/versions/[^/]+/instances/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the delete_instance REST call
              #
              # @param request_pb [::Google::Cloud::AppEngine::V1::DeleteInstanceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_delete_instance_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :delete,
                                                          uri_template: "/v1/{name}",
                                                          matches: [
                                                            ["name", %r{^apps/[^/]+/services/[^/]+/versions/[^/]+/instances/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the debug_instance REST call
              #
              # @param request_pb [::Google::Cloud::AppEngine::V1::DebugInstanceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_debug_instance_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{name}:debug",
                                                          body: "*",
                                                          matches: [
                                                            ["name", %r{^apps/[^/]+/services/[^/]+/versions/[^/]+/instances/[^/]+/?$}, false]
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
