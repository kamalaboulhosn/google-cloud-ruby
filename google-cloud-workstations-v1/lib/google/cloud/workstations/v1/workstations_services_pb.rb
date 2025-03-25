# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/workstations/v1/workstations.proto for package 'google.cloud.workstations.v1'
# Original file comments:
# Copyright 2024 Google LLC
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
require 'google/cloud/workstations/v1/workstations_pb'

module Google
  module Cloud
    module Workstations
      module V1
        module Workstations
          # Service for interacting with Cloud Workstations.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.workstations.v1.Workstations'

            # Returns the requested workstation cluster.
            rpc :GetWorkstationCluster, ::Google::Cloud::Workstations::V1::GetWorkstationClusterRequest, ::Google::Cloud::Workstations::V1::WorkstationCluster
            # Returns all workstation clusters in the specified location.
            rpc :ListWorkstationClusters, ::Google::Cloud::Workstations::V1::ListWorkstationClustersRequest, ::Google::Cloud::Workstations::V1::ListWorkstationClustersResponse
            # Creates a new workstation cluster.
            rpc :CreateWorkstationCluster, ::Google::Cloud::Workstations::V1::CreateWorkstationClusterRequest, ::Google::Longrunning::Operation
            # Updates an existing workstation cluster.
            rpc :UpdateWorkstationCluster, ::Google::Cloud::Workstations::V1::UpdateWorkstationClusterRequest, ::Google::Longrunning::Operation
            # Deletes the specified workstation cluster.
            rpc :DeleteWorkstationCluster, ::Google::Cloud::Workstations::V1::DeleteWorkstationClusterRequest, ::Google::Longrunning::Operation
            # Returns the requested workstation configuration.
            rpc :GetWorkstationConfig, ::Google::Cloud::Workstations::V1::GetWorkstationConfigRequest, ::Google::Cloud::Workstations::V1::WorkstationConfig
            # Returns all workstation configurations in the specified cluster.
            rpc :ListWorkstationConfigs, ::Google::Cloud::Workstations::V1::ListWorkstationConfigsRequest, ::Google::Cloud::Workstations::V1::ListWorkstationConfigsResponse
            # Returns all workstation configurations in the specified cluster on which
            # the caller has the "workstations.workstation.create" permission.
            rpc :ListUsableWorkstationConfigs, ::Google::Cloud::Workstations::V1::ListUsableWorkstationConfigsRequest, ::Google::Cloud::Workstations::V1::ListUsableWorkstationConfigsResponse
            # Creates a new workstation configuration.
            rpc :CreateWorkstationConfig, ::Google::Cloud::Workstations::V1::CreateWorkstationConfigRequest, ::Google::Longrunning::Operation
            # Updates an existing workstation configuration.
            rpc :UpdateWorkstationConfig, ::Google::Cloud::Workstations::V1::UpdateWorkstationConfigRequest, ::Google::Longrunning::Operation
            # Deletes the specified workstation configuration.
            rpc :DeleteWorkstationConfig, ::Google::Cloud::Workstations::V1::DeleteWorkstationConfigRequest, ::Google::Longrunning::Operation
            # Returns the requested workstation.
            rpc :GetWorkstation, ::Google::Cloud::Workstations::V1::GetWorkstationRequest, ::Google::Cloud::Workstations::V1::Workstation
            # Returns all Workstations using the specified workstation configuration.
            rpc :ListWorkstations, ::Google::Cloud::Workstations::V1::ListWorkstationsRequest, ::Google::Cloud::Workstations::V1::ListWorkstationsResponse
            # Returns all workstations using the specified workstation configuration
            # on which the caller has the "workstations.workstations.use" permission.
            rpc :ListUsableWorkstations, ::Google::Cloud::Workstations::V1::ListUsableWorkstationsRequest, ::Google::Cloud::Workstations::V1::ListUsableWorkstationsResponse
            # Creates a new workstation.
            rpc :CreateWorkstation, ::Google::Cloud::Workstations::V1::CreateWorkstationRequest, ::Google::Longrunning::Operation
            # Updates an existing workstation.
            rpc :UpdateWorkstation, ::Google::Cloud::Workstations::V1::UpdateWorkstationRequest, ::Google::Longrunning::Operation
            # Deletes the specified workstation.
            rpc :DeleteWorkstation, ::Google::Cloud::Workstations::V1::DeleteWorkstationRequest, ::Google::Longrunning::Operation
            # Starts running a workstation so that users can connect to it.
            rpc :StartWorkstation, ::Google::Cloud::Workstations::V1::StartWorkstationRequest, ::Google::Longrunning::Operation
            # Stops running a workstation, reducing costs.
            rpc :StopWorkstation, ::Google::Cloud::Workstations::V1::StopWorkstationRequest, ::Google::Longrunning::Operation
            # Returns a short-lived credential that can be used to send authenticated and
            # authorized traffic to a workstation.
            rpc :GenerateAccessToken, ::Google::Cloud::Workstations::V1::GenerateAccessTokenRequest, ::Google::Cloud::Workstations::V1::GenerateAccessTokenResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
