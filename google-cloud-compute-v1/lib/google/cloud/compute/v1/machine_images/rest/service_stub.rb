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

require "google/cloud/compute/v1/compute_pb"

module Google
  module Cloud
    module Compute
      module V1
        module MachineImages
          module Rest
            ##
            # REST service stub for the MachineImages service.
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
                                                             numeric_enums: false,
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
              # Baseline implementation for the delete REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteMachineImageRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def delete request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_delete_request request_pb
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
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the get REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetMachineImageRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Compute::V1::MachineImage]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Compute::V1::MachineImage]
              #   A result object deserialized from the server's reply
              def get request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_get_request request_pb
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
                result = ::Google::Cloud::Compute::V1::MachineImage.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the get_iam_policy REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetIamPolicyMachineImageRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Compute::V1::Policy]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Compute::V1::Policy]
              #   A result object deserialized from the server's reply
              def get_iam_policy request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_get_iam_policy_request request_pb
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
                result = ::Google::Cloud::Compute::V1::Policy.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the insert REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertMachineImageRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Compute::V1::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Compute::V1::Operation]
              #   A result object deserialized from the server's reply
              def insert request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_insert_request request_pb
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
                result = ::Google::Cloud::Compute::V1::Operation.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListMachineImagesRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Compute::V1::MachineImageList]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Compute::V1::MachineImageList]
              #   A result object deserialized from the server's reply
              def list request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_list_request request_pb
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
                result = ::Google::Cloud::Compute::V1::MachineImageList.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the set_iam_policy REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetIamPolicyMachineImageRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Compute::V1::Policy]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Compute::V1::Policy]
              #   A result object deserialized from the server's reply
              def set_iam_policy request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_set_iam_policy_request request_pb
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
                result = ::Google::Cloud::Compute::V1::Policy.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the test_iam_permissions REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::TestIamPermissionsMachineImageRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Compute::V1::TestPermissionsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Compute::V1::TestPermissionsResponse]
              #   A result object deserialized from the server's reply
              def test_iam_permissions request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_test_iam_permissions_request request_pb
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
                result = ::Google::Cloud::Compute::V1::TestPermissionsResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the delete REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::DeleteMachineImageRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_delete_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :delete,
                                                          uri_template: "/compute/v1/projects/{project}/global/machineImages/{machine_image}",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false],
                                                            ["machine_image", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the get REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetMachineImageRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_get_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/compute/v1/projects/{project}/global/machineImages/{machine_image}",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false],
                                                            ["machine_image", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the get_iam_policy REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::GetIamPolicyMachineImageRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_get_iam_policy_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/compute/v1/projects/{project}/global/machineImages/{resource}/getIamPolicy",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false],
                                                            ["resource", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the insert REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::InsertMachineImageRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_insert_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/compute/v1/projects/{project}/global/machineImages",
                                                          body: "machine_image_resource",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the list REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::ListMachineImagesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_list_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/compute/v1/projects/{project}/global/machineImages",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the set_iam_policy REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::SetIamPolicyMachineImageRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_set_iam_policy_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/compute/v1/projects/{project}/global/machineImages/{resource}/setIamPolicy",
                                                          body: "global_set_policy_request_resource",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false],
                                                            ["resource", %r{^[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the test_iam_permissions REST call
              #
              # @param request_pb [::Google::Cloud::Compute::V1::TestIamPermissionsMachineImageRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_test_iam_permissions_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/compute/v1/projects/{project}/global/machineImages/{resource}/testIamPermissions",
                                                          body: "test_permissions_request_resource",
                                                          matches: [
                                                            ["project", %r{^[^/]+/?$}, false],
                                                            ["resource", %r{^[^/]+/?$}, false]
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
