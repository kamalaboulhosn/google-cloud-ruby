# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/shopping/merchant/promotions/v1beta/promotions.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/shopping/merchant/promotions/v1beta/promotions_common_pb'
require 'google/shopping/type/types_pb'


descriptor_data = "\n;google/shopping/merchant/promotions/v1beta/promotions.proto\x12*google.shopping.merchant.promotions.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x42google/shopping/merchant/promotions/v1beta/promotions_common.proto\x1a google/shopping/type/types.proto\"\x85\x05\n\tPromotion\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x19\n\x0cpromotion_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x1d\n\x10\x63ontent_language\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x1b\n\x0etarget_country\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12^\n\x12redemption_channel\x18\x05 \x03(\x0e\x32=.google.shopping.merchant.promotions.v1beta.RedemptionChannelB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x61ta_source\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12O\n\nattributes\x18\x07 \x01(\x0b\x32\x36.google.shopping.merchant.promotions.v1beta.AttributesB\x03\xe0\x41\x01\x12\x45\n\x11\x63ustom_attributes\x18\x08 \x03(\x0b\x32%.google.shopping.type.CustomAttributeB\x03\xe0\x41\x01\x12Z\n\x10promotion_status\x18\t \x01(\x0b\x32;.google.shopping.merchant.promotions.v1beta.PromotionStatusB\x03\xe0\x41\x03\x12 \n\x0eversion_number\x18\n \x01(\x03\x42\x03\xe0\x41\x01H\x00\x88\x01\x01:k\xea\x41h\n$merchantapi.googleapis.com/Promotion\x12)accounts/{account}/promotions/{promotion}*\npromotions2\tpromotionB\x11\n\x0f_version_number\"\x96\x01\n\x16InsertPromotionRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12M\n\tpromotion\x18\x02 \x01(\x0b\x32\x35.google.shopping.merchant.promotions.v1beta.PromotionB\x03\xe0\x41\x02\x12\x18\n\x0b\x64\x61ta_source\x18\x03 \x01(\tB\x03\xe0\x41\x02\"Q\n\x13GetPromotionRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$merchantapi.googleapis.com/Promotion\"]\n\x15ListPromotionsRequest\x12\x13\n\x06parent\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x03\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x03\"|\n\x16ListPromotionsResponse\x12I\n\npromotions\x18\x01 \x03(\x0b\x32\x35.google.shopping.merchant.promotions.v1beta.Promotion\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\xd9\x05\n\x11PromotionsService\x12\xd1\x01\n\x0fInsertPromotion\x12\x42.google.shopping.merchant.promotions.v1beta.InsertPromotionRequest\x1a\x35.google.shopping.merchant.promotions.v1beta.Promotion\"C\x82\xd3\xe4\x93\x02=\"8/promotions/v1beta/{parent=accounts/*}/promotions:insert:\x01*\x12\xc8\x01\n\x0cGetPromotion\x12?.google.shopping.merchant.promotions.v1beta.GetPromotionRequest\x1a\x35.google.shopping.merchant.promotions.v1beta.Promotion\"@\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33\x12\x31/promotions/v1beta/{name=accounts/*/promotions/*}\x12\xdb\x01\n\x0eListPromotions\x12\x41.google.shopping.merchant.promotions.v1beta.ListPromotionsRequest\x1a\x42.google.shopping.merchant.promotions.v1beta.ListPromotionsResponse\"B\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x33\x12\x31/promotions/v1beta/{parent=accounts/*}/promotions\x1aG\xca\x41\x1amerchantapi.googleapis.com\xd2\x41\'https://www.googleapis.com/auth/contentB\xd4\x01\n.com.google.shopping.merchant.promotions.v1betaB\x0fPromotionsProtoP\x01ZTcloud.google.com/go/shopping/merchant/promotions/apiv1beta/promotionspb;promotionspb\xea\x41\x38\n\"merchantapi.googleapis.com/Account\x12\x12\x61\x63\x63ounts/{account}b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.shopping.merchant.promotions.v1beta.Attributes", "google/shopping/merchant/promotions/v1beta/promotions_common.proto"],
    ["google.shopping.type.CustomAttribute", "google/shopping/type/types.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Shopping
    module Merchant
      module Promotions
        module V1beta
          Promotion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.promotions.v1beta.Promotion").msgclass
          InsertPromotionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.promotions.v1beta.InsertPromotionRequest").msgclass
          GetPromotionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.promotions.v1beta.GetPromotionRequest").msgclass
          ListPromotionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.promotions.v1beta.ListPromotionsRequest").msgclass
          ListPromotionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.shopping.merchant.promotions.v1beta.ListPromotionsResponse").msgclass
        end
      end
    end
  end
end
