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

require "google/api/cloudquotas/v1/cloudquotas_pb"

module Google
  module Cloud
    module CloudQuotas
      module V1
        module CloudQuotas
          module Rest
            ##
            # REST service stub for the CloudQuotas service.
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
              # Baseline implementation for the list_quota_infos REST call
              #
              # @param request_pb [::Google::Cloud::CloudQuotas::V1::ListQuotaInfosRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::CloudQuotas::V1::ListQuotaInfosResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::CloudQuotas::V1::ListQuotaInfosResponse]
              #   A result object deserialized from the server's reply
              def list_quota_infos request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_list_quota_infos_request request_pb
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
                  method_name: "list_quota_infos",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::CloudQuotas::V1::ListQuotaInfosResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the get_quota_info REST call
              #
              # @param request_pb [::Google::Cloud::CloudQuotas::V1::GetQuotaInfoRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::CloudQuotas::V1::QuotaInfo]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::CloudQuotas::V1::QuotaInfo]
              #   A result object deserialized from the server's reply
              def get_quota_info request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_get_quota_info_request request_pb
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
                  method_name: "get_quota_info",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::CloudQuotas::V1::QuotaInfo.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the list_quota_preferences REST call
              #
              # @param request_pb [::Google::Cloud::CloudQuotas::V1::ListQuotaPreferencesRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::CloudQuotas::V1::ListQuotaPreferencesResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::CloudQuotas::V1::ListQuotaPreferencesResponse]
              #   A result object deserialized from the server's reply
              def list_quota_preferences request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_list_quota_preferences_request request_pb
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
                  method_name: "list_quota_preferences",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::CloudQuotas::V1::ListQuotaPreferencesResponse.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the get_quota_preference REST call
              #
              # @param request_pb [::Google::Cloud::CloudQuotas::V1::GetQuotaPreferenceRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::CloudQuotas::V1::QuotaPreference]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::CloudQuotas::V1::QuotaPreference]
              #   A result object deserialized from the server's reply
              def get_quota_preference request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_get_quota_preference_request request_pb
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
                  method_name: "get_quota_preference",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::CloudQuotas::V1::QuotaPreference.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the create_quota_preference REST call
              #
              # @param request_pb [::Google::Cloud::CloudQuotas::V1::CreateQuotaPreferenceRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::CloudQuotas::V1::QuotaPreference]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::CloudQuotas::V1::QuotaPreference]
              #   A result object deserialized from the server's reply
              def create_quota_preference request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_create_quota_preference_request request_pb
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
                  method_name: "create_quota_preference",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::CloudQuotas::V1::QuotaPreference.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # Baseline implementation for the update_quota_preference REST call
              #
              # @param request_pb [::Google::Cloud::CloudQuotas::V1::UpdateQuotaPreferenceRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::CloudQuotas::V1::QuotaPreference]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::CloudQuotas::V1::QuotaPreference]
              #   A result object deserialized from the server's reply
              def update_quota_preference request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_update_quota_preference_request request_pb
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
                  method_name: "update_quota_preference",
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::CloudQuotas::V1::QuotaPreference.decode_json response.body, ignore_unknown_fields: true
                catch :response do
                  yield result, operation if block_given?
                  result
                end
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the list_quota_infos REST call
              #
              # @param request_pb [::Google::Cloud::CloudQuotas::V1::ListQuotaInfosRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_list_quota_infos_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{parent}/quotaInfos",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/services/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{parent}/quotaInfos",
                                                          matches: [
                                                            ["parent", %r{^organizations/[^/]+/locations/[^/]+/services/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{parent}/quotaInfos",
                                                          matches: [
                                                            ["parent", %r{^folders/[^/]+/locations/[^/]+/services/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the get_quota_info REST call
              #
              # @param request_pb [::Google::Cloud::CloudQuotas::V1::GetQuotaInfoRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_get_quota_info_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{name}",
                                                          matches: [
                                                            ["name", %r{^projects/[^/]+/locations/[^/]+/services/[^/]+/quotaInfos/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{name}",
                                                          matches: [
                                                            ["name", %r{^organizations/[^/]+/locations/[^/]+/services/[^/]+/quotaInfos/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{name}",
                                                          matches: [
                                                            ["name", %r{^folders/[^/]+/locations/[^/]+/services/[^/]+/quotaInfos/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the list_quota_preferences REST call
              #
              # @param request_pb [::Google::Cloud::CloudQuotas::V1::ListQuotaPreferencesRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_list_quota_preferences_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{parent}/quotaPreferences",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{parent}/quotaPreferences",
                                                          matches: [
                                                            ["parent", %r{^folders/[^/]+/locations/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{parent}/quotaPreferences",
                                                          matches: [
                                                            ["parent", %r{^organizations/[^/]+/locations/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the get_quota_preference REST call
              #
              # @param request_pb [::Google::Cloud::CloudQuotas::V1::GetQuotaPreferenceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_get_quota_preference_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{name}",
                                                          matches: [
                                                            ["name", %r{^projects/[^/]+/locations/[^/]+/quotaPreferences/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{name}",
                                                          matches: [
                                                            ["name", %r{^organizations/[^/]+/locations/[^/]+/quotaPreferences/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1/{name}",
                                                          matches: [
                                                            ["name", %r{^folders/[^/]+/locations/[^/]+/quotaPreferences/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the create_quota_preference REST call
              #
              # @param request_pb [::Google::Cloud::CloudQuotas::V1::CreateQuotaPreferenceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_create_quota_preference_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{parent}/quotaPreferences",
                                                          body: "quota_preference",
                                                          matches: [
                                                            ["parent", %r{^projects/[^/]+/locations/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{parent}/quotaPreferences",
                                                          body: "quota_preference",
                                                          matches: [
                                                            ["parent", %r{^folders/[^/]+/locations/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :post,
                                                          uri_template: "/v1/{parent}/quotaPreferences",
                                                          body: "quota_preference",
                                                          matches: [
                                                            ["parent", %r{^organizations/[^/]+/locations/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the update_quota_preference REST call
              #
              # @param request_pb [::Google::Cloud::CloudQuotas::V1::UpdateQuotaPreferenceRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_update_quota_preference_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :patch,
                                                          uri_template: "/v1/{quota_preference.name}",
                                                          body: "quota_preference",
                                                          matches: [
                                                            ["quota_preference.name", %r{^projects/[^/]+/locations/[^/]+/quotaPreferences/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :patch,
                                                          uri_template: "/v1/{quota_preference.name}",
                                                          body: "quota_preference",
                                                          matches: [
                                                            ["quota_preference.name", %r{^folders/[^/]+/locations/[^/]+/quotaPreferences/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :patch,
                                                          uri_template: "/v1/{quota_preference.name}",
                                                          body: "quota_preference",
                                                          matches: [
                                                            ["quota_preference.name", %r{^organizations/[^/]+/locations/[^/]+/quotaPreferences/[^/]+/?$}, false]
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
