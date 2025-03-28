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
    module ApiKeys
      module V2
        # The representation of a key managed by the API Keys API.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name of the key.
        #     The `name` has the form:
        #     `projects/<PROJECT_NUMBER>/locations/global/keys/<KEY_ID>`.
        #     For example:
        #     `projects/123456867718/locations/global/keys/b7ff1f9f-8275-410a-94dd-3855ee9b5dd2`
        #
        #     NOTE: Key is a global resource; hence the only supported value for
        #     location is `global`.
        # @!attribute [r] uid
        #   @return [::String]
        #     Output only. Unique id in UUID4 format.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Human-readable display name of this key that you can modify.
        #     The maximum length is 63 characters.
        # @!attribute [r] key_string
        #   @return [::String]
        #     Output only. An encrypted and signed value held by this key.
        #     This field can be accessed only through the `GetKeyString` method.
        # @!attribute [r] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. A timestamp identifying the time this key was originally
        #     created.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. A timestamp identifying the time this key was last
        #     updated.
        # @!attribute [r] delete_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. A timestamp when this key was deleted. If the resource is not
        #     deleted, this must be empty.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Annotations is an unstructured key-value map stored with a policy that
        #     may be set by external tools to store and retrieve arbitrary metadata.
        #     They are not queryable and should be preserved when modifying objects.
        # @!attribute [rw] restrictions
        #   @return [::Google::Cloud::ApiKeys::V2::Restrictions]
        #     Key restrictions.
        # @!attribute [r] etag
        #   @return [::String]
        #     Output only. A checksum computed by the server based on the current value
        #     of the Key resource. This may be sent on update and delete requests to
        #     ensure the client has an up-to-date value before proceeding. See
        #     https://google.aip.dev/154.
        class Key
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Describes the restrictions on the key.
        # @!attribute [rw] browser_key_restrictions
        #   @return [::Google::Cloud::ApiKeys::V2::BrowserKeyRestrictions]
        #     The HTTP referrers (websites) that are allowed to use the key.
        #
        #     Note: The following fields are mutually exclusive: `browser_key_restrictions`, `server_key_restrictions`, `android_key_restrictions`, `ios_key_restrictions`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] server_key_restrictions
        #   @return [::Google::Cloud::ApiKeys::V2::ServerKeyRestrictions]
        #     The IP addresses of callers that are allowed to use the key.
        #
        #     Note: The following fields are mutually exclusive: `server_key_restrictions`, `browser_key_restrictions`, `android_key_restrictions`, `ios_key_restrictions`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] android_key_restrictions
        #   @return [::Google::Cloud::ApiKeys::V2::AndroidKeyRestrictions]
        #     The Android apps that are allowed to use the key.
        #
        #     Note: The following fields are mutually exclusive: `android_key_restrictions`, `browser_key_restrictions`, `server_key_restrictions`, `ios_key_restrictions`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] ios_key_restrictions
        #   @return [::Google::Cloud::ApiKeys::V2::IosKeyRestrictions]
        #     The iOS apps that are allowed to use the key.
        #
        #     Note: The following fields are mutually exclusive: `ios_key_restrictions`, `browser_key_restrictions`, `server_key_restrictions`, `android_key_restrictions`. If a field in that set is populated, all other fields in the set will automatically be cleared.
        # @!attribute [rw] api_targets
        #   @return [::Array<::Google::Cloud::ApiKeys::V2::ApiTarget>]
        #     A restriction for a specific service and optionally one or
        #     more specific methods. Requests are allowed if they
        #     match any of these restrictions. If no restrictions are
        #     specified, all targets are allowed.
        class Restrictions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The HTTP referrers (websites) that are allowed to use the key.
        # @!attribute [rw] allowed_referrers
        #   @return [::Array<::String>]
        #     A list of regular expressions for the referrer URLs that are allowed
        #     to make API calls with this key.
        class BrowserKeyRestrictions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The IP addresses of callers that are allowed to use the key.
        # @!attribute [rw] allowed_ips
        #   @return [::Array<::String>]
        #     A list of the caller IP addresses that are allowed to make API calls
        #     with this key.
        class ServerKeyRestrictions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The Android apps that are allowed to use the key.
        # @!attribute [rw] allowed_applications
        #   @return [::Array<::Google::Cloud::ApiKeys::V2::AndroidApplication>]
        #     A list of Android applications that are allowed to make API calls with
        #     this key.
        class AndroidKeyRestrictions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Identifier of an Android application for key use.
        # @!attribute [rw] sha1_fingerprint
        #   @return [::String]
        #     The SHA1 fingerprint of the application. For example, both sha1 formats are
        #     acceptable : DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09 or
        #     DA39A3EE5E6B4B0D3255BFEF95601890AFD80709.
        #     Output format is the latter.
        # @!attribute [rw] package_name
        #   @return [::String]
        #     The package name of the application.
        class AndroidApplication
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The iOS apps that are allowed to use the key.
        # @!attribute [rw] allowed_bundle_ids
        #   @return [::Array<::String>]
        #     A list of bundle IDs that are allowed when making API calls with this key.
        class IosKeyRestrictions
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A restriction for a specific service and optionally one or multiple
        # specific methods. Both fields are case insensitive.
        # @!attribute [rw] service
        #   @return [::String]
        #     The service for this restriction. It should be the canonical
        #     service name, for example: `translate.googleapis.com`.
        #     You can use [`gcloud services list`](/sdk/gcloud/reference/services/list)
        #     to get a list of services that are enabled in the project.
        # @!attribute [rw] methods
        #   @return [::Array<::String>]
        #     Optional. List of one or more methods that can be called.
        #     If empty, all methods for the service are allowed. A wildcard
        #     (*) can be used as the last symbol.
        #     Valid examples:
        #       `google.cloud.translate.v2.TranslateService.GetSupportedLanguage`
        #       `TranslateText`
        #       `Get*`
        #       `translate.googleapis.com.Get*`
        class ApiTarget
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
