# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/devtools/cloudprofiler/v2/profiler.proto for package 'Google.Cloud.Profiler.V2'
# Original file comments:
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/devtools/cloudprofiler/v2/profiler_pb'

module Google
  module Cloud
    module Profiler
      module V2
        module ProfilerService
          # Manage the collection of continuous profiling data provided by profiling
          # agents running in the cloud or by an offline provider of profiling data.
          #
          # General guidelines:
          # * Profiles for a single deployment must be created in ascending time order.
          # * Profiles can be created in either online or offline mode, see below.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.devtools.cloudprofiler.v2.ProfilerService'

            # CreateProfile creates a new profile resource in the online mode.
            #
            # The server ensures that the new profiles are created at a constant rate per
            # deployment, so the creation request may hang for some time until the next
            # profile session is available.
            #
            # The request may fail with ABORTED error if the creation is not available
            # within ~1m, the response will indicate the duration of the backoff the
            # client should take before attempting creating a profile again. The backoff
            # duration is returned in google.rpc.RetryInfo extension on the response
            # status. To a gRPC client, the extension will be return as a
            # binary-serialized proto in the trailing metadata item named
            # "google.rpc.retryinfo-bin".
            rpc :CreateProfile, ::Google::Cloud::Profiler::V2::CreateProfileRequest, ::Google::Cloud::Profiler::V2::Profile
            # CreateOfflineProfile creates a new profile resource in the offline mode.
            # The client provides the profile to create along with the profile bytes, the
            # server records it.
            rpc :CreateOfflineProfile, ::Google::Cloud::Profiler::V2::CreateOfflineProfileRequest, ::Google::Cloud::Profiler::V2::Profile
            # UpdateProfile updates the profile bytes and labels on the profile resource
            # created in the online mode. Updating the bytes for profiles created in the
            # offline mode is currently not supported: the profile content must be
            # provided at the time of the profile creation.
            rpc :UpdateProfile, ::Google::Cloud::Profiler::V2::UpdateProfileRequest, ::Google::Cloud::Profiler::V2::Profile
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end