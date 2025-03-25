# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/aiplatform/v1/vertex_rag_data_service.proto for package 'Google.Cloud.AIPlatform.V1'
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
require 'google/cloud/aiplatform/v1/vertex_rag_data_service_pb'

module Google
  module Cloud
    module AIPlatform
      module V1
        module VertexRagDataService
          # A service for managing user data for RAG.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.aiplatform.v1.VertexRagDataService'

            # Creates a RagCorpus.
            rpc :CreateRagCorpus, ::Google::Cloud::AIPlatform::V1::CreateRagCorpusRequest, ::Google::Longrunning::Operation
            # Updates a RagCorpus.
            rpc :UpdateRagCorpus, ::Google::Cloud::AIPlatform::V1::UpdateRagCorpusRequest, ::Google::Longrunning::Operation
            # Gets a RagCorpus.
            rpc :GetRagCorpus, ::Google::Cloud::AIPlatform::V1::GetRagCorpusRequest, ::Google::Cloud::AIPlatform::V1::RagCorpus
            # Lists RagCorpora in a Location.
            rpc :ListRagCorpora, ::Google::Cloud::AIPlatform::V1::ListRagCorporaRequest, ::Google::Cloud::AIPlatform::V1::ListRagCorporaResponse
            # Deletes a RagCorpus.
            rpc :DeleteRagCorpus, ::Google::Cloud::AIPlatform::V1::DeleteRagCorpusRequest, ::Google::Longrunning::Operation
            # Upload a file into a RagCorpus.
            rpc :UploadRagFile, ::Google::Cloud::AIPlatform::V1::UploadRagFileRequest, ::Google::Cloud::AIPlatform::V1::UploadRagFileResponse
            # Import files from Google Cloud Storage or Google Drive into a RagCorpus.
            rpc :ImportRagFiles, ::Google::Cloud::AIPlatform::V1::ImportRagFilesRequest, ::Google::Longrunning::Operation
            # Gets a RagFile.
            rpc :GetRagFile, ::Google::Cloud::AIPlatform::V1::GetRagFileRequest, ::Google::Cloud::AIPlatform::V1::RagFile
            # Lists RagFiles in a RagCorpus.
            rpc :ListRagFiles, ::Google::Cloud::AIPlatform::V1::ListRagFilesRequest, ::Google::Cloud::AIPlatform::V1::ListRagFilesResponse
            # Deletes a RagFile.
            rpc :DeleteRagFile, ::Google::Cloud::AIPlatform::V1::DeleteRagFileRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
