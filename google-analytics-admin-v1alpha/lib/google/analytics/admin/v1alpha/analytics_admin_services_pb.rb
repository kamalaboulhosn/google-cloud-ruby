# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/analytics/admin/v1alpha/analytics_admin.proto for package 'google.analytics.admin.v1alpha'
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
require 'google/analytics/admin/v1alpha/analytics_admin_pb'

module Google
  module Analytics
    module Admin
      module V1alpha
        module AnalyticsAdminService
          # Service Interface for the Analytics Admin API (GA4).
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.analytics.admin.v1alpha.AnalyticsAdminService'

            # Lookup for a single Account.
            rpc :GetAccount, ::Google::Analytics::Admin::V1alpha::GetAccountRequest, ::Google::Analytics::Admin::V1alpha::Account
            # Returns all accounts accessible by the caller.
            #
            # Note that these accounts might not currently have GA4 properties.
            # Soft-deleted (ie: "trashed") accounts are excluded by default.
            # Returns an empty list if no relevant accounts are found.
            rpc :ListAccounts, ::Google::Analytics::Admin::V1alpha::ListAccountsRequest, ::Google::Analytics::Admin::V1alpha::ListAccountsResponse
            # Marks target Account as soft-deleted (ie: "trashed") and returns it.
            #
            # This API does not have a method to restore soft-deleted accounts.
            # However, they can be restored using the Trash Can UI.
            #
            # If the accounts are not restored before the expiration time, the account
            # and all child resources (eg: Properties, GoogleAdsLinks, Streams,
            # AccessBindings) will be permanently purged.
            # https://support.google.com/analytics/answer/6154772
            #
            # Returns an error if the target is not found.
            rpc :DeleteAccount, ::Google::Analytics::Admin::V1alpha::DeleteAccountRequest, ::Google::Protobuf::Empty
            # Updates an account.
            rpc :UpdateAccount, ::Google::Analytics::Admin::V1alpha::UpdateAccountRequest, ::Google::Analytics::Admin::V1alpha::Account
            # Requests a ticket for creating an account.
            rpc :ProvisionAccountTicket, ::Google::Analytics::Admin::V1alpha::ProvisionAccountTicketRequest, ::Google::Analytics::Admin::V1alpha::ProvisionAccountTicketResponse
            # Returns summaries of all accounts accessible by the caller.
            rpc :ListAccountSummaries, ::Google::Analytics::Admin::V1alpha::ListAccountSummariesRequest, ::Google::Analytics::Admin::V1alpha::ListAccountSummariesResponse
            # Lookup for a single "GA4" Property.
            rpc :GetProperty, ::Google::Analytics::Admin::V1alpha::GetPropertyRequest, ::Google::Analytics::Admin::V1alpha::Property
            # Returns child Properties under the specified parent Account.
            #
            # Only "GA4" properties will be returned.
            # Properties will be excluded if the caller does not have access.
            # Soft-deleted (ie: "trashed") properties are excluded by default.
            # Returns an empty list if no relevant properties are found.
            rpc :ListProperties, ::Google::Analytics::Admin::V1alpha::ListPropertiesRequest, ::Google::Analytics::Admin::V1alpha::ListPropertiesResponse
            # Creates an "GA4" property with the specified location and attributes.
            rpc :CreateProperty, ::Google::Analytics::Admin::V1alpha::CreatePropertyRequest, ::Google::Analytics::Admin::V1alpha::Property
            # Marks target Property as soft-deleted (ie: "trashed") and returns it.
            #
            # This API does not have a method to restore soft-deleted properties.
            # However, they can be restored using the Trash Can UI.
            #
            # If the properties are not restored before the expiration time, the Property
            # and all child resources (eg: GoogleAdsLinks, Streams, AccessBindings)
            # will be permanently purged.
            # https://support.google.com/analytics/answer/6154772
            #
            # Returns an error if the target is not found, or is not a GA4 Property.
            rpc :DeleteProperty, ::Google::Analytics::Admin::V1alpha::DeletePropertyRequest, ::Google::Analytics::Admin::V1alpha::Property
            # Updates a property.
            rpc :UpdateProperty, ::Google::Analytics::Admin::V1alpha::UpdatePropertyRequest, ::Google::Analytics::Admin::V1alpha::Property
            # Creates a FirebaseLink.
            #
            # Properties can have at most one FirebaseLink.
            rpc :CreateFirebaseLink, ::Google::Analytics::Admin::V1alpha::CreateFirebaseLinkRequest, ::Google::Analytics::Admin::V1alpha::FirebaseLink
            # Deletes a FirebaseLink on a property
            rpc :DeleteFirebaseLink, ::Google::Analytics::Admin::V1alpha::DeleteFirebaseLinkRequest, ::Google::Protobuf::Empty
            # Lists FirebaseLinks on a property.
            # Properties can have at most one FirebaseLink.
            rpc :ListFirebaseLinks, ::Google::Analytics::Admin::V1alpha::ListFirebaseLinksRequest, ::Google::Analytics::Admin::V1alpha::ListFirebaseLinksResponse
            # Returns the Site Tag for the specified web stream.
            # Site Tags are immutable singletons.
            rpc :GetGlobalSiteTag, ::Google::Analytics::Admin::V1alpha::GetGlobalSiteTagRequest, ::Google::Analytics::Admin::V1alpha::GlobalSiteTag
            # Creates a GoogleAdsLink.
            rpc :CreateGoogleAdsLink, ::Google::Analytics::Admin::V1alpha::CreateGoogleAdsLinkRequest, ::Google::Analytics::Admin::V1alpha::GoogleAdsLink
            # Updates a GoogleAdsLink on a property
            rpc :UpdateGoogleAdsLink, ::Google::Analytics::Admin::V1alpha::UpdateGoogleAdsLinkRequest, ::Google::Analytics::Admin::V1alpha::GoogleAdsLink
            # Deletes a GoogleAdsLink on a property
            rpc :DeleteGoogleAdsLink, ::Google::Analytics::Admin::V1alpha::DeleteGoogleAdsLinkRequest, ::Google::Protobuf::Empty
            # Lists GoogleAdsLinks on a property.
            rpc :ListGoogleAdsLinks, ::Google::Analytics::Admin::V1alpha::ListGoogleAdsLinksRequest, ::Google::Analytics::Admin::V1alpha::ListGoogleAdsLinksResponse
            # Get data sharing settings on an account.
            # Data sharing settings are singletons.
            rpc :GetDataSharingSettings, ::Google::Analytics::Admin::V1alpha::GetDataSharingSettingsRequest, ::Google::Analytics::Admin::V1alpha::DataSharingSettings
            # Lookup for a single "GA4" MeasurementProtocolSecret.
            rpc :GetMeasurementProtocolSecret, ::Google::Analytics::Admin::V1alpha::GetMeasurementProtocolSecretRequest, ::Google::Analytics::Admin::V1alpha::MeasurementProtocolSecret
            # Returns child MeasurementProtocolSecrets under the specified parent
            # Property.
            rpc :ListMeasurementProtocolSecrets, ::Google::Analytics::Admin::V1alpha::ListMeasurementProtocolSecretsRequest, ::Google::Analytics::Admin::V1alpha::ListMeasurementProtocolSecretsResponse
            # Creates a measurement protocol secret.
            rpc :CreateMeasurementProtocolSecret, ::Google::Analytics::Admin::V1alpha::CreateMeasurementProtocolSecretRequest, ::Google::Analytics::Admin::V1alpha::MeasurementProtocolSecret
            # Deletes target MeasurementProtocolSecret.
            rpc :DeleteMeasurementProtocolSecret, ::Google::Analytics::Admin::V1alpha::DeleteMeasurementProtocolSecretRequest, ::Google::Protobuf::Empty
            # Updates a measurement protocol secret.
            rpc :UpdateMeasurementProtocolSecret, ::Google::Analytics::Admin::V1alpha::UpdateMeasurementProtocolSecretRequest, ::Google::Analytics::Admin::V1alpha::MeasurementProtocolSecret
            # Acknowledges the terms of user data collection for the specified property.
            #
            # This acknowledgement must be completed (either in the Google Analytics UI
            # or through this API) before MeasurementProtocolSecret resources may be
            # created.
            rpc :AcknowledgeUserDataCollection, ::Google::Analytics::Admin::V1alpha::AcknowledgeUserDataCollectionRequest, ::Google::Analytics::Admin::V1alpha::AcknowledgeUserDataCollectionResponse
            # Looks up a single SKAdNetworkConversionValueSchema.
            rpc :GetSKAdNetworkConversionValueSchema, ::Google::Analytics::Admin::V1alpha::GetSKAdNetworkConversionValueSchemaRequest, ::Google::Analytics::Admin::V1alpha::SKAdNetworkConversionValueSchema
            # Creates a SKAdNetworkConversionValueSchema.
            rpc :CreateSKAdNetworkConversionValueSchema, ::Google::Analytics::Admin::V1alpha::CreateSKAdNetworkConversionValueSchemaRequest, ::Google::Analytics::Admin::V1alpha::SKAdNetworkConversionValueSchema
            # Deletes target SKAdNetworkConversionValueSchema.
            rpc :DeleteSKAdNetworkConversionValueSchema, ::Google::Analytics::Admin::V1alpha::DeleteSKAdNetworkConversionValueSchemaRequest, ::Google::Protobuf::Empty
            # Updates a SKAdNetworkConversionValueSchema.
            rpc :UpdateSKAdNetworkConversionValueSchema, ::Google::Analytics::Admin::V1alpha::UpdateSKAdNetworkConversionValueSchemaRequest, ::Google::Analytics::Admin::V1alpha::SKAdNetworkConversionValueSchema
            # Lists SKAdNetworkConversionValueSchema on a stream.
            # Properties can have at most one SKAdNetworkConversionValueSchema.
            rpc :ListSKAdNetworkConversionValueSchemas, ::Google::Analytics::Admin::V1alpha::ListSKAdNetworkConversionValueSchemasRequest, ::Google::Analytics::Admin::V1alpha::ListSKAdNetworkConversionValueSchemasResponse
            # Searches through all changes to an account or its children given the
            # specified set of filters.
            rpc :SearchChangeHistoryEvents, ::Google::Analytics::Admin::V1alpha::SearchChangeHistoryEventsRequest, ::Google::Analytics::Admin::V1alpha::SearchChangeHistoryEventsResponse
            # Lookup for Google Signals settings for a property.
            rpc :GetGoogleSignalsSettings, ::Google::Analytics::Admin::V1alpha::GetGoogleSignalsSettingsRequest, ::Google::Analytics::Admin::V1alpha::GoogleSignalsSettings
            # Updates Google Signals settings for a property.
            rpc :UpdateGoogleSignalsSettings, ::Google::Analytics::Admin::V1alpha::UpdateGoogleSignalsSettingsRequest, ::Google::Analytics::Admin::V1alpha::GoogleSignalsSettings
            # Creates a conversion event with the specified attributes.
            rpc :CreateConversionEvent, ::Google::Analytics::Admin::V1alpha::CreateConversionEventRequest, ::Google::Analytics::Admin::V1alpha::ConversionEvent
            # Updates a conversion event with the specified attributes.
            rpc :UpdateConversionEvent, ::Google::Analytics::Admin::V1alpha::UpdateConversionEventRequest, ::Google::Analytics::Admin::V1alpha::ConversionEvent
            # Retrieve a single conversion event.
            rpc :GetConversionEvent, ::Google::Analytics::Admin::V1alpha::GetConversionEventRequest, ::Google::Analytics::Admin::V1alpha::ConversionEvent
            # Deletes a conversion event in a property.
            rpc :DeleteConversionEvent, ::Google::Analytics::Admin::V1alpha::DeleteConversionEventRequest, ::Google::Protobuf::Empty
            # Returns a list of conversion events in the specified parent property.
            #
            # Returns an empty list if no conversion events are found.
            rpc :ListConversionEvents, ::Google::Analytics::Admin::V1alpha::ListConversionEventsRequest, ::Google::Analytics::Admin::V1alpha::ListConversionEventsResponse
            # Look up a single DisplayVideo360AdvertiserLink
            rpc :GetDisplayVideo360AdvertiserLink, ::Google::Analytics::Admin::V1alpha::GetDisplayVideo360AdvertiserLinkRequest, ::Google::Analytics::Admin::V1alpha::DisplayVideo360AdvertiserLink
            # Lists all DisplayVideo360AdvertiserLinks on a property.
            rpc :ListDisplayVideo360AdvertiserLinks, ::Google::Analytics::Admin::V1alpha::ListDisplayVideo360AdvertiserLinksRequest, ::Google::Analytics::Admin::V1alpha::ListDisplayVideo360AdvertiserLinksResponse
            # Creates a DisplayVideo360AdvertiserLink.
            # This can only be utilized by users who have proper authorization both on
            # the Google Analytics property and on the Display & Video 360 advertiser.
            # Users who do not have access to the Display & Video 360 advertiser should
            # instead seek to create a DisplayVideo360LinkProposal.
            rpc :CreateDisplayVideo360AdvertiserLink, ::Google::Analytics::Admin::V1alpha::CreateDisplayVideo360AdvertiserLinkRequest, ::Google::Analytics::Admin::V1alpha::DisplayVideo360AdvertiserLink
            # Deletes a DisplayVideo360AdvertiserLink on a property.
            rpc :DeleteDisplayVideo360AdvertiserLink, ::Google::Analytics::Admin::V1alpha::DeleteDisplayVideo360AdvertiserLinkRequest, ::Google::Protobuf::Empty
            # Updates a DisplayVideo360AdvertiserLink on a property.
            rpc :UpdateDisplayVideo360AdvertiserLink, ::Google::Analytics::Admin::V1alpha::UpdateDisplayVideo360AdvertiserLinkRequest, ::Google::Analytics::Admin::V1alpha::DisplayVideo360AdvertiserLink
            # Lookup for a single DisplayVideo360AdvertiserLinkProposal.
            rpc :GetDisplayVideo360AdvertiserLinkProposal, ::Google::Analytics::Admin::V1alpha::GetDisplayVideo360AdvertiserLinkProposalRequest, ::Google::Analytics::Admin::V1alpha::DisplayVideo360AdvertiserLinkProposal
            # Lists DisplayVideo360AdvertiserLinkProposals on a property.
            rpc :ListDisplayVideo360AdvertiserLinkProposals, ::Google::Analytics::Admin::V1alpha::ListDisplayVideo360AdvertiserLinkProposalsRequest, ::Google::Analytics::Admin::V1alpha::ListDisplayVideo360AdvertiserLinkProposalsResponse
            # Creates a DisplayVideo360AdvertiserLinkProposal.
            rpc :CreateDisplayVideo360AdvertiserLinkProposal, ::Google::Analytics::Admin::V1alpha::CreateDisplayVideo360AdvertiserLinkProposalRequest, ::Google::Analytics::Admin::V1alpha::DisplayVideo360AdvertiserLinkProposal
            # Deletes a DisplayVideo360AdvertiserLinkProposal on a property.
            # This can only be used on cancelled proposals.
            rpc :DeleteDisplayVideo360AdvertiserLinkProposal, ::Google::Analytics::Admin::V1alpha::DeleteDisplayVideo360AdvertiserLinkProposalRequest, ::Google::Protobuf::Empty
            # Approves a DisplayVideo360AdvertiserLinkProposal.
            # The DisplayVideo360AdvertiserLinkProposal will be deleted and a new
            # DisplayVideo360AdvertiserLink will be created.
            rpc :ApproveDisplayVideo360AdvertiserLinkProposal, ::Google::Analytics::Admin::V1alpha::ApproveDisplayVideo360AdvertiserLinkProposalRequest, ::Google::Analytics::Admin::V1alpha::ApproveDisplayVideo360AdvertiserLinkProposalResponse
            # Cancels a DisplayVideo360AdvertiserLinkProposal.
            # Cancelling can mean either:
            # - Declining a proposal initiated from Display & Video 360
            # - Withdrawing a proposal initiated from Google Analytics
            # After being cancelled, a proposal will eventually be deleted automatically.
            rpc :CancelDisplayVideo360AdvertiserLinkProposal, ::Google::Analytics::Admin::V1alpha::CancelDisplayVideo360AdvertiserLinkProposalRequest, ::Google::Analytics::Admin::V1alpha::DisplayVideo360AdvertiserLinkProposal
            # Creates a CustomDimension.
            rpc :CreateCustomDimension, ::Google::Analytics::Admin::V1alpha::CreateCustomDimensionRequest, ::Google::Analytics::Admin::V1alpha::CustomDimension
            # Updates a CustomDimension on a property.
            rpc :UpdateCustomDimension, ::Google::Analytics::Admin::V1alpha::UpdateCustomDimensionRequest, ::Google::Analytics::Admin::V1alpha::CustomDimension
            # Lists CustomDimensions on a property.
            rpc :ListCustomDimensions, ::Google::Analytics::Admin::V1alpha::ListCustomDimensionsRequest, ::Google::Analytics::Admin::V1alpha::ListCustomDimensionsResponse
            # Archives a CustomDimension on a property.
            rpc :ArchiveCustomDimension, ::Google::Analytics::Admin::V1alpha::ArchiveCustomDimensionRequest, ::Google::Protobuf::Empty
            # Lookup for a single CustomDimension.
            rpc :GetCustomDimension, ::Google::Analytics::Admin::V1alpha::GetCustomDimensionRequest, ::Google::Analytics::Admin::V1alpha::CustomDimension
            # Creates a CustomMetric.
            rpc :CreateCustomMetric, ::Google::Analytics::Admin::V1alpha::CreateCustomMetricRequest, ::Google::Analytics::Admin::V1alpha::CustomMetric
            # Updates a CustomMetric on a property.
            rpc :UpdateCustomMetric, ::Google::Analytics::Admin::V1alpha::UpdateCustomMetricRequest, ::Google::Analytics::Admin::V1alpha::CustomMetric
            # Lists CustomMetrics on a property.
            rpc :ListCustomMetrics, ::Google::Analytics::Admin::V1alpha::ListCustomMetricsRequest, ::Google::Analytics::Admin::V1alpha::ListCustomMetricsResponse
            # Archives a CustomMetric on a property.
            rpc :ArchiveCustomMetric, ::Google::Analytics::Admin::V1alpha::ArchiveCustomMetricRequest, ::Google::Protobuf::Empty
            # Lookup for a single CustomMetric.
            rpc :GetCustomMetric, ::Google::Analytics::Admin::V1alpha::GetCustomMetricRequest, ::Google::Analytics::Admin::V1alpha::CustomMetric
            # Returns the singleton data retention settings for this property.
            rpc :GetDataRetentionSettings, ::Google::Analytics::Admin::V1alpha::GetDataRetentionSettingsRequest, ::Google::Analytics::Admin::V1alpha::DataRetentionSettings
            # Updates the singleton data retention settings for this property.
            rpc :UpdateDataRetentionSettings, ::Google::Analytics::Admin::V1alpha::UpdateDataRetentionSettingsRequest, ::Google::Analytics::Admin::V1alpha::DataRetentionSettings
            # Creates a DataStream.
            rpc :CreateDataStream, ::Google::Analytics::Admin::V1alpha::CreateDataStreamRequest, ::Google::Analytics::Admin::V1alpha::DataStream
            # Deletes a DataStream on a property.
            rpc :DeleteDataStream, ::Google::Analytics::Admin::V1alpha::DeleteDataStreamRequest, ::Google::Protobuf::Empty
            # Updates a DataStream on a property.
            rpc :UpdateDataStream, ::Google::Analytics::Admin::V1alpha::UpdateDataStreamRequest, ::Google::Analytics::Admin::V1alpha::DataStream
            # Lists DataStreams on a property.
            rpc :ListDataStreams, ::Google::Analytics::Admin::V1alpha::ListDataStreamsRequest, ::Google::Analytics::Admin::V1alpha::ListDataStreamsResponse
            # Lookup for a single DataStream.
            rpc :GetDataStream, ::Google::Analytics::Admin::V1alpha::GetDataStreamRequest, ::Google::Analytics::Admin::V1alpha::DataStream
            # Lookup for a single Audience.
            # Audiences created before 2020 may not be supported.
            # Default audiences will not show filter definitions.
            rpc :GetAudience, ::Google::Analytics::Admin::V1alpha::GetAudienceRequest, ::Google::Analytics::Admin::V1alpha::Audience
            # Lists Audiences on a property.
            # Audiences created before 2020 may not be supported.
            # Default audiences will not show filter definitions.
            rpc :ListAudiences, ::Google::Analytics::Admin::V1alpha::ListAudiencesRequest, ::Google::Analytics::Admin::V1alpha::ListAudiencesResponse
            # Creates an Audience.
            rpc :CreateAudience, ::Google::Analytics::Admin::V1alpha::CreateAudienceRequest, ::Google::Analytics::Admin::V1alpha::Audience
            # Updates an Audience on a property.
            rpc :UpdateAudience, ::Google::Analytics::Admin::V1alpha::UpdateAudienceRequest, ::Google::Analytics::Admin::V1alpha::Audience
            # Archives an Audience on a property.
            rpc :ArchiveAudience, ::Google::Analytics::Admin::V1alpha::ArchiveAudienceRequest, ::Google::Protobuf::Empty
            # Look up a single SearchAds360Link
            rpc :GetSearchAds360Link, ::Google::Analytics::Admin::V1alpha::GetSearchAds360LinkRequest, ::Google::Analytics::Admin::V1alpha::SearchAds360Link
            # Lists all SearchAds360Links on a property.
            rpc :ListSearchAds360Links, ::Google::Analytics::Admin::V1alpha::ListSearchAds360LinksRequest, ::Google::Analytics::Admin::V1alpha::ListSearchAds360LinksResponse
            # Creates a SearchAds360Link.
            rpc :CreateSearchAds360Link, ::Google::Analytics::Admin::V1alpha::CreateSearchAds360LinkRequest, ::Google::Analytics::Admin::V1alpha::SearchAds360Link
            # Deletes a SearchAds360Link on a property.
            rpc :DeleteSearchAds360Link, ::Google::Analytics::Admin::V1alpha::DeleteSearchAds360LinkRequest, ::Google::Protobuf::Empty
            # Updates a SearchAds360Link on a property.
            rpc :UpdateSearchAds360Link, ::Google::Analytics::Admin::V1alpha::UpdateSearchAds360LinkRequest, ::Google::Analytics::Admin::V1alpha::SearchAds360Link
            # Lookup for a AttributionSettings singleton.
            rpc :GetAttributionSettings, ::Google::Analytics::Admin::V1alpha::GetAttributionSettingsRequest, ::Google::Analytics::Admin::V1alpha::AttributionSettings
            # Updates attribution settings on a property.
            rpc :UpdateAttributionSettings, ::Google::Analytics::Admin::V1alpha::UpdateAttributionSettingsRequest, ::Google::Analytics::Admin::V1alpha::AttributionSettings
            # Returns a customized report of data access records. The report provides
            # records of each time a user reads Google Analytics reporting data. Access
            # records are retained for up to 2 years.
            #
            # Data Access Reports can be requested for a property. Reports may be
            # requested for any property, but dimensions that aren't related to quota can
            # only be requested on Google Analytics 360 properties. This method is only
            # available to Administrators.
            #
            # These data access records include GA4 UI Reporting, GA4 UI Explorations,
            # GA4 Data API, and other products like Firebase & Admob that can retrieve
            # data from Google Analytics through a linkage. These records don't include
            # property configuration changes like adding a stream or changing a
            # property's time zone. For configuration change history, see
            # [searchChangeHistoryEvents](https://developers.google.com/analytics/devguides/config/admin/v1/rest/v1alpha/accounts/searchChangeHistoryEvents).
            rpc :RunAccessReport, ::Google::Analytics::Admin::V1alpha::RunAccessReportRequest, ::Google::Analytics::Admin::V1alpha::RunAccessReportResponse
            # Creates an access binding on an account or property.
            rpc :CreateAccessBinding, ::Google::Analytics::Admin::V1alpha::CreateAccessBindingRequest, ::Google::Analytics::Admin::V1alpha::AccessBinding
            # Gets information about an access binding.
            rpc :GetAccessBinding, ::Google::Analytics::Admin::V1alpha::GetAccessBindingRequest, ::Google::Analytics::Admin::V1alpha::AccessBinding
            # Updates an access binding on an account or property.
            rpc :UpdateAccessBinding, ::Google::Analytics::Admin::V1alpha::UpdateAccessBindingRequest, ::Google::Analytics::Admin::V1alpha::AccessBinding
            # Deletes an access binding on an account or property.
            rpc :DeleteAccessBinding, ::Google::Analytics::Admin::V1alpha::DeleteAccessBindingRequest, ::Google::Protobuf::Empty
            # Lists all access bindings on an account or property.
            rpc :ListAccessBindings, ::Google::Analytics::Admin::V1alpha::ListAccessBindingsRequest, ::Google::Analytics::Admin::V1alpha::ListAccessBindingsResponse
            # Creates information about multiple access bindings to an account or
            # property.
            #
            # This method is transactional. If any AccessBinding cannot be created, none
            # of the AccessBindings will be created.
            rpc :BatchCreateAccessBindings, ::Google::Analytics::Admin::V1alpha::BatchCreateAccessBindingsRequest, ::Google::Analytics::Admin::V1alpha::BatchCreateAccessBindingsResponse
            # Gets information about multiple access bindings to an account or property.
            rpc :BatchGetAccessBindings, ::Google::Analytics::Admin::V1alpha::BatchGetAccessBindingsRequest, ::Google::Analytics::Admin::V1alpha::BatchGetAccessBindingsResponse
            # Updates information about multiple access bindings to an account or
            # property.
            rpc :BatchUpdateAccessBindings, ::Google::Analytics::Admin::V1alpha::BatchUpdateAccessBindingsRequest, ::Google::Analytics::Admin::V1alpha::BatchUpdateAccessBindingsResponse
            # Deletes information about multiple users' links to an account or property.
            rpc :BatchDeleteAccessBindings, ::Google::Analytics::Admin::V1alpha::BatchDeleteAccessBindingsRequest, ::Google::Protobuf::Empty
            # Lookup for a single ExpandedDataSet.
            rpc :GetExpandedDataSet, ::Google::Analytics::Admin::V1alpha::GetExpandedDataSetRequest, ::Google::Analytics::Admin::V1alpha::ExpandedDataSet
            # Lists ExpandedDataSets on a property.
            rpc :ListExpandedDataSets, ::Google::Analytics::Admin::V1alpha::ListExpandedDataSetsRequest, ::Google::Analytics::Admin::V1alpha::ListExpandedDataSetsResponse
            # Creates a ExpandedDataSet.
            rpc :CreateExpandedDataSet, ::Google::Analytics::Admin::V1alpha::CreateExpandedDataSetRequest, ::Google::Analytics::Admin::V1alpha::ExpandedDataSet
            # Updates a ExpandedDataSet on a property.
            rpc :UpdateExpandedDataSet, ::Google::Analytics::Admin::V1alpha::UpdateExpandedDataSetRequest, ::Google::Analytics::Admin::V1alpha::ExpandedDataSet
            # Deletes a ExpandedDataSet on a property.
            rpc :DeleteExpandedDataSet, ::Google::Analytics::Admin::V1alpha::DeleteExpandedDataSetRequest, ::Google::Protobuf::Empty
            # Lookup for a single ChannelGroup.
            rpc :GetChannelGroup, ::Google::Analytics::Admin::V1alpha::GetChannelGroupRequest, ::Google::Analytics::Admin::V1alpha::ChannelGroup
            # Lists ChannelGroups on a property.
            rpc :ListChannelGroups, ::Google::Analytics::Admin::V1alpha::ListChannelGroupsRequest, ::Google::Analytics::Admin::V1alpha::ListChannelGroupsResponse
            # Creates a ChannelGroup.
            rpc :CreateChannelGroup, ::Google::Analytics::Admin::V1alpha::CreateChannelGroupRequest, ::Google::Analytics::Admin::V1alpha::ChannelGroup
            # Updates a ChannelGroup.
            rpc :UpdateChannelGroup, ::Google::Analytics::Admin::V1alpha::UpdateChannelGroupRequest, ::Google::Analytics::Admin::V1alpha::ChannelGroup
            # Deletes a ChannelGroup on a property.
            rpc :DeleteChannelGroup, ::Google::Analytics::Admin::V1alpha::DeleteChannelGroupRequest, ::Google::Protobuf::Empty
            # Sets the opt out status for the automated GA4 setup process for a UA
            # property.
            # Note: this has no effect on GA4 property.
            rpc :SetAutomatedGa4ConfigurationOptOut, ::Google::Analytics::Admin::V1alpha::SetAutomatedGa4ConfigurationOptOutRequest, ::Google::Analytics::Admin::V1alpha::SetAutomatedGa4ConfigurationOptOutResponse
            # Fetches the opt out status for the automated GA4 setup process for a UA
            # property.
            # Note: this has no effect on GA4 property.
            rpc :FetchAutomatedGa4ConfigurationOptOut, ::Google::Analytics::Admin::V1alpha::FetchAutomatedGa4ConfigurationOptOutRequest, ::Google::Analytics::Admin::V1alpha::FetchAutomatedGa4ConfigurationOptOutResponse
            # Lookup for a single BigQuery Link.
            rpc :GetBigQueryLink, ::Google::Analytics::Admin::V1alpha::GetBigQueryLinkRequest, ::Google::Analytics::Admin::V1alpha::BigQueryLink
            # Lists BigQuery Links on a property.
            rpc :ListBigQueryLinks, ::Google::Analytics::Admin::V1alpha::ListBigQueryLinksRequest, ::Google::Analytics::Admin::V1alpha::ListBigQueryLinksResponse
            # Returns the enhanced measurement settings for this data stream.
            # Note that the stream must enable enhanced measurement for these settings to
            # take effect.
            rpc :GetEnhancedMeasurementSettings, ::Google::Analytics::Admin::V1alpha::GetEnhancedMeasurementSettingsRequest, ::Google::Analytics::Admin::V1alpha::EnhancedMeasurementSettings
            # Updates the enhanced measurement settings for this data stream.
            # Note that the stream must enable enhanced measurement for these settings to
            # take effect.
            rpc :UpdateEnhancedMeasurementSettings, ::Google::Analytics::Admin::V1alpha::UpdateEnhancedMeasurementSettingsRequest, ::Google::Analytics::Admin::V1alpha::EnhancedMeasurementSettings
            # Creates a connected site tag for a Universal Analytics property. You can
            # create a maximum of 20 connected site tags per property.
            # Note: This API cannot be used on GA4 properties.
            rpc :CreateConnectedSiteTag, ::Google::Analytics::Admin::V1alpha::CreateConnectedSiteTagRequest, ::Google::Analytics::Admin::V1alpha::CreateConnectedSiteTagResponse
            # Deletes a connected site tag for a Universal Analytics property.
            # Note: this has no effect on GA4 properties.
            rpc :DeleteConnectedSiteTag, ::Google::Analytics::Admin::V1alpha::DeleteConnectedSiteTagRequest, ::Google::Protobuf::Empty
            # Lists the connected site tags for a Universal Analytics property. A maximum
            # of 20 connected site tags will be returned. Note: this has no effect on GA4
            # property.
            rpc :ListConnectedSiteTags, ::Google::Analytics::Admin::V1alpha::ListConnectedSiteTagsRequest, ::Google::Analytics::Admin::V1alpha::ListConnectedSiteTagsResponse
            # Given a specified UA property, looks up the GA4 property connected to it.
            # Note: this cannot be used with GA4 properties.
            rpc :FetchConnectedGa4Property, ::Google::Analytics::Admin::V1alpha::FetchConnectedGa4PropertyRequest, ::Google::Analytics::Admin::V1alpha::FetchConnectedGa4PropertyResponse
            # Looks up a single AdSenseLink.
            rpc :GetAdSenseLink, ::Google::Analytics::Admin::V1alpha::GetAdSenseLinkRequest, ::Google::Analytics::Admin::V1alpha::AdSenseLink
            # Creates an AdSenseLink.
            rpc :CreateAdSenseLink, ::Google::Analytics::Admin::V1alpha::CreateAdSenseLinkRequest, ::Google::Analytics::Admin::V1alpha::AdSenseLink
            # Deletes an AdSenseLink.
            rpc :DeleteAdSenseLink, ::Google::Analytics::Admin::V1alpha::DeleteAdSenseLinkRequest, ::Google::Protobuf::Empty
            # Lists AdSenseLinks on a property.
            rpc :ListAdSenseLinks, ::Google::Analytics::Admin::V1alpha::ListAdSenseLinksRequest, ::Google::Analytics::Admin::V1alpha::ListAdSenseLinksResponse
            # Lookup for a single EventCreateRule.
            rpc :GetEventCreateRule, ::Google::Analytics::Admin::V1alpha::GetEventCreateRuleRequest, ::Google::Analytics::Admin::V1alpha::EventCreateRule
            # Lists EventCreateRules on a web data stream.
            rpc :ListEventCreateRules, ::Google::Analytics::Admin::V1alpha::ListEventCreateRulesRequest, ::Google::Analytics::Admin::V1alpha::ListEventCreateRulesResponse
            # Creates an EventCreateRule.
            rpc :CreateEventCreateRule, ::Google::Analytics::Admin::V1alpha::CreateEventCreateRuleRequest, ::Google::Analytics::Admin::V1alpha::EventCreateRule
            # Updates an EventCreateRule.
            rpc :UpdateEventCreateRule, ::Google::Analytics::Admin::V1alpha::UpdateEventCreateRuleRequest, ::Google::Analytics::Admin::V1alpha::EventCreateRule
            # Deletes an EventCreateRule.
            rpc :DeleteEventCreateRule, ::Google::Analytics::Admin::V1alpha::DeleteEventCreateRuleRequest, ::Google::Protobuf::Empty
            # Updates a DataRedactionSettings on a property.
            rpc :UpdateDataRedactionSettings, ::Google::Analytics::Admin::V1alpha::UpdateDataRedactionSettingsRequest, ::Google::Analytics::Admin::V1alpha::DataRedactionSettings
            # Lookup for a single DataRedactionSettings.
            rpc :GetDataRedactionSettings, ::Google::Analytics::Admin::V1alpha::GetDataRedactionSettingsRequest, ::Google::Analytics::Admin::V1alpha::DataRedactionSettings
            # Lookup for a single CalculatedMetric.
            rpc :GetCalculatedMetric, ::Google::Analytics::Admin::V1alpha::GetCalculatedMetricRequest, ::Google::Analytics::Admin::V1alpha::CalculatedMetric
            # Creates a CalculatedMetric.
            rpc :CreateCalculatedMetric, ::Google::Analytics::Admin::V1alpha::CreateCalculatedMetricRequest, ::Google::Analytics::Admin::V1alpha::CalculatedMetric
            # Lists CalculatedMetrics on a property.
            rpc :ListCalculatedMetrics, ::Google::Analytics::Admin::V1alpha::ListCalculatedMetricsRequest, ::Google::Analytics::Admin::V1alpha::ListCalculatedMetricsResponse
            # Updates a CalculatedMetric on a property.
            rpc :UpdateCalculatedMetric, ::Google::Analytics::Admin::V1alpha::UpdateCalculatedMetricRequest, ::Google::Analytics::Admin::V1alpha::CalculatedMetric
            # Deletes a CalculatedMetric on a property.
            rpc :DeleteCalculatedMetric, ::Google::Analytics::Admin::V1alpha::DeleteCalculatedMetricRequest, ::Google::Protobuf::Empty
            # Create a roll-up property and all roll-up property source links.
            rpc :CreateRollupProperty, ::Google::Analytics::Admin::V1alpha::CreateRollupPropertyRequest, ::Google::Analytics::Admin::V1alpha::CreateRollupPropertyResponse
            # Lookup for a single roll-up property source Link.
            # Only roll-up properties can have source links, so this method will throw an
            # error if used on other types of properties.
            rpc :GetRollupPropertySourceLink, ::Google::Analytics::Admin::V1alpha::GetRollupPropertySourceLinkRequest, ::Google::Analytics::Admin::V1alpha::RollupPropertySourceLink
            # Lists roll-up property source Links on a property.
            # Only roll-up properties can have source links, so this method will throw an
            # error if used on other types of properties.
            rpc :ListRollupPropertySourceLinks, ::Google::Analytics::Admin::V1alpha::ListRollupPropertySourceLinksRequest, ::Google::Analytics::Admin::V1alpha::ListRollupPropertySourceLinksResponse
            # Creates a roll-up property source link.
            # Only roll-up properties can have source links, so this method will throw an
            # error if used on other types of properties.
            rpc :CreateRollupPropertySourceLink, ::Google::Analytics::Admin::V1alpha::CreateRollupPropertySourceLinkRequest, ::Google::Analytics::Admin::V1alpha::RollupPropertySourceLink
            # Deletes a roll-up property source link.
            # Only roll-up properties can have source links, so this method will throw an
            # error if used on other types of properties.
            rpc :DeleteRollupPropertySourceLink, ::Google::Analytics::Admin::V1alpha::DeleteRollupPropertySourceLinkRequest, ::Google::Protobuf::Empty
            # Create a subproperty and a subproperty event filter that applies to the
            # created subproperty.
            rpc :CreateSubproperty, ::Google::Analytics::Admin::V1alpha::CreateSubpropertyRequest, ::Google::Analytics::Admin::V1alpha::CreateSubpropertyResponse
            # Creates a subproperty Event Filter.
            rpc :CreateSubpropertyEventFilter, ::Google::Analytics::Admin::V1alpha::CreateSubpropertyEventFilterRequest, ::Google::Analytics::Admin::V1alpha::SubpropertyEventFilter
            # Lookup for a single subproperty Event Filter.
            rpc :GetSubpropertyEventFilter, ::Google::Analytics::Admin::V1alpha::GetSubpropertyEventFilterRequest, ::Google::Analytics::Admin::V1alpha::SubpropertyEventFilter
            # List all subproperty Event Filters on a property.
            rpc :ListSubpropertyEventFilters, ::Google::Analytics::Admin::V1alpha::ListSubpropertyEventFiltersRequest, ::Google::Analytics::Admin::V1alpha::ListSubpropertyEventFiltersResponse
            # Updates a subproperty Event Filter.
            rpc :UpdateSubpropertyEventFilter, ::Google::Analytics::Admin::V1alpha::UpdateSubpropertyEventFilterRequest, ::Google::Analytics::Admin::V1alpha::SubpropertyEventFilter
            # Deletes a subproperty event filter.
            rpc :DeleteSubpropertyEventFilter, ::Google::Analytics::Admin::V1alpha::DeleteSubpropertyEventFilterRequest, ::Google::Protobuf::Empty
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
