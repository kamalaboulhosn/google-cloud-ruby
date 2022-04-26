# frozen_string_literal: true

# Copyright 2022 Google LLC
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
    module ArtifactRegistry
      module V1
        # Tags point to a version and represent an alternative name that can be used
        # to access the version.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the tag, for example:
        #     "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1".
        #     If the package part contains slashes, the slashes are escaped.
        #     The tag part can only have characters in [a-zA-Z0-9\-._~:@], anything else
        #     must be URL encoded.
        # @!attribute [rw] version
        #   @return [::String]
        #     The name of the version the tag refers to, for example:
        #     "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811"
        #     If the package or version ID parts contain slashes, the slashes are
        #     escaped.
        class Tag
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to list tags.
        # @!attribute [rw] parent
        #   @return [::String]
        #     The name of the parent resource whose tags will be listed.
        # @!attribute [rw] filter
        #   @return [::String]
        #     An expression for filtering the results of the request. Filter rules are
        #     case insensitive. The fields eligible for filtering are:
        #
        #       * `version`
        #
        #      An example of using a filter:
        #
        #       * `version="projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/1.0"`
        #       --> Tags that are applied to the version `1.0` in package `pkg1`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of tags to return. Maximum page size is 10,000.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value returned from a previous list request, if any.
        class ListTagsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response from listing tags.
        # @!attribute [rw] tags
        #   @return [::Array<::Google::Cloud::ArtifactRegistry::V1::Tag>]
        #     The tags returned.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token to retrieve the next page of tags, or empty if there are no
        #     more tags to return.
        class ListTagsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to retrieve a tag.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the tag to retrieve.
        class GetTagRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to create a new tag.
        # @!attribute [rw] parent
        #   @return [::String]
        #     The name of the parent resource where the tag will be created.
        # @!attribute [rw] tag_id
        #   @return [::String]
        #     The tag id to use for this repository.
        # @!attribute [rw] tag
        #   @return [::Google::Cloud::ArtifactRegistry::V1::Tag]
        #     The tag to be created.
        class CreateTagRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to create or update a tag.
        # @!attribute [rw] tag
        #   @return [::Google::Cloud::ArtifactRegistry::V1::Tag]
        #     The tag that replaces the resource on the server.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     The update mask applies to the resource. For the `FieldMask` definition,
        #     see
        #     https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
        class UpdateTagRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to delete a tag.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the tag to delete.
        class DeleteTagRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
