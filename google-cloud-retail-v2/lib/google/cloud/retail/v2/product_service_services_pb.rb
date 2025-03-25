# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/retail/v2/product_service.proto for package 'Google.Cloud.Retail.V2'
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
require 'google/cloud/retail/v2/product_service_pb'

module Google
  module Cloud
    module Retail
      module V2
        module ProductService
          # Service for ingesting [Product][google.cloud.retail.v2.Product] information
          # of the customer's website.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.retail.v2.ProductService'

            # Creates a [Product][google.cloud.retail.v2.Product].
            rpc :CreateProduct, ::Google::Cloud::Retail::V2::CreateProductRequest, ::Google::Cloud::Retail::V2::Product
            # Gets a [Product][google.cloud.retail.v2.Product].
            rpc :GetProduct, ::Google::Cloud::Retail::V2::GetProductRequest, ::Google::Cloud::Retail::V2::Product
            # Gets a list of [Product][google.cloud.retail.v2.Product]s.
            rpc :ListProducts, ::Google::Cloud::Retail::V2::ListProductsRequest, ::Google::Cloud::Retail::V2::ListProductsResponse
            # Updates a [Product][google.cloud.retail.v2.Product].
            rpc :UpdateProduct, ::Google::Cloud::Retail::V2::UpdateProductRequest, ::Google::Cloud::Retail::V2::Product
            # Deletes a [Product][google.cloud.retail.v2.Product].
            rpc :DeleteProduct, ::Google::Cloud::Retail::V2::DeleteProductRequest, ::Google::Protobuf::Empty
            # Permanently deletes all selected [Product][google.cloud.retail.v2.Product]s
            # under a branch.
            #
            # This process is asynchronous. If the request is valid, the removal will be
            # enqueued and processed offline. Depending on the number of
            # [Product][google.cloud.retail.v2.Product]s, this operation could take hours
            # to complete. Before the operation completes, some
            # [Product][google.cloud.retail.v2.Product]s may still be returned by
            # [ProductService.GetProduct][google.cloud.retail.v2.ProductService.GetProduct]
            # or
            # [ProductService.ListProducts][google.cloud.retail.v2.ProductService.ListProducts].
            #
            # Depending on the number of [Product][google.cloud.retail.v2.Product]s, this
            # operation could take hours to complete. To get a sample of
            # [Product][google.cloud.retail.v2.Product]s that would be deleted, set
            # [PurgeProductsRequest.force][google.cloud.retail.v2.PurgeProductsRequest.force]
            # to false.
            rpc :PurgeProducts, ::Google::Cloud::Retail::V2::PurgeProductsRequest, ::Google::Longrunning::Operation
            # Bulk import of multiple [Product][google.cloud.retail.v2.Product]s.
            #
            # Request processing may be synchronous.
            # Non-existing items are created.
            #
            # Note that it is possible for a subset of the
            # [Product][google.cloud.retail.v2.Product]s to be successfully updated.
            rpc :ImportProducts, ::Google::Cloud::Retail::V2::ImportProductsRequest, ::Google::Longrunning::Operation
            # Updates inventory information for a
            # [Product][google.cloud.retail.v2.Product] while respecting the last update
            # timestamps of each inventory field.
            #
            # This process is asynchronous and does not require the
            # [Product][google.cloud.retail.v2.Product] to exist before updating
            # fulfillment information. If the request is valid, the update is enqueued
            # and processed downstream. As a consequence, when a response is returned,
            # updates are not immediately manifested in the
            # [Product][google.cloud.retail.v2.Product] queried by
            # [ProductService.GetProduct][google.cloud.retail.v2.ProductService.GetProduct]
            # or
            # [ProductService.ListProducts][google.cloud.retail.v2.ProductService.ListProducts].
            #
            # When inventory is updated with
            # [ProductService.CreateProduct][google.cloud.retail.v2.ProductService.CreateProduct]
            # and
            # [ProductService.UpdateProduct][google.cloud.retail.v2.ProductService.UpdateProduct],
            # the specified inventory field value(s) overwrite any existing value(s)
            # while ignoring the last update time for this field. Furthermore, the last
            # update times for the specified inventory fields are overwritten by the
            # times of the
            # [ProductService.CreateProduct][google.cloud.retail.v2.ProductService.CreateProduct]
            # or
            # [ProductService.UpdateProduct][google.cloud.retail.v2.ProductService.UpdateProduct]
            # request.
            #
            # If no inventory fields are set in
            # [CreateProductRequest.product][google.cloud.retail.v2.CreateProductRequest.product],
            # then any pre-existing inventory information for this product is used.
            #
            # If no inventory fields are set in
            # [SetInventoryRequest.set_mask][google.cloud.retail.v2.SetInventoryRequest.set_mask],
            # then any existing inventory information is preserved.
            #
            # Pre-existing inventory information can only be updated with
            # [ProductService.SetInventory][google.cloud.retail.v2.ProductService.SetInventory],
            # [ProductService.AddFulfillmentPlaces][google.cloud.retail.v2.ProductService.AddFulfillmentPlaces],
            # and
            # [ProductService.RemoveFulfillmentPlaces][google.cloud.retail.v2.ProductService.RemoveFulfillmentPlaces].
            #
            # The returned [Operation][google.longrunning.Operation]s is obsolete after
            # one day, and the [GetOperation][google.longrunning.Operations.GetOperation]
            # API returns `NOT_FOUND` afterwards.
            #
            # If conflicting updates are issued, the
            # [Operation][google.longrunning.Operation]s associated with the stale
            # updates are not marked as [done][google.longrunning.Operation.done] until
            # they are obsolete.
            rpc :SetInventory, ::Google::Cloud::Retail::V2::SetInventoryRequest, ::Google::Longrunning::Operation
            # We recommend that you use the
            # [ProductService.AddLocalInventories][google.cloud.retail.v2.ProductService.AddLocalInventories]
            # method instead of the
            # [ProductService.AddFulfillmentPlaces][google.cloud.retail.v2.ProductService.AddFulfillmentPlaces]
            # method.
            # [ProductService.AddLocalInventories][google.cloud.retail.v2.ProductService.AddLocalInventories]
            # achieves the same results but provides more fine-grained control over
            # ingesting local inventory data.
            #
            # Incrementally adds place IDs to
            # [Product.fulfillment_info.place_ids][google.cloud.retail.v2.FulfillmentInfo.place_ids].
            #
            # This process is asynchronous and does not require the
            # [Product][google.cloud.retail.v2.Product] to exist before updating
            # fulfillment information. If the request is valid, the update will be
            # enqueued and processed downstream. As a consequence, when a response is
            # returned, the added place IDs are not immediately manifested in the
            # [Product][google.cloud.retail.v2.Product] queried by
            # [ProductService.GetProduct][google.cloud.retail.v2.ProductService.GetProduct]
            # or
            # [ProductService.ListProducts][google.cloud.retail.v2.ProductService.ListProducts].
            #
            # The returned [Operation][google.longrunning.Operation]s will be obsolete
            # after 1 day, and [GetOperation][google.longrunning.Operations.GetOperation]
            # API will return NOT_FOUND afterwards.
            #
            # If conflicting updates are issued, the
            # [Operation][google.longrunning.Operation]s associated with the stale
            # updates will not be marked as [done][google.longrunning.Operation.done]
            # until being obsolete.
            rpc :AddFulfillmentPlaces, ::Google::Cloud::Retail::V2::AddFulfillmentPlacesRequest, ::Google::Longrunning::Operation
            # We recommend that you use the
            # [ProductService.RemoveLocalInventories][google.cloud.retail.v2.ProductService.RemoveLocalInventories]
            # method instead of the
            # [ProductService.RemoveFulfillmentPlaces][google.cloud.retail.v2.ProductService.RemoveFulfillmentPlaces]
            # method.
            # [ProductService.RemoveLocalInventories][google.cloud.retail.v2.ProductService.RemoveLocalInventories]
            # achieves the same results but provides more fine-grained control over
            # ingesting local inventory data.
            #
            # Incrementally removes place IDs from a
            # [Product.fulfillment_info.place_ids][google.cloud.retail.v2.FulfillmentInfo.place_ids].
            #
            # This process is asynchronous and does not require the
            # [Product][google.cloud.retail.v2.Product] to exist before updating
            # fulfillment information. If the request is valid, the update will be
            # enqueued and processed downstream. As a consequence, when a response is
            # returned, the removed place IDs are not immediately manifested in the
            # [Product][google.cloud.retail.v2.Product] queried by
            # [ProductService.GetProduct][google.cloud.retail.v2.ProductService.GetProduct]
            # or
            # [ProductService.ListProducts][google.cloud.retail.v2.ProductService.ListProducts].
            #
            # The returned [Operation][google.longrunning.Operation]s will be obsolete
            # after 1 day, and [GetOperation][google.longrunning.Operations.GetOperation]
            # API will return NOT_FOUND afterwards.
            #
            # If conflicting updates are issued, the
            # [Operation][google.longrunning.Operation]s associated with the stale
            # updates will not be marked as [done][google.longrunning.Operation.done]
            # until being obsolete.
            rpc :RemoveFulfillmentPlaces, ::Google::Cloud::Retail::V2::RemoveFulfillmentPlacesRequest, ::Google::Longrunning::Operation
            # Updates local inventory information for a
            # [Product][google.cloud.retail.v2.Product] at a list of places, while
            # respecting the last update timestamps of each inventory field.
            #
            # This process is asynchronous and does not require the
            # [Product][google.cloud.retail.v2.Product] to exist before updating
            # inventory information. If the request is valid, the update will be enqueued
            # and processed downstream. As a consequence, when a response is returned,
            # updates are not immediately manifested in the
            # [Product][google.cloud.retail.v2.Product] queried by
            # [ProductService.GetProduct][google.cloud.retail.v2.ProductService.GetProduct]
            # or
            # [ProductService.ListProducts][google.cloud.retail.v2.ProductService.ListProducts].
            #
            # Local inventory information can only be modified using this method.
            # [ProductService.CreateProduct][google.cloud.retail.v2.ProductService.CreateProduct]
            # and
            # [ProductService.UpdateProduct][google.cloud.retail.v2.ProductService.UpdateProduct]
            # has no effect on local inventories.
            #
            # The returned [Operation][google.longrunning.Operation]s will be obsolete
            # after 1 day, and [GetOperation][google.longrunning.Operations.GetOperation]
            # API will return NOT_FOUND afterwards.
            #
            # If conflicting updates are issued, the
            # [Operation][google.longrunning.Operation]s associated with the stale
            # updates will not be marked as [done][google.longrunning.Operation.done]
            # until being obsolete.
            rpc :AddLocalInventories, ::Google::Cloud::Retail::V2::AddLocalInventoriesRequest, ::Google::Longrunning::Operation
            # Remove local inventory information for a
            # [Product][google.cloud.retail.v2.Product] at a list of places at a removal
            # timestamp.
            #
            # This process is asynchronous. If the request is valid, the removal will be
            # enqueued and processed downstream. As a consequence, when a response is
            # returned, removals are not immediately manifested in the
            # [Product][google.cloud.retail.v2.Product] queried by
            # [ProductService.GetProduct][google.cloud.retail.v2.ProductService.GetProduct]
            # or
            # [ProductService.ListProducts][google.cloud.retail.v2.ProductService.ListProducts].
            #
            # Local inventory information can only be removed using this method.
            # [ProductService.CreateProduct][google.cloud.retail.v2.ProductService.CreateProduct]
            # and
            # [ProductService.UpdateProduct][google.cloud.retail.v2.ProductService.UpdateProduct]
            # has no effect on local inventories.
            #
            # The returned [Operation][google.longrunning.Operation]s will be obsolete
            # after 1 day, and [GetOperation][google.longrunning.Operations.GetOperation]
            # API will return NOT_FOUND afterwards.
            #
            # If conflicting updates are issued, the
            # [Operation][google.longrunning.Operation]s associated with the stale
            # updates will not be marked as [done][google.longrunning.Operation.done]
            # until being obsolete.
            rpc :RemoveLocalInventories, ::Google::Cloud::Retail::V2::RemoveLocalInventoriesRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
