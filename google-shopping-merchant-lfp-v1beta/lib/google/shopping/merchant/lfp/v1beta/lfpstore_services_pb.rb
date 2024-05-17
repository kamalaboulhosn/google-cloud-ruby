# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/shopping/merchant/lfp/v1beta/lfpstore.proto for package 'google.shopping.merchant.lfp.v1beta'
# Original file comments:
# Copyright 2023 Google LLC
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
require 'google/shopping/merchant/lfp/v1beta/lfpstore_pb'

module Google
  module Shopping
    module Merchant
      module Lfp
        module V1beta
          module LfpStoreService
            # Service for a [LFP
            # partner](https://support.google.com/merchants/answer/7676652) to submit local
            # stores for a merchant.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.shopping.merchant.lfp.v1beta.LfpStoreService'

              # Retrieves information about a store.
              rpc :GetLfpStore, ::Google::Shopping::Merchant::Lfp::V1beta::GetLfpStoreRequest, ::Google::Shopping::Merchant::Lfp::V1beta::LfpStore
              # Inserts a store for the target merchant. If the store with the same store
              # code already exists, it will be replaced.
              rpc :InsertLfpStore, ::Google::Shopping::Merchant::Lfp::V1beta::InsertLfpStoreRequest, ::Google::Shopping::Merchant::Lfp::V1beta::LfpStore
              # Deletes a store for a target merchant.
              rpc :DeleteLfpStore, ::Google::Shopping::Merchant::Lfp::V1beta::DeleteLfpStoreRequest, ::Google::Protobuf::Empty
              # Lists the stores of the target merchant, specified by the filter in
              # `ListLfpStoresRequest`.
              rpc :ListLfpStores, ::Google::Shopping::Merchant::Lfp::V1beta::ListLfpStoresRequest, ::Google::Shopping::Merchant::Lfp::V1beta::ListLfpStoresResponse
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
