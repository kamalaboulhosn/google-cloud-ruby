# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/config/v1/config.proto for package 'Google.Cloud.ConfigService.V1'
# Original file comments:
# Copyright 2023 Google LLC
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
require 'google/cloud/config/v1/config_pb'

module Google
  module Cloud
    module ConfigService
      module V1
        module Config
          # Infrastructure Manager is a managed service that automates the deployment and
          # management of Google Cloud infrastructure resources.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.config.v1.Config'

            # Lists [Deployment][google.cloud.config.v1.Deployment]s in a given project
            # and location.
            rpc :ListDeployments, ::Google::Cloud::ConfigService::V1::ListDeploymentsRequest, ::Google::Cloud::ConfigService::V1::ListDeploymentsResponse
            # Gets details about a [Deployment][google.cloud.config.v1.Deployment].
            rpc :GetDeployment, ::Google::Cloud::ConfigService::V1::GetDeploymentRequest, ::Google::Cloud::ConfigService::V1::Deployment
            # Creates a [Deployment][google.cloud.config.v1.Deployment].
            rpc :CreateDeployment, ::Google::Cloud::ConfigService::V1::CreateDeploymentRequest, ::Google::Longrunning::Operation
            # Updates a [Deployment][google.cloud.config.v1.Deployment].
            rpc :UpdateDeployment, ::Google::Cloud::ConfigService::V1::UpdateDeploymentRequest, ::Google::Longrunning::Operation
            # Deletes a [Deployment][google.cloud.config.v1.Deployment].
            rpc :DeleteDeployment, ::Google::Cloud::ConfigService::V1::DeleteDeploymentRequest, ::Google::Longrunning::Operation
            # Lists [Revision][google.cloud.config.v1.Revision]s of a deployment.
            rpc :ListRevisions, ::Google::Cloud::ConfigService::V1::ListRevisionsRequest, ::Google::Cloud::ConfigService::V1::ListRevisionsResponse
            # Gets details about a [Revision][google.cloud.config.v1.Revision].
            rpc :GetRevision, ::Google::Cloud::ConfigService::V1::GetRevisionRequest, ::Google::Cloud::ConfigService::V1::Revision
            # Gets details about a [Resource][google.cloud.config.v1.Resource] deployed
            # by Infra Manager.
            rpc :GetResource, ::Google::Cloud::ConfigService::V1::GetResourceRequest, ::Google::Cloud::ConfigService::V1::Resource
            # Lists [Resources][google.cloud.config.v1.Resource] in a given revision.
            rpc :ListResources, ::Google::Cloud::ConfigService::V1::ListResourcesRequest, ::Google::Cloud::ConfigService::V1::ListResourcesResponse
            # Exports Terraform state file from a given deployment.
            rpc :ExportDeploymentStatefile, ::Google::Cloud::ConfigService::V1::ExportDeploymentStatefileRequest, ::Google::Cloud::ConfigService::V1::Statefile
            # Exports Terraform state file from a given revision.
            rpc :ExportRevisionStatefile, ::Google::Cloud::ConfigService::V1::ExportRevisionStatefileRequest, ::Google::Cloud::ConfigService::V1::Statefile
            # Imports Terraform state file in a given deployment. The state file does not
            # take effect until the Deployment has been unlocked.
            rpc :ImportStatefile, ::Google::Cloud::ConfigService::V1::ImportStatefileRequest, ::Google::Cloud::ConfigService::V1::Statefile
            # Deletes Terraform state file in a given deployment.
            rpc :DeleteStatefile, ::Google::Cloud::ConfigService::V1::DeleteStatefileRequest, ::Google::Protobuf::Empty
            # Locks a deployment.
            rpc :LockDeployment, ::Google::Cloud::ConfigService::V1::LockDeploymentRequest, ::Google::Longrunning::Operation
            # Unlocks a locked deployment.
            rpc :UnlockDeployment, ::Google::Cloud::ConfigService::V1::UnlockDeploymentRequest, ::Google::Longrunning::Operation
            # Exports the lock info on a locked deployment.
            rpc :ExportLockInfo, ::Google::Cloud::ConfigService::V1::ExportLockInfoRequest, ::Google::Cloud::ConfigService::V1::LockInfo
            # Creates a [Preview][google.cloud.config.v1.Preview].
            rpc :CreatePreview, ::Google::Cloud::ConfigService::V1::CreatePreviewRequest, ::Google::Longrunning::Operation
            # Gets details about a [Preview][google.cloud.config.v1.Preview].
            rpc :GetPreview, ::Google::Cloud::ConfigService::V1::GetPreviewRequest, ::Google::Cloud::ConfigService::V1::Preview
            # Lists [Preview][google.cloud.config.v1.Preview]s in a given project and
            # location.
            rpc :ListPreviews, ::Google::Cloud::ConfigService::V1::ListPreviewsRequest, ::Google::Cloud::ConfigService::V1::ListPreviewsResponse
            # Deletes a [Preview][google.cloud.config.v1.Preview].
            rpc :DeletePreview, ::Google::Cloud::ConfigService::V1::DeletePreviewRequest, ::Google::Longrunning::Operation
            # Export [Preview][google.cloud.config.v1.Preview] results.
            rpc :ExportPreviewResult, ::Google::Cloud::ConfigService::V1::ExportPreviewResultRequest, ::Google::Cloud::ConfigService::V1::ExportPreviewResultResponse
            # Lists [TerraformVersion][google.cloud.config.v1.TerraformVersion]s in a
            # given project and location.
            rpc :ListTerraformVersions, ::Google::Cloud::ConfigService::V1::ListTerraformVersionsRequest, ::Google::Cloud::ConfigService::V1::ListTerraformVersionsResponse
            # Gets details about a
            # [TerraformVersion][google.cloud.config.v1.TerraformVersion].
            rpc :GetTerraformVersion, ::Google::Cloud::ConfigService::V1::GetTerraformVersionRequest, ::Google::Cloud::ConfigService::V1::TerraformVersion
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
