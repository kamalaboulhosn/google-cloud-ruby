# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/tasks/v2beta2/cloudtasks.proto for package 'google.cloud.tasks.v2beta2'
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
require 'google/cloud/tasks/v2beta2/cloudtasks_pb'

module Google
  module Cloud
    module Tasks
      module V2beta2
        module CloudTasks
          # Cloud Tasks allows developers to manage the execution of background
          # work in their applications.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.tasks.v2beta2.CloudTasks'

            # Lists queues.
            #
            # Queues are returned in lexicographical order.
            rpc :ListQueues, ::Google::Cloud::Tasks::V2beta2::ListQueuesRequest, ::Google::Cloud::Tasks::V2beta2::ListQueuesResponse
            # Gets a queue.
            rpc :GetQueue, ::Google::Cloud::Tasks::V2beta2::GetQueueRequest, ::Google::Cloud::Tasks::V2beta2::Queue
            # Creates a queue.
            #
            # Queues created with this method allow tasks to live for a maximum of 31
            # days. After a task is 31 days old, the task will be deleted regardless of whether
            # it was dispatched or not.
            #
            # WARNING: Using this method may have unintended side effects if you are
            # using an App Engine `queue.yaml` or `queue.xml` file to manage your queues.
            # Read
            # [Overview of Queue Management and
            # queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml) before using
            # this method.
            rpc :CreateQueue, ::Google::Cloud::Tasks::V2beta2::CreateQueueRequest, ::Google::Cloud::Tasks::V2beta2::Queue
            # Updates a queue.
            #
            # This method creates the queue if it does not exist and updates
            # the queue if it does exist.
            #
            # Queues created with this method allow tasks to live for a maximum of 31
            # days. After a task is 31 days old, the task will be deleted regardless of whether
            # it was dispatched or not.
            #
            # WARNING: Using this method may have unintended side effects if you are
            # using an App Engine `queue.yaml` or `queue.xml` file to manage your queues.
            # Read
            # [Overview of Queue Management and
            # queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml) before using
            # this method.
            rpc :UpdateQueue, ::Google::Cloud::Tasks::V2beta2::UpdateQueueRequest, ::Google::Cloud::Tasks::V2beta2::Queue
            # Deletes a queue.
            #
            # This command will delete the queue even if it has tasks in it.
            #
            # Note: If you delete a queue, a queue with the same name can't be created
            # for 7 days.
            #
            # WARNING: Using this method may have unintended side effects if you are
            # using an App Engine `queue.yaml` or `queue.xml` file to manage your queues.
            # Read
            # [Overview of Queue Management and
            # queue.yaml](https://cloud.google.com/tasks/docs/queue-yaml) before using
            # this method.
            rpc :DeleteQueue, ::Google::Cloud::Tasks::V2beta2::DeleteQueueRequest, ::Google::Protobuf::Empty
            # Purges a queue by deleting all of its tasks.
            #
            # All tasks created before this method is called are permanently deleted.
            #
            # Purge operations can take up to one minute to take effect. Tasks
            # might be dispatched before the purge takes effect. A purge is irreversible.
            rpc :PurgeQueue, ::Google::Cloud::Tasks::V2beta2::PurgeQueueRequest, ::Google::Cloud::Tasks::V2beta2::Queue
            # Pauses the queue.
            #
            # If a queue is paused then the system will stop dispatching tasks
            # until the queue is resumed via
            # [ResumeQueue][google.cloud.tasks.v2beta2.CloudTasks.ResumeQueue]. Tasks can still be added
            # when the queue is paused. A queue is paused if its
            # [state][google.cloud.tasks.v2beta2.Queue.state] is [PAUSED][google.cloud.tasks.v2beta2.Queue.State.PAUSED].
            rpc :PauseQueue, ::Google::Cloud::Tasks::V2beta2::PauseQueueRequest, ::Google::Cloud::Tasks::V2beta2::Queue
            # Resume a queue.
            #
            # This method resumes a queue after it has been
            # [PAUSED][google.cloud.tasks.v2beta2.Queue.State.PAUSED] or
            # [DISABLED][google.cloud.tasks.v2beta2.Queue.State.DISABLED]. The state of a queue is stored
            # in the queue's [state][google.cloud.tasks.v2beta2.Queue.state]; after calling this method it
            # will be set to [RUNNING][google.cloud.tasks.v2beta2.Queue.State.RUNNING].
            #
            # WARNING: Resuming many high-QPS queues at the same time can
            # lead to target overloading. If you are resuming high-QPS
            # queues, follow the 500/50/5 pattern described in
            # [Managing Cloud Tasks Scaling
            # Risks](https://cloud.google.com/tasks/docs/manage-cloud-task-scaling).
            rpc :ResumeQueue, ::Google::Cloud::Tasks::V2beta2::ResumeQueueRequest, ::Google::Cloud::Tasks::V2beta2::Queue
            # Gets the access control policy for a [Queue][google.cloud.tasks.v2beta2.Queue].
            # Returns an empty policy if the resource exists and does not have a policy
            # set.
            #
            # Authorization requires the following
            # [Google IAM](https://cloud.google.com/iam) permission on the specified
            # resource parent:
            #
            # * `cloudtasks.queues.getIamPolicy`
            rpc :GetIamPolicy, ::Google::Iam::V1::GetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Sets the access control policy for a [Queue][google.cloud.tasks.v2beta2.Queue]. Replaces any existing
            # policy.
            #
            # Note: The Cloud Console does not check queue-level IAM permissions yet.
            # Project-level permissions are required to use the Cloud Console.
            #
            # Authorization requires the following
            # [Google IAM](https://cloud.google.com/iam) permission on the specified
            # resource parent:
            #
            # * `cloudtasks.queues.setIamPolicy`
            rpc :SetIamPolicy, ::Google::Iam::V1::SetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Returns permissions that a caller has on a [Queue][google.cloud.tasks.v2beta2.Queue].
            # If the resource does not exist, this will return an empty set of
            # permissions, not a [NOT_FOUND][google.rpc.Code.NOT_FOUND] error.
            #
            # Note: This operation is designed to be used for building permission-aware
            # UIs and command-line tools, not for authorization checking. This operation
            # may "fail open" without warning.
            rpc :TestIamPermissions, ::Google::Iam::V1::TestIamPermissionsRequest, ::Google::Iam::V1::TestIamPermissionsResponse
            # Lists the tasks in a queue.
            #
            # By default, only the [BASIC][google.cloud.tasks.v2beta2.Task.View.BASIC] view is retrieved
            # due to performance considerations;
            # [response_view][google.cloud.tasks.v2beta2.ListTasksRequest.response_view] controls the
            # subset of information which is returned.
            #
            # The tasks may be returned in any order. The ordering may change at any
            # time.
            rpc :ListTasks, ::Google::Cloud::Tasks::V2beta2::ListTasksRequest, ::Google::Cloud::Tasks::V2beta2::ListTasksResponse
            # Gets a task.
            rpc :GetTask, ::Google::Cloud::Tasks::V2beta2::GetTaskRequest, ::Google::Cloud::Tasks::V2beta2::Task
            # Creates a task and adds it to a queue.
            #
            # Tasks cannot be updated after creation; there is no UpdateTask command.
            #
            # * For [App Engine queues][google.cloud.tasks.v2beta2.AppEngineHttpTarget], the maximum task size is
            #   100KB.
            # * For [pull queues][google.cloud.tasks.v2beta2.PullTarget], the maximum task size is 1MB.
            rpc :CreateTask, ::Google::Cloud::Tasks::V2beta2::CreateTaskRequest, ::Google::Cloud::Tasks::V2beta2::Task
            # Deletes a task.
            #
            # A task can be deleted if it is scheduled or dispatched. A task
            # cannot be deleted if it has completed successfully or permanently
            # failed.
            rpc :DeleteTask, ::Google::Cloud::Tasks::V2beta2::DeleteTaskRequest, ::Google::Protobuf::Empty
            # Leases tasks from a pull queue for
            # [lease_duration][google.cloud.tasks.v2beta2.LeaseTasksRequest.lease_duration].
            #
            # This method is invoked by the worker to obtain a lease. The
            # worker must acknowledge the task via
            # [AcknowledgeTask][google.cloud.tasks.v2beta2.CloudTasks.AcknowledgeTask] after they have
            # performed the work associated with the task.
            #
            # The [payload][google.cloud.tasks.v2beta2.PullMessage.payload] is intended to store data that
            # the worker needs to perform the work associated with the task. To
            # return the payloads in the [response][google.cloud.tasks.v2beta2.LeaseTasksResponse], set
            # [response_view][google.cloud.tasks.v2beta2.LeaseTasksRequest.response_view] to
            # [FULL][google.cloud.tasks.v2beta2.Task.View.FULL].
            #
            # A maximum of 10 qps of [LeaseTasks][google.cloud.tasks.v2beta2.CloudTasks.LeaseTasks]
            # requests are allowed per
            # queue. [RESOURCE_EXHAUSTED][google.rpc.Code.RESOURCE_EXHAUSTED]
            # is returned when this limit is
            # exceeded. [RESOURCE_EXHAUSTED][google.rpc.Code.RESOURCE_EXHAUSTED]
            # is also returned when
            # [max_tasks_dispatched_per_second][google.cloud.tasks.v2beta2.RateLimits.max_tasks_dispatched_per_second]
            # is exceeded.
            rpc :LeaseTasks, ::Google::Cloud::Tasks::V2beta2::LeaseTasksRequest, ::Google::Cloud::Tasks::V2beta2::LeaseTasksResponse
            # Acknowledges a pull task.
            #
            # The worker, that is, the entity that
            # [leased][google.cloud.tasks.v2beta2.CloudTasks.LeaseTasks] this task must call this method
            # to indicate that the work associated with the task has finished.
            #
            # The worker must acknowledge a task within the
            # [lease_duration][google.cloud.tasks.v2beta2.LeaseTasksRequest.lease_duration] or the lease
            # will expire and the task will become available to be leased
            # again. After the task is acknowledged, it will not be returned
            # by a later [LeaseTasks][google.cloud.tasks.v2beta2.CloudTasks.LeaseTasks],
            # [GetTask][google.cloud.tasks.v2beta2.CloudTasks.GetTask], or
            # [ListTasks][google.cloud.tasks.v2beta2.CloudTasks.ListTasks].
            rpc :AcknowledgeTask, ::Google::Cloud::Tasks::V2beta2::AcknowledgeTaskRequest, ::Google::Protobuf::Empty
            # Renew the current lease of a pull task.
            #
            # The worker can use this method to extend the lease by a new
            # duration, starting from now. The new task lease will be
            # returned in the task's [schedule_time][google.cloud.tasks.v2beta2.Task.schedule_time].
            rpc :RenewLease, ::Google::Cloud::Tasks::V2beta2::RenewLeaseRequest, ::Google::Cloud::Tasks::V2beta2::Task
            # Cancel a pull task's lease.
            #
            # The worker can use this method to cancel a task's lease by
            # setting its [schedule_time][google.cloud.tasks.v2beta2.Task.schedule_time] to now. This will
            # make the task available to be leased to the next caller of
            # [LeaseTasks][google.cloud.tasks.v2beta2.CloudTasks.LeaseTasks].
            rpc :CancelLease, ::Google::Cloud::Tasks::V2beta2::CancelLeaseRequest, ::Google::Cloud::Tasks::V2beta2::Task
            # Forces a task to run now.
            #
            # When this method is called, Cloud Tasks will dispatch the task, even if
            # the task is already running, the queue has reached its [RateLimits][google.cloud.tasks.v2beta2.RateLimits] or
            # is [PAUSED][google.cloud.tasks.v2beta2.Queue.State.PAUSED].
            #
            # This command is meant to be used for manual debugging. For
            # example, [RunTask][google.cloud.tasks.v2beta2.CloudTasks.RunTask] can be used to retry a failed
            # task after a fix has been made or to manually force a task to be
            # dispatched now.
            #
            # The dispatched task is returned. That is, the task that is returned
            # contains the [status][google.cloud.tasks.v2beta2.Task.status] after the task is dispatched but
            # before the task is received by its target.
            #
            # If Cloud Tasks receives a successful response from the task's
            # target, then the task will be deleted; otherwise the task's
            # [schedule_time][google.cloud.tasks.v2beta2.Task.schedule_time] will be reset to the time that
            # [RunTask][google.cloud.tasks.v2beta2.CloudTasks.RunTask] was called plus the retry delay specified
            # in the queue's [RetryConfig][google.cloud.tasks.v2beta2.RetryConfig].
            #
            # [RunTask][google.cloud.tasks.v2beta2.CloudTasks.RunTask] returns
            # [NOT_FOUND][google.rpc.Code.NOT_FOUND] when it is called on a
            # task that has already succeeded or permanently failed.
            #
            # [RunTask][google.cloud.tasks.v2beta2.CloudTasks.RunTask] cannot be called on a
            # [pull task][google.cloud.tasks.v2beta2.PullMessage].
            rpc :RunTask, ::Google::Cloud::Tasks::V2beta2::RunTaskRequest, ::Google::Cloud::Tasks::V2beta2::Task
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end