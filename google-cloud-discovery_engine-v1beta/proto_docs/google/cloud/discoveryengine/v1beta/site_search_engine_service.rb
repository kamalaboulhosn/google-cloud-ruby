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
  module Cloud
    module DiscoveryEngine
      module V1beta
        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#get_site_search_engine SiteSearchEngineService.GetSiteSearchEngine}
        # method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Resource name of
        #     {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngine SiteSearchEngine},
        #     such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
        #
        #     If the caller does not have permission to access the [SiteSearchEngine],
        #     regardless of whether or not it exists, a PERMISSION_DENIED error is
        #     returned.
        class GetSiteSearchEngineRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#create_target_site SiteSearchEngineService.CreateTargetSite}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. Parent resource name of
        #     {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite TargetSite}, such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
        # @!attribute [rw] target_site
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::TargetSite]
        #     Required. The {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite TargetSite}
        #     to create.
        class CreateTargetSiteRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#create_target_site SiteSearchEngineService.CreateTargetSite}
        # operation. This will be returned by the google.longrunning.Operation.metadata
        # field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class CreateTargetSiteMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#batch_create_target_sites SiteSearchEngineService.BatchCreateTargetSites}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource shared by all TargetSites being created.
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
        #     The parent field in the CreateBookRequest messages must either be empty or
        #     match this field.
        # @!attribute [rw] requests
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::CreateTargetSiteRequest>]
        #     Required. The request message specifying the resources to create.
        #     A maximum of 20 TargetSites can be created in a batch.
        class BatchCreateTargetSitesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#get_target_site SiteSearchEngineService.GetTargetSite}
        # method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Full resource name of
        #     {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite TargetSite}, such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/targetSites/{target_site}`.
        #
        #     If the caller does not have permission to access the
        #     {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite TargetSite}, regardless of
        #     whether or not it exists, a PERMISSION_DENIED error is returned.
        #
        #     If the requested
        #     {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite TargetSite} does not
        #     exist, a NOT_FOUND error is returned.
        class GetTargetSiteRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#update_target_site SiteSearchEngineService.UpdateTargetSite}
        # method.
        # @!attribute [rw] target_site
        #   @return [::Google::Cloud::DiscoveryEngine::V1beta::TargetSite]
        #     Required. The target site to update.
        #     If the caller does not have permission to update the
        #     {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite TargetSite}, regardless of
        #     whether or not it exists, a PERMISSION_DENIED error is returned.
        #
        #     If the {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite TargetSite} to
        #     update does not exist, a NOT_FOUND error is returned.
        class UpdateTargetSiteRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#update_target_site SiteSearchEngineService.UpdateTargetSite}
        # operation. This will be returned by the google.longrunning.Operation.metadata
        # field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class UpdateTargetSiteMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#delete_target_site SiteSearchEngineService.DeleteTargetSite}
        # method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. Full resource name of
        #     {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite TargetSite}, such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/targetSites/{target_site}`.
        #
        #     If the caller does not have permission to access the
        #     {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite TargetSite}, regardless of
        #     whether or not it exists, a PERMISSION_DENIED error is returned.
        #
        #     If the requested
        #     {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite TargetSite} does not
        #     exist, a NOT_FOUND error is returned.
        class DeleteTargetSiteRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#delete_target_site SiteSearchEngineService.DeleteTargetSite}
        # operation. This will be returned by the google.longrunning.Operation.metadata
        # field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class DeleteTargetSiteMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#list_target_sites SiteSearchEngineService.ListTargetSites}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent site search engine resource name, such as
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
        #
        #     If the caller does not have permission to list
        #     {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite TargetSite}s under this
        #     site search engine, regardless of whether or not this branch exists, a
        #     PERMISSION_DENIED error is returned.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size. Server may return fewer items than requested. If
        #     unspecified, server will pick an appropriate default. The maximum value is
        #     1000; values above 1000 will be coerced to 1000.
        #
        #     If this field is negative, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token, received from a previous `ListTargetSites` call.
        #     Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to `ListTargetSites`
        #     must match the call that provided the page token.
        class ListTargetSitesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#list_target_sites SiteSearchEngineService.ListTargetSites}
        # method.
        # @!attribute [rw] target_sites
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::TargetSite>]
        #     List of TargetSites.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        # @!attribute [rw] total_size
        #   @return [::Integer]
        #     The total number of items matching the request.
        #     This will always be populated in the response.
        class ListTargetSitesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#batch_create_target_sites SiteSearchEngineService.BatchCreateTargetSites}
        # operation. This will be returned by the google.longrunning.Operation.metadata
        # field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class BatchCreateTargetSiteMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#batch_create_target_sites SiteSearchEngineService.BatchCreateTargetSites}
        # method.
        # @!attribute [rw] target_sites
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::TargetSite>]
        #     TargetSites created.
        class BatchCreateTargetSitesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#enable_advanced_site_search SiteSearchEngineService.EnableAdvancedSiteSearch}
        # method.
        # @!attribute [rw] site_search_engine
        #   @return [::String]
        #     Required. Full resource name of the
        #     {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngine SiteSearchEngine},
        #     such as
        #     `projects/{project}/locations/{location}/dataStores/{data_store_id}/siteSearchEngine`.
        class EnableAdvancedSiteSearchRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#enable_advanced_site_search SiteSearchEngineService.EnableAdvancedSiteSearch}
        # method.
        class EnableAdvancedSiteSearchResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#enable_advanced_site_search SiteSearchEngineService.EnableAdvancedSiteSearch}
        # operation. This will be returned by the google.longrunning.Operation.metadata
        # field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class EnableAdvancedSiteSearchMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#disable_advanced_site_search SiteSearchEngineService.DisableAdvancedSiteSearch}
        # method.
        # @!attribute [rw] site_search_engine
        #   @return [::String]
        #     Required. Full resource name of the
        #     {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngine SiteSearchEngine},
        #     such as
        #     `projects/{project}/locations/{location}/dataStores/{data_store_id}/siteSearchEngine`.
        class DisableAdvancedSiteSearchRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#disable_advanced_site_search SiteSearchEngineService.DisableAdvancedSiteSearch}
        # method.
        class DisableAdvancedSiteSearchResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#disable_advanced_site_search SiteSearchEngineService.DisableAdvancedSiteSearch}
        # operation. This will be returned by the google.longrunning.Operation.metadata
        # field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class DisableAdvancedSiteSearchMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#recrawl_uris SiteSearchEngineService.RecrawlUris}
        # method.
        # @!attribute [rw] site_search_engine
        #   @return [::String]
        #     Required. Full resource name of the
        #     {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngine SiteSearchEngine},
        #     such as
        #     `projects/*/locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @!attribute [rw] uris
        #   @return [::Array<::String>]
        #     Required. List of URIs to crawl. At most 10K URIs are supported, otherwise
        #     an INVALID_ARGUMENT error is thrown. Each URI should match at least one
        #     {::Google::Cloud::DiscoveryEngine::V1beta::TargetSite TargetSite} in
        #     `site_search_engine`.
        class RecrawlUrisRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#recrawl_uris SiteSearchEngineService.RecrawlUris}
        # method.
        # @!attribute [rw] failure_samples
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::RecrawlUrisResponse::FailureInfo>]
        #     Details for a sample of up to 10 `failed_uris`.
        # @!attribute [rw] failed_uris
        #   @return [::Array<::String>]
        #     URIs that were not crawled before the LRO terminated.
        class RecrawlUrisResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Details about why a particular URI failed to be crawled. Each FailureInfo
          # contains one FailureReason per CorpusType.
          # @!attribute [rw] uri
          #   @return [::String]
          #     URI that failed to be crawled.
          # @!attribute [rw] failure_reasons
          #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::RecrawlUrisResponse::FailureInfo::FailureReason>]
          #     List of failure reasons by corpus type (e.g. desktop, mobile).
          class FailureInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Details about why crawling failed for a particular CorpusType, e.g.,
            # DESKTOP and MOBILE crawling may fail for different reasons.
            # @!attribute [rw] corpus_type
            #   @return [::Google::Cloud::DiscoveryEngine::V1beta::RecrawlUrisResponse::FailureInfo::FailureReason::CorpusType]
            #     DESKTOP, MOBILE, or CORPUS_TYPE_UNSPECIFIED.
            # @!attribute [rw] error_message
            #   @return [::String]
            #     Reason why the URI was not crawled.
            class FailureReason
              include ::Google::Protobuf::MessageExts
              extend ::Google::Protobuf::MessageExts::ClassMethods

              # CorpusType for the failed crawling operation.
              module CorpusType
                # Default value.
                CORPUS_TYPE_UNSPECIFIED = 0

                # Denotes a crawling attempt for the desktop version of a page.
                DESKTOP = 1

                # Denotes a crawling attempt for the mobile version of a page.
                MOBILE = 2
              end
            end
          end
        end

        # Metadata related to the progress of the
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#recrawl_uris SiteSearchEngineService.RecrawlUris}
        # operation. This will be returned by the google.longrunning.Operation.metadata
        # field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        # @!attribute [rw] invalid_uris
        #   @return [::Array<::String>]
        #     Unique URIs in the request that don't match any TargetSite in the
        #     DataStore, only match TargetSites that haven't been fully indexed, or match
        #     a TargetSite with type EXCLUDE.
        # @!attribute [rw] valid_uris_count
        #   @return [::Integer]
        #     Total number of unique URIs in the request that are not in invalid_uris.
        # @!attribute [rw] success_count
        #   @return [::Integer]
        #     Total number of URIs that have been crawled so far.
        # @!attribute [rw] pending_count
        #   @return [::Integer]
        #     Total number of URIs that have yet to be crawled.
        # @!attribute [rw] quota_exceeded_count
        #   @return [::Integer]
        #     Total number of URIs that were rejected due to insufficient indexing
        #     resources.
        class RecrawlUrisMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#batch_verify_target_sites SiteSearchEngineService.BatchVerifyTargetSites}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The parent resource shared by all TargetSites being verified.
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
        class BatchVerifyTargetSitesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#batch_verify_target_sites SiteSearchEngineService.BatchVerifyTargetSites}
        # method.
        class BatchVerifyTargetSitesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Metadata related to the progress of the
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#batch_verify_target_sites SiteSearchEngineService.BatchVerifyTargetSites}
        # operation. This will be returned by the google.longrunning.Operation.metadata
        # field.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation create time.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Operation last update time. If the operation is done, this is also the
        #     finish time.
        class BatchVerifyTargetSitesMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#fetch_domain_verification_status SiteSearchEngineService.FetchDomainVerificationStatus}
        # method.
        # @!attribute [rw] site_search_engine
        #   @return [::String]
        #     Required. The site search engine resource under which we fetch all the
        #     domain verification status.
        #     `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine`.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Requested page size. Server may return fewer items than requested. If
        #     unspecified, server will pick an appropriate default. The maximum value is
        #     1000; values above 1000 will be coerced to 1000.
        #
        #     If this field is negative, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token, received from a previous `FetchDomainVerificationStatus`
        #     call. Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to
        #     `FetchDomainVerificationStatus` must match the call that provided the page
        #     token.
        class FetchDomainVerificationStatusRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for
        # {::Google::Cloud::DiscoveryEngine::V1beta::SiteSearchEngineService::Client#fetch_domain_verification_status SiteSearchEngineService.FetchDomainVerificationStatus}
        # method.
        # @!attribute [rw] target_sites
        #   @return [::Array<::Google::Cloud::DiscoveryEngine::V1beta::TargetSite>]
        #     List of TargetSites containing the site verification status.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as `page_token` to retrieve the next page.
        #     If this field is omitted, there are no subsequent pages.
        # @!attribute [rw] total_size
        #   @return [::Integer]
        #     The total number of items matching the request.
        #     This will always be populated in the response.
        class FetchDomainVerificationStatusResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
