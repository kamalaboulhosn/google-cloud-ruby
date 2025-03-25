# frozen_string_literal: true

# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Maps
    module FleetEngine
      module Delivery
        module V1
          # The `CreateDeliveryVehicle` request message.
          # @!attribute [rw] header
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader]
          #     Optional. The standard Delivery API request header.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Must be in the format `providers/{provider}`. The provider must
          #     be the Google Cloud Project ID. For example, `sample-cloud-project`.
          # @!attribute [rw] delivery_vehicle_id
          #   @return [::String]
          #     Required. The Delivery Vehicle ID must be unique and subject to the
          #     following restrictions:
          #
          #     * Must be a valid Unicode string.
          #     * Limited to a maximum length of 64 characters.
          #     * Normalized according to [Unicode Normalization Form C]
          #     (http://www.unicode.org/reports/tr15/).
          #     * May not contain any of the following ASCII characters: '/', ':', '?',
          #     ',', or '#'.
          # @!attribute [rw] delivery_vehicle
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle]
          #     Required. The `DeliveryVehicle` entity to create. When creating a new
          #     delivery vehicle, you may set the following optional fields:
          #
          #     * type
          #     * last_location
          #     * attributes
          #
          #     Note: The DeliveryVehicle's `name` field is ignored. All other
          #     DeliveryVehicle fields must not be set; otherwise, an error is returned.
          class CreateDeliveryVehicleRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The `GetDeliveryVehicle` request message.
          # @!attribute [rw] header
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader]
          #     Optional. The standard Delivery API request header.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Must be in the format
          #     `providers/{provider}/deliveryVehicles/{delivery_vehicle}`.
          #     The `provider` must be the Google Cloud Project ID. For example,
          #     `sample-cloud-project`.
          class GetDeliveryVehicleRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # DeleteDeliveryVehicle request message.
          # @!attribute [rw] header
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader]
          #     Optional. The standard Delivery API request header.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Must be in the format
          #     `providers/{provider}/deliveryVehicles/{delivery_vehicle}`.
          #     The `provider` must be the Google Cloud Project ID. For example,
          #     `sample-cloud-project`.
          class DeleteDeliveryVehicleRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The `ListDeliveryVehicles` request message.
          # @!attribute [rw] header
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader]
          #     Optional. The standard Delivery API request header.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Must be in the format `providers/{provider}`.
          #     The `provider` must be the Google Cloud Project ID.
          #     For example, `sample-cloud-project`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Optional. The maximum number of vehicles to return. The service may return
          #     fewer than this number. If you don't specify this number, then the server
          #     determines the number of results to return.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     Optional. A page token, received from a previous `ListDeliveryVehicles`
          #     call. You must provide this in order to retrieve the subsequent page.
          #
          #     When paginating, all other parameters provided to `ListDeliveryVehicles`
          #     must match the call that provided the page token.
          # @!attribute [rw] filter
          #   @return [::String]
          #     Optional. A filter query to apply when listing delivery vehicles. See
          #     http://aip.dev/160 for examples of the filter syntax. If you don't specify
          #     a value, or if you specify an empty string for the filter, then all
          #     delivery vehicles are returned.
          #
          #     Note that the only queries supported for `ListDeliveryVehicles` are
          #     on vehicle attributes (for example, `attributes.<key> = <value>` or
          #     `attributes.<key1> = <value1> AND attributes.<key2> = <value2>`). Also, all
          #     attributes are stored as strings, so the only supported comparisons against
          #     attributes are string comparisons. In order to compare against number or
          #     boolean values, the values must be explicitly quoted to be treated as
          #     strings (for example, `attributes.<key> = "10"` or
          #     `attributes.<key> = "true"`).
          #
          #     The maximum number of restrictions allowed in a filter query is 50. A
          #     restriction is a part of the query of the form
          #     `attribute.<KEY> <COMPARATOR> <VALUE>`, for example `attributes.foo = bar`
          #     is 1 restriction.
          # @!attribute [rw] viewport
          #   @return [::Google::Geo::Type::Viewport]
          #     Optional. A filter that limits the vehicles returned to those whose last
          #     known location was in the rectangular area defined by the viewport.
          class ListDeliveryVehiclesRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The `ListDeliveryVehicles` response message.
          # @!attribute [rw] delivery_vehicles
          #   @return [::Array<::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle>]
          #     The set of delivery vehicles that meet the requested filtering criteria.
          #     When no filter is specified, the request returns all delivery vehicles. A
          #     successful response can also be empty. An empty response indicates that no
          #     delivery vehicles were found meeting the requested filter criteria.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     You can pass this token in the `ListDeliveryVehiclesRequest` to continue to
          #     list results. When all of the results are returned, this field won't be in
          #     the response, or it will be an empty string.
          # @!attribute [rw] total_size
          #   @return [::Integer]
          #     The total number of delivery vehicles that match the request criteria,
          #     across all pages.
          class ListDeliveryVehiclesResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The `UpdateDeliveryVehicle` request message.
          # @!attribute [rw] header
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader]
          #     Optional. The standard Delivery API request header.
          # @!attribute [rw] delivery_vehicle
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryVehicle]
          #     Required. The `DeliveryVehicle` entity update to apply.
          #     Note: You cannot update the name of the `DeliveryVehicle`.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. A field mask that indicates which `DeliveryVehicle` fields to
          #     update. Note that the update_mask must contain at least one field.
          #
          #     This is a comma-separated list of fully qualified names of fields. Example:
          #     `"remaining_vehicle_journey_segments"`.
          class UpdateDeliveryVehicleRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The `BatchCreateTask` request message.
          # @!attribute [rw] header
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader]
          #     Optional. The standard Delivery API request header.
          #     Note: If you set this field, then the header field in the
          #     `CreateTaskRequest` messages must either be empty, or it must match this
          #     field.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. The parent resource shared by all tasks. This value must be in
          #     the format `providers/{provider}`. The `provider` must be the Google Cloud
          #     Project ID. For example, `sample-cloud-project`. The parent field in the
          #     `CreateTaskRequest` messages must either  be empty, or it must match this
          #     field.
          # @!attribute [rw] requests
          #   @return [::Array<::Google::Maps::FleetEngine::Delivery::V1::CreateTaskRequest>]
          #     Required. The request message that specifies the resources to create.
          #     Note: You can create a maximum of 500 tasks in a batch.
          class BatchCreateTasksRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The `BatchCreateTask` response message.
          # @!attribute [rw] tasks
          #   @return [::Array<::Google::Maps::FleetEngine::Delivery::V1::Task>]
          #     The created Tasks.
          class BatchCreateTasksResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The `CreateTask` request message.
          # @!attribute [rw] header
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader]
          #     Optional. The standard Delivery API request header.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Must be in the format `providers/{provider}`. The `provider` must
          #     be the Google Cloud Project ID. For example, `sample-cloud-project`.
          # @!attribute [rw] task_id
          #   @return [::String]
          #     Required. The Task ID must be unique, but it should be not a shipment
          #     tracking ID. To store a shipment tracking ID, use the `tracking_id` field.
          #     Note that multiple tasks can have the same `tracking_id`. Task IDs are
          #     subject to the following restrictions:
          #
          #     * Must be a valid Unicode string.
          #     * Limited to a maximum length of 64 characters.
          #     * Normalized according to [Unicode Normalization Form C]
          #     (http://www.unicode.org/reports/tr15/).
          #     * May not contain any of the following ASCII characters: '/', ':', '?',
          #     ',', or '#'.
          # @!attribute [rw] task
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::Task]
          #     Required. The Task entity to create.
          #     When creating a Task, the following fields are required:
          #
          #     * `type`
          #     * `state` (must be set to `OPEN`)
          #     * `tracking_id` (must not be set for `UNAVAILABLE` or `SCHEDULED_STOP`
          #     tasks, but required for all other task types)
          #     * `planned_location` (optional for `UNAVAILABLE` tasks)
          #     * `task_duration`
          #
          #     The following fields can be optionally set:
          #
          #     * `target_time_window`
          #     * `task_tracking_view_config`
          #     * `attributes`
          #
          #     Note: The Task's `name` field is ignored. All other Task fields must not be
          #     set; otherwise, an error is returned.
          class CreateTaskRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The `GetTask` request message.
          # @!attribute [rw] header
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader]
          #     Optional. The standard Delivery API request header.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Must be in the format `providers/{provider}/tasks/{task}`. The
          #     `provider` must be the Google Cloud Project ID. For example,
          #     `sample-cloud-project`.
          class GetTaskRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # DeleteTask request message.
          # @!attribute [rw] header
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader]
          #     Optional. The standard Delivery API request header.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Must be in the format `providers/{provider}/tasks/{task}`. The
          #     `provider` must be the Google Cloud Project ID. For example,
          #     `sample-cloud-project`.
          class DeleteTaskRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The `UpdateTask` request message.
          # @!attribute [rw] header
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader]
          #     Optional. The standard Delivery API request header.
          # @!attribute [rw] task
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::Task]
          #     Required. The Task associated with the update.
          #     The following fields are maintained by Fleet Engine. Do not update
          #     them using `Task.update`.
          #
          #       * `last_location`.
          #       * `last_location_snappable`.
          #       * `name`.
          #       * `remaining_vehicle_journey_segments`.
          #       * `task_outcome_location_source`.
          #
          #     Note: You cannot change the value of `task_outcome` once you set it.
          #
          #     If the Task has been assigned to a delivery vehicle, then don't set the
          #     Task state to CLOSED using `Task.update`. Instead, remove the `VehicleStop`
          #     that contains the Task from the delivery vehicle, which automatically sets
          #     the Task state to CLOSED.
          # @!attribute [rw] update_mask
          #   @return [::Google::Protobuf::FieldMask]
          #     Required. The field mask that indicates which Task fields to update.
          #     Note: The `update_mask` must contain at least one field.
          #
          #     This is a comma-separated list of fully qualified names of fields. Example:
          #     `"task_outcome,task_outcome_time,task_outcome_location"`.
          class UpdateTaskRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The `ListTasks` request message.
          # @!attribute [rw] header
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader]
          #     Optional. The standard Delivery API request header.
          # @!attribute [rw] parent
          #   @return [::String]
          #     Required. Must be in the format `providers/{provider}`.
          #     The `provider` must be the Google Cloud Project ID. For example,
          #     `sample-cloud-project`.
          # @!attribute [rw] page_size
          #   @return [::Integer]
          #     Optional. The maximum number of Tasks to return. The service may return
          #     fewer than this value. If you don't specify this value, then the server
          #     determines the number of results to return.
          # @!attribute [rw] page_token
          #   @return [::String]
          #     Optional. A page token received from a previous `ListTasks` call.
          #     You can provide this to retrieve the subsequent page.
          #
          #     When paginating, all other parameters provided to `ListTasks` must match
          #     the call that provided the page token.
          # @!attribute [rw] filter
          #   @return [::String]
          #     Optional. A filter query to apply when listing Tasks. See
          #     http://aip.dev/160 for examples of filter syntax. If you don't specify a
          #     value, or if you filter on an empty string, then all Tasks are returned.
          #     For information about the Task properties that you can filter on, see [List
          #     tasks](https://developers.google.com/maps/documentation/mobility/fleet-engine/journeys/tasks/find-tasks#filter_listed_tasks).
          class ListTasksRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The `ListTasks` response that contains the set of Tasks that meet the filter
          # criteria in the `ListTasksRequest`.
          # @!attribute [rw] tasks
          #   @return [::Array<::Google::Maps::FleetEngine::Delivery::V1::Task>]
          #     The set of Tasks that meet the requested filtering criteria. When no filter
          #     is specified, the request returns all tasks. A successful response can also
          #     be empty. An empty response indicates that no Tasks were found meeting the
          #     requested filter criteria.
          # @!attribute [rw] next_page_token
          #   @return [::String]
          #     Pass this token in the `ListTasksRequest` to continue to list results.
          #     If all results have been returned, then this field is either an empty
          #     string, or it doesn't appear in the response.
          # @!attribute [rw] total_size
          #   @return [::Integer]
          #     The total number of Tasks that match the request criteria, across all
          #     pages.
          class ListTasksResponse
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # The `GetTaskTrackingInfoRequest` request message.
          # @!attribute [rw] header
          #   @return [::Google::Maps::FleetEngine::Delivery::V1::DeliveryRequestHeader]
          #     Optional. The standard Delivery API request header.
          # @!attribute [rw] name
          #   @return [::String]
          #     Required. Must be in the format
          #     `providers/{provider}/taskTrackingInfo/{tracking_id}`. The `provider`
          #     must be the Google Cloud Project ID, and the `tracking_id` must be the
          #     tracking ID associated with the task. An example name can be
          #     `providers/sample-cloud-project/taskTrackingInfo/sample-tracking-id`.
          class GetTaskTrackingInfoRequest
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
