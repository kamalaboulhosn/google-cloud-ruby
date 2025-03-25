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
  module Apps
    module Chat
      module V1
        # A reaction to a message.
        # @!attribute [rw] name
        #   @return [::String]
        #     Identifier. The resource name of the reaction.
        #
        #     Format: `spaces/{space}/messages/{message}/reactions/{reaction}`
        # @!attribute [r] user
        #   @return [::Google::Apps::Chat::V1::User]
        #     Output only. The user who created the reaction.
        # @!attribute [rw] emoji
        #   @return [::Google::Apps::Chat::V1::Emoji]
        #     Required. The emoji used in the reaction.
        class Reaction
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # An emoji that is used as a reaction to a message.
        # @!attribute [rw] unicode
        #   @return [::String]
        #     Optional. A basic emoji represented by a unicode string.
        #
        #     Note: The following fields are mutually exclusive: `unicode`, `custom_emoji`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] custom_emoji
        #   @return [::Google::Apps::Chat::V1::CustomEmoji]
        #     A custom emoji.
        #
        #     Note: The following fields are mutually exclusive: `custom_emoji`, `unicode`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        class Emoji
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Represents a custom emoji.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Unique key for the custom emoji resource.
        class CustomEmoji
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The number of people who reacted to a message with a specific emoji.
        # @!attribute [r] emoji
        #   @return [::Google::Apps::Chat::V1::Emoji]
        #     Output only. Emoji associated with the reactions.
        # @!attribute [r] reaction_count
        #   @return [::Integer]
        #     Output only. The total number of reactions using the associated emoji.
        class EmojiReactionSummary
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Creates a reaction to a message.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The message where the reaction is created.
        #
        #     Format: `spaces/{space}/messages/{message}`
        # @!attribute [rw] reaction
        #   @return [::Google::Apps::Chat::V1::Reaction]
        #     Required. The reaction to create.
        class CreateReactionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Lists reactions to a message.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The message users reacted to.
        #
        #     Format: `spaces/{space}/messages/{message}`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of reactions returned. The service can return
        #     fewer reactions than this value. If unspecified, the default value is 25.
        #     The maximum value is 200; values above 200 are changed to 200.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. (If resuming from a previous query.)
        #
        #     A page token received from a previous list reactions call. Provide this
        #     to retrieve the subsequent page.
        #
        #     When paginating, the filter value should match the call that provided the
        #     page token. Passing a different value might lead to unexpected results.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. A query filter.
        #
        #     You can filter reactions by
        #     [emoji](https://developers.google.com/workspace/chat/api/reference/rest/v1/Emoji)
        #     (either `emoji.unicode` or `emoji.custom_emoji.uid`) and
        #     [user](https://developers.google.com/workspace/chat/api/reference/rest/v1/User)
        #     (`user.name`).
        #
        #     To filter reactions for multiple emojis or users, join similar fields
        #     with the `OR` operator, such as `emoji.unicode = "🙂" OR emoji.unicode =
        #     "👍"` and `user.name = "users/AAAAAA" OR user.name = "users/BBBBBB"`.
        #
        #     To filter reactions by emoji and user, use the `AND` operator, such as
        #     `emoji.unicode = "🙂" AND user.name = "users/AAAAAA"`.
        #
        #     If your query uses both `AND` and `OR`, group them with parentheses.
        #
        #     For example, the following queries are valid:
        #
        #     ```
        #     user.name = "users/\\{user}"
        #     emoji.unicode = "🙂"
        #     emoji.custom_emoji.uid = "\\{uid}"
        #     emoji.unicode = "🙂" OR emoji.unicode = "👍"
        #     emoji.unicode = "🙂" OR emoji.custom_emoji.uid = "\\{uid}"
        #     emoji.unicode = "🙂" AND user.name = "users/\\{user}"
        #     (emoji.unicode = "🙂" OR emoji.custom_emoji.uid = "\\{uid}")
        #     AND user.name = "users/\\{user}"
        #     ```
        #
        #     The following queries are invalid:
        #
        #     ```
        #     emoji.unicode = "🙂" AND emoji.unicode = "👍"
        #     emoji.unicode = "🙂" AND emoji.custom_emoji.uid = "\\{uid}"
        #     emoji.unicode = "🙂" OR user.name = "users/\\{user}"
        #     emoji.unicode = "🙂" OR emoji.custom_emoji.uid = "\\{uid}" OR
        #     user.name = "users/\\{user}"
        #     emoji.unicode = "🙂" OR emoji.custom_emoji.uid = "\\{uid}"
        #     AND user.name = "users/\\{user}"
        #     ```
        #
        #     Invalid queries are rejected by the server with an `INVALID_ARGUMENT`
        #     error.
        class ListReactionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response to a list reactions request.
        # @!attribute [rw] reactions
        #   @return [::Array<::Google::Apps::Chat::V1::Reaction>]
        #     List of reactions in the requested (or first) page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Continuation token to retrieve the next page of results. It's empty
        #     for the last page of results.
        class ListReactionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Deletes a reaction to a message.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Name of the reaction to delete.
        #
        #     Format: `spaces/{space}/messages/{message}/reactions/{reaction}`
        class DeleteReactionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
