# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/v2/conversation_dataset.proto for package 'google.cloud.dialogflow.v2'
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
require 'google/cloud/dialogflow/v2/conversation_dataset_pb'

module Google
  module Cloud
    module Dialogflow
      module V2
        module ConversationDatasets
          # Conversation datasets.
          #
          # Conversation datasets contain raw conversation files and their
          # customizable metadata that can be used for model training.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dialogflow.v2.ConversationDatasets'

            # Creates a new conversation dataset.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: [CreateConversationDatasetOperationMetadata][google.cloud.dialogflow.v2.CreateConversationDatasetOperationMetadata]
            # - `response`: [ConversationDataset][google.cloud.dialogflow.v2.ConversationDataset]
            rpc :CreateConversationDataset, ::Google::Cloud::Dialogflow::V2::CreateConversationDatasetRequest, ::Google::Longrunning::Operation
            # Retrieves the specified conversation dataset.
            rpc :GetConversationDataset, ::Google::Cloud::Dialogflow::V2::GetConversationDatasetRequest, ::Google::Cloud::Dialogflow::V2::ConversationDataset
            # Returns the list of all conversation datasets in the specified
            # project and location.
            rpc :ListConversationDatasets, ::Google::Cloud::Dialogflow::V2::ListConversationDatasetsRequest, ::Google::Cloud::Dialogflow::V2::ListConversationDatasetsResponse
            # Deletes the specified conversation dataset.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: [DeleteConversationDatasetOperationMetadata][google.cloud.dialogflow.v2.DeleteConversationDatasetOperationMetadata]
            # - `response`: An [Empty
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
            rpc :DeleteConversationDataset, ::Google::Cloud::Dialogflow::V2::DeleteConversationDatasetRequest, ::Google::Longrunning::Operation
            # Import data into the specified conversation dataset. Note that it
            # is not allowed to import data to a conversation dataset that
            # already has data in it.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/es/docs/how/long-running-operations).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: [ImportConversationDataOperationMetadata][google.cloud.dialogflow.v2.ImportConversationDataOperationMetadata]
            # - `response`: [ImportConversationDataOperationResponse][google.cloud.dialogflow.v2.ImportConversationDataOperationResponse]
            rpc :ImportConversationData, ::Google::Cloud::Dialogflow::V2::ImportConversationDataRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
