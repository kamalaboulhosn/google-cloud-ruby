# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/aiplatform/v1/specialist_pool_service.proto for package 'Google.Cloud.AIPlatform.V1'
# Original file comments:
# Copyright 2022 Google LLC
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
require 'google/cloud/aiplatform/v1/specialist_pool_service_pb'

module Google
  module Cloud
    module AIPlatform
      module V1
        module SpecialistPoolService
          # A service for creating and managing Customer SpecialistPools.
          # When customers start Data Labeling jobs, they can reuse/create Specialist
          # Pools to bring their own Specialists to label the data.
          # Customers can add/remove Managers for the Specialist Pool on Cloud console,
          # then Managers will get email notifications to manage Specialists and tasks on
          # CrowdCompute console.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.aiplatform.v1.SpecialistPoolService'

            # Creates a SpecialistPool.
            rpc :CreateSpecialistPool, ::Google::Cloud::AIPlatform::V1::CreateSpecialistPoolRequest, ::Google::Longrunning::Operation
            # Gets a SpecialistPool.
            rpc :GetSpecialistPool, ::Google::Cloud::AIPlatform::V1::GetSpecialistPoolRequest, ::Google::Cloud::AIPlatform::V1::SpecialistPool
            # Lists SpecialistPools in a Location.
            rpc :ListSpecialistPools, ::Google::Cloud::AIPlatform::V1::ListSpecialistPoolsRequest, ::Google::Cloud::AIPlatform::V1::ListSpecialistPoolsResponse
            # Deletes a SpecialistPool as well as all Specialists in the pool.
            rpc :DeleteSpecialistPool, ::Google::Cloud::AIPlatform::V1::DeleteSpecialistPoolRequest, ::Google::Longrunning::Operation
            # Updates a SpecialistPool.
            rpc :UpdateSpecialistPool, ::Google::Cloud::AIPlatform::V1::UpdateSpecialistPoolRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end