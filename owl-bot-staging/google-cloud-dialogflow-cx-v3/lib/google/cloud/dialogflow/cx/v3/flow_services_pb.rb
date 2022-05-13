# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/cx/v3/flow.proto for package 'Google.Cloud.Dialogflow.CX.V3'
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
require 'google/cloud/dialogflow/cx/v3/flow_pb'

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          module Flows
            # Service for managing [Flows][google.cloud.dialogflow.cx.v3.Flow].
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.dialogflow.cx.v3.Flows'

              # Creates a flow in the specified agent.
              #
              # Note: You should always train a flow prior to sending it queries. See the
              # [training
              # documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
              rpc :CreateFlow, ::Google::Cloud::Dialogflow::CX::V3::CreateFlowRequest, ::Google::Cloud::Dialogflow::CX::V3::Flow
              # Deletes a specified flow.
              rpc :DeleteFlow, ::Google::Cloud::Dialogflow::CX::V3::DeleteFlowRequest, ::Google::Protobuf::Empty
              # Returns the list of all flows in the specified agent.
              rpc :ListFlows, ::Google::Cloud::Dialogflow::CX::V3::ListFlowsRequest, ::Google::Cloud::Dialogflow::CX::V3::ListFlowsResponse
              # Retrieves the specified flow.
              rpc :GetFlow, ::Google::Cloud::Dialogflow::CX::V3::GetFlowRequest, ::Google::Cloud::Dialogflow::CX::V3::Flow
              # Updates the specified flow.
              #
              # Note: You should always train a flow prior to sending it queries. See the
              # [training
              # documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
              rpc :UpdateFlow, ::Google::Cloud::Dialogflow::CX::V3::UpdateFlowRequest, ::Google::Cloud::Dialogflow::CX::V3::Flow
              # Trains the specified flow. Note that only the flow in 'draft' environment
              # is trained.
              #
              # This method is a [long-running
              # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
              # The returned `Operation` type has the following method-specific fields:
              #
              # - `metadata`: An empty [Struct
              #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
              # - `response`: An [Empty
              #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
              #
              # Note: You should always train a flow prior to sending it queries. See the
              # [training
              # documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
              rpc :TrainFlow, ::Google::Cloud::Dialogflow::CX::V3::TrainFlowRequest, ::Google::Longrunning::Operation
              # Validates the specified flow and creates or updates validation results.
              # Please call this API after the training is completed to get the complete
              # validation results.
              rpc :ValidateFlow, ::Google::Cloud::Dialogflow::CX::V3::ValidateFlowRequest, ::Google::Cloud::Dialogflow::CX::V3::FlowValidationResult
              # Gets the latest flow validation result. Flow validation is performed
              # when ValidateFlow is called.
              rpc :GetFlowValidationResult, ::Google::Cloud::Dialogflow::CX::V3::GetFlowValidationResultRequest, ::Google::Cloud::Dialogflow::CX::V3::FlowValidationResult
              # Imports the specified flow to the specified agent from a binary file.
              #
              # This method is a [long-running
              # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
              # The returned `Operation` type has the following method-specific fields:
              #
              # - `metadata`: An empty [Struct
              #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
              # - `response`: [ImportFlowResponse][google.cloud.dialogflow.cx.v3.ImportFlowResponse]
              #
              # Note: You should always train a flow prior to sending it queries. See the
              # [training
              # documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
              rpc :ImportFlow, ::Google::Cloud::Dialogflow::CX::V3::ImportFlowRequest, ::Google::Longrunning::Operation
              # Exports the specified flow to a binary file.
              #
              # This method is a [long-running
              # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
              # The returned `Operation` type has the following method-specific fields:
              #
              # - `metadata`: An empty [Struct
              #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#struct)
              # - `response`: [ExportFlowResponse][google.cloud.dialogflow.cx.v3.ExportFlowResponse]
              #
              # Note that resources (e.g. intents, entities, webhooks) that the flow
              # references will also be exported.
              rpc :ExportFlow, ::Google::Cloud::Dialogflow::CX::V3::ExportFlowRequest, ::Google::Longrunning::Operation
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end