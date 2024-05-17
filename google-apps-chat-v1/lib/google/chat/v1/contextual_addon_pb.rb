# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/chat/v1/contextual_addon.proto

require 'google/protobuf'

require 'google/chat/v1/widgets_pb'


descriptor_data = "\n%google/chat/v1/contextual_addon.proto\x12\x0egoogle.chat.v1\x1a\x1cgoogle/chat/v1/widgets.proto\"\x8a\x05\n\x15\x43ontextualAddOnMarkup\x1a\xf0\x04\n\x04\x43\x61rd\x12\x45\n\x06header\x18\x01 \x01(\x0b\x32\x35.google.chat.v1.ContextualAddOnMarkup.Card.CardHeader\x12\x44\n\x08sections\x18\x02 \x03(\x0b\x32\x32.google.chat.v1.ContextualAddOnMarkup.Card.Section\x12K\n\x0c\x63\x61rd_actions\x18\x03 \x03(\x0b\x32\x35.google.chat.v1.ContextualAddOnMarkup.Card.CardAction\x12\x0c\n\x04name\x18\x04 \x01(\t\x1a\xd9\x01\n\nCardHeader\x12\r\n\x05title\x18\x01 \x01(\t\x12\x10\n\x08subtitle\x18\x02 \x01(\t\x12U\n\x0bimage_style\x18\x03 \x01(\x0e\x32@.google.chat.v1.ContextualAddOnMarkup.Card.CardHeader.ImageStyle\x12\x11\n\timage_url\x18\x04 \x01(\t\"@\n\nImageStyle\x12\x1b\n\x17IMAGE_STYLE_UNSPECIFIED\x10\x00\x12\t\n\x05IMAGE\x10\x01\x12\n\n\x06\x41VATAR\x10\x02\x1aH\n\x07Section\x12\x0e\n\x06header\x18\x01 \x01(\t\x12-\n\x07widgets\x18\x02 \x03(\x0b\x32\x1c.google.chat.v1.WidgetMarkup\x1aZ\n\nCardAction\x12\x14\n\x0c\x61\x63tion_label\x18\x01 \x01(\t\x12\x36\n\x08on_click\x18\x02 \x01(\x0b\x32$.google.chat.v1.WidgetMarkup.OnClickB\xad\x01\n\x12\x63om.google.chat.v1B\x14\x43ontextualAddOnProtoP\x01Z,cloud.google.com/go/chat/apiv1/chatpb;chatpb\xa2\x02\x0b\x44YNAPIProto\xaa\x02\x13Google.Apps.Chat.V1\xca\x02\x13Google\\Apps\\Chat\\V1\xea\x02\x16Google::Apps::Chat::V1b\x06proto3"

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
    ["google.chat.v1.WidgetMarkup", "google/chat/v1/widgets.proto"],
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
  module Apps
    module Chat
      module V1
        ContextualAddOnMarkup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ContextualAddOnMarkup").msgclass
        ContextualAddOnMarkup::Card = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ContextualAddOnMarkup.Card").msgclass
        ContextualAddOnMarkup::Card::CardHeader = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ContextualAddOnMarkup.Card.CardHeader").msgclass
        ContextualAddOnMarkup::Card::CardHeader::ImageStyle = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ContextualAddOnMarkup.Card.CardHeader.ImageStyle").enummodule
        ContextualAddOnMarkup::Card::Section = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ContextualAddOnMarkup.Card.Section").msgclass
        ContextualAddOnMarkup::Card::CardAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.ContextualAddOnMarkup.Card.CardAction").msgclass
      end
    end
  end
end
