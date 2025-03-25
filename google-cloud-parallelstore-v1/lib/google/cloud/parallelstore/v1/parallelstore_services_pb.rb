# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/parallelstore/v1/parallelstore.proto for package 'Google.Cloud.Parallelstore.V1'
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
require 'google/cloud/parallelstore/v1/parallelstore_pb'

module Google
  module Cloud
    module Parallelstore
      module V1
        module Parallelstore
          # Service describing handlers for resources
          # Configures and manages parallelstore resources.
          #
          # Parallelstore service.
          #
          # The `parallelstore.googleapis.com` service implements the parallelstore API
          # and defines the following resource model for managing instances:
          # * The service works with a collection of cloud projects, named: `/projects/*`
          # * Each project has a collection of available locations, named: `/locations/*`
          # * Each location has a collection of instances named `/instances/*`.
          # * Parallelstore instances are resources of the form:
          #   `/projects/{project_id}/locations/{location_id}/instances/{instance_id}`
          #
          # Note that location_id must be a Google Cloud `zone`; for example:
          # * `projects/12345/locations/us-central1-c/instances/my-parallelstore-share`
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.parallelstore.v1.Parallelstore'

            # Lists all instances in a given project and location.
            rpc :ListInstances, ::Google::Cloud::Parallelstore::V1::ListInstancesRequest, ::Google::Cloud::Parallelstore::V1::ListInstancesResponse
            # Gets details of a single instance.
            rpc :GetInstance, ::Google::Cloud::Parallelstore::V1::GetInstanceRequest, ::Google::Cloud::Parallelstore::V1::Instance
            # Creates a Parallelstore instance in a given project and location.
            rpc :CreateInstance, ::Google::Cloud::Parallelstore::V1::CreateInstanceRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single instance.
            rpc :UpdateInstance, ::Google::Cloud::Parallelstore::V1::UpdateInstanceRequest, ::Google::Longrunning::Operation
            # Deletes a single instance.
            rpc :DeleteInstance, ::Google::Cloud::Parallelstore::V1::DeleteInstanceRequest, ::Google::Longrunning::Operation
            # Copies data from Cloud Storage to Parallelstore.
            rpc :ImportData, ::Google::Cloud::Parallelstore::V1::ImportDataRequest, ::Google::Longrunning::Operation
            # Copies data from Parallelstore to Cloud Storage.
            rpc :ExportData, ::Google::Cloud::Parallelstore::V1::ExportDataRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
