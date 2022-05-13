# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/dataflow/v1beta3/snapshots.proto for package 'Google.Cloud.Dataflow.V1beta3'
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
require 'google/dataflow/v1beta3/snapshots_pb'

module Google
  module Cloud
    module Dataflow
      module V1beta3
        module SnapshotsV1Beta3
          # Provides methods to manage snapshots of Google Cloud Dataflow jobs.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.dataflow.v1beta3.SnapshotsV1Beta3'

            # Gets information about a snapshot.
            rpc :GetSnapshot, ::Google::Cloud::Dataflow::V1beta3::GetSnapshotRequest, ::Google::Cloud::Dataflow::V1beta3::Snapshot
            # Deletes a snapshot.
            rpc :DeleteSnapshot, ::Google::Cloud::Dataflow::V1beta3::DeleteSnapshotRequest, ::Google::Cloud::Dataflow::V1beta3::DeleteSnapshotResponse
            # Lists snapshots.
            rpc :ListSnapshots, ::Google::Cloud::Dataflow::V1beta3::ListSnapshotsRequest, ::Google::Cloud::Dataflow::V1beta3::ListSnapshotsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end