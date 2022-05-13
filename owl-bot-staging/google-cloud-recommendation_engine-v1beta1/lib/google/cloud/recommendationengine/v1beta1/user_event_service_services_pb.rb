# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/recommendationengine/v1beta1/user_event_service.proto for package 'Google.Cloud.RecommendationEngine.V1beta1'
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
require 'google/cloud/recommendationengine/v1beta1/user_event_service_pb'

module Google
  module Cloud
    module RecommendationEngine
      module V1beta1
        module UserEventService
          # Service for ingesting end user actions on the customer website.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.recommendationengine.v1beta1.UserEventService'

            # Writes a single user event.
            rpc :WriteUserEvent, ::Google::Cloud::RecommendationEngine::V1beta1::WriteUserEventRequest, ::Google::Cloud::RecommendationEngine::V1beta1::UserEvent
            # Writes a single user event from the browser. This uses a GET request to
            # due to browser restriction of POST-ing to a 3rd party domain.
            #
            # This method is used only by the Recommendations AI JavaScript pixel.
            # Users should not call this method directly.
            rpc :CollectUserEvent, ::Google::Cloud::RecommendationEngine::V1beta1::CollectUserEventRequest, ::Google::Api::HttpBody
            # Gets a list of user events within a time range, with potential filtering.
            rpc :ListUserEvents, ::Google::Cloud::RecommendationEngine::V1beta1::ListUserEventsRequest, ::Google::Cloud::RecommendationEngine::V1beta1::ListUserEventsResponse
            # Deletes permanently all user events specified by the filter provided.
            # Depending on the number of events specified by the filter, this operation
            # could take hours or days to complete. To test a filter, use the list
            # command first.
            rpc :PurgeUserEvents, ::Google::Cloud::RecommendationEngine::V1beta1::PurgeUserEventsRequest, ::Google::Longrunning::Operation
            # Bulk import of User events. Request processing might be
            # synchronous. Events that already exist are skipped.
            # Use this method for backfilling historical user events.
            #
            # Operation.response is of type ImportResponse. Note that it is
            # possible for a subset of the items to be successfully inserted.
            # Operation.metadata is of type ImportMetadata.
            rpc :ImportUserEvents, ::Google::Cloud::RecommendationEngine::V1beta1::ImportUserEventsRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end