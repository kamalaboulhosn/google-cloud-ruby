# frozen_string_literal: true

# Copyright 2023 Google LLC
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
  module Cloud
    module DiscoveryEngine
      module V1beta
        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client#purge_documents DocumentService.PurgeDocuments}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource name, such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/branches/{branch}`.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Required. Filter matching documents to purge. Only currently supported
        #     value is
        #     `*` (all items).
        # @!attribute [rw] force
        #   @return [::Boolean]
        #     Actually performs the purge. If `force` is set to false, return the
        #     expected purge count without deleting any documents.
        class PurgeDocumentsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::DocumentService::Client#purge_documents DocumentService.PurgeDocuments}
        # method. If the long running operation is successfully done, then this message
        # is returned by the google.longrunning.Operations.response field.
        # @!attribute [rw] purge_count
        #   @return [::Integer]
        #     The total count of documents purged as a result of the operation.
        # @!attribute [rw] purge_sample
        #   @return [::Array<::String>]
        #     A sample of document names that will be deleted. Only populated if `force`
        #     is set to false. A max of 100 names will be returned and the names are
        #     chosen at random.
        class PurgeDocumentsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the PurgeDocuments operation.
        # This will be returned by the google.longrunning.Operation.metadata field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        # @!attribute [rw] success_count
        #   @return [::Integer]
        #     Count of entries that were deleted successfully.
        # @!attribute [rw] failure_count
        #   @return [::Integer]
        #     Count of entries that encountered errors while processing.
        # @!attribute [rw] ignored_count
        #   @return [::Integer]
        #     Count of entries that were ignored as entries were not found.
        class PurgeDocumentsMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::CompletionService::Client#purge_suggestion_deny_list_entries CompletionService.PurgeSuggestionDenyListEntries}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent data store resource name for which to import denylist
        #     entries. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        class PurgeSuggestionDenyListEntriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::CompletionService::Client#purge_suggestion_deny_list_entries CompletionService.PurgeSuggestionDenyListEntries}
        # method.
        # @!attribute [rw] purge_count
        #   @return [::Integer]
        #     Number of suggestion deny list entries purged.
        # @!attribute [rw] error_samples
        #   @return [::Array<::Google::Rpc::Status>]
        #     A sample of errors encountered while processing the request.
        class PurgeSuggestionDenyListEntriesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the PurgeSuggestionDenyListEntries
        # operation. This is returned by the google.longrunning.Operation.metadata
        # field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class PurgeSuggestionDenyListEntriesMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
