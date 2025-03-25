# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/chat/v1/chat_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/chat/v1/attachment_pb'
require 'google/chat/v1/membership_pb'
require 'google/chat/v1/message_pb'
require 'google/chat/v1/reaction_pb'
require 'google/chat/v1/space_pb'
require 'google/chat/v1/space_event_pb'
require 'google/chat/v1/space_notification_setting_pb'
require 'google/chat/v1/space_read_state_pb'
require 'google/chat/v1/space_setup_pb'
require 'google/chat/v1/thread_read_state_pb'
require 'google/protobuf/empty_pb'


descriptor_data = "\n!google/chat/v1/chat_service.proto\x12\x0egoogle.chat.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/chat/v1/attachment.proto\x1a\x1fgoogle/chat/v1/membership.proto\x1a\x1cgoogle/chat/v1/message.proto\x1a\x1dgoogle/chat/v1/reaction.proto\x1a\x1agoogle/chat/v1/space.proto\x1a google/chat/v1/space_event.proto\x1a/google/chat/v1/space_notification_setting.proto\x1a%google/chat/v1/space_read_state.proto\x1a google/chat/v1/space_setup.proto\x1a&google/chat/v1/thread_read_state.proto\x1a\x1bgoogle/protobuf/empty.proto2\xb2.\n\x0b\x43hatService\x12\x9b\x01\n\rCreateMessage\x12$.google.chat.v1.CreateMessageRequest\x1a\x17.google.chat.v1.Message\"K\xda\x41\x19parent,message,message_id\x82\xd3\xe4\x93\x02)\"\x1e/v1/{parent=spaces/*}/messages:\x07message\x12\x8a\x01\n\x0cListMessages\x12#.google.chat.v1.ListMessagesRequest\x1a$.google.chat.v1.ListMessagesResponse\"/\xda\x41\x06parent\x82\xd3\xe4\x93\x02 \x12\x1e/v1/{parent=spaces/*}/messages\x12\x92\x01\n\x0fListMemberships\x12&.google.chat.v1.ListMembershipsRequest\x1a\'.google.chat.v1.ListMembershipsResponse\".\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x1f\x12\x1d/v1/{parent=spaces/*}/members\x12\x7f\n\rGetMembership\x12$.google.chat.v1.GetMembershipRequest\x1a\x1a.google.chat.v1.Membership\",\xda\x41\x04name\x82\xd3\xe4\x93\x02\x1f\x12\x1d/v1/{name=spaces/*/members/*}\x12w\n\nGetMessage\x12!.google.chat.v1.GetMessageRequest\x1a\x17.google.chat.v1.Message\"-\xda\x41\x04name\x82\xd3\xe4\x93\x02 \x12\x1e/v1/{name=spaces/*/messages/*}\x12\xd1\x01\n\rUpdateMessage\x12$.google.chat.v1.UpdateMessageRequest\x1a\x17.google.chat.v1.Message\"\x80\x01\xda\x41\x13message,update_mask\x82\xd3\xe4\x93\x02\x64\x1a&/v1/{message.name=spaces/*/messages/*}:\x07messageZ12&/v1/{message.name=spaces/*/messages/*}:\x07message\x12|\n\rDeleteMessage\x12$.google.chat.v1.DeleteMessageRequest\x1a\x16.google.protobuf.Empty\"-\xda\x41\x04name\x82\xd3\xe4\x93\x02 *\x1e/v1/{name=spaces/*/messages/*}\x12\x8e\x01\n\rGetAttachment\x12$.google.chat.v1.GetAttachmentRequest\x1a\x1a.google.chat.v1.Attachment\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v1/{name=spaces/*/messages/*/attachments/*}\x12\x9a\x01\n\x10UploadAttachment\x12\'.google.chat.v1.UploadAttachmentRequest\x1a(.google.chat.v1.UploadAttachmentResponse\"3\x82\xd3\xe4\x93\x02-\"(/v1/{parent=spaces/*}/attachments:upload:\x01*\x12j\n\nListSpaces\x12!.google.chat.v1.ListSpacesRequest\x1a\".google.chat.v1.ListSpacesResponse\"\x15\xda\x41\x00\x82\xd3\xe4\x93\x02\x0c\x12\n/v1/spaces\x12w\n\x0cSearchSpaces\x12#.google.chat.v1.SearchSpacesRequest\x1a$.google.chat.v1.SearchSpacesResponse\"\x1c\xda\x41\x00\x82\xd3\xe4\x93\x02\x13\x12\x11/v1/spaces:search\x12\x66\n\x08GetSpace\x12\x1f.google.chat.v1.GetSpaceRequest\x1a\x15.google.chat.v1.Space\"\"\xda\x41\x04name\x82\xd3\xe4\x93\x02\x15\x12\x13/v1/{name=spaces/*}\x12k\n\x0b\x43reateSpace\x12\".google.chat.v1.CreateSpaceRequest\x1a\x15.google.chat.v1.Space\"!\xda\x41\x05space\x82\xd3\xe4\x93\x02\x13\"\n/v1/spaces:\x05space\x12\x63\n\nSetUpSpace\x12!.google.chat.v1.SetUpSpaceRequest\x1a\x15.google.chat.v1.Space\"\x1b\x82\xd3\xe4\x93\x02\x15\"\x10/v1/spaces:setup:\x01*\x12\x86\x01\n\x0bUpdateSpace\x12\".google.chat.v1.UpdateSpaceRequest\x1a\x15.google.chat.v1.Space\"<\xda\x41\x11space,update_mask\x82\xd3\xe4\x93\x02\"2\x19/v1/{space.name=spaces/*}:\x05space\x12m\n\x0b\x44\x65leteSpace\x12\".google.chat.v1.DeleteSpaceRequest\x1a\x16.google.protobuf.Empty\"\"\xda\x41\x04name\x82\xd3\xe4\x93\x02\x15*\x13/v1/{name=spaces/*}\x12\x9d\x01\n\x13\x43ompleteImportSpace\x12*.google.chat.v1.CompleteImportSpaceRequest\x1a+.google.chat.v1.CompleteImportSpaceResponse\"-\x82\xd3\xe4\x93\x02\'\"\"/v1/{name=spaces/*}:completeImport:\x01*\x12z\n\x11\x46indDirectMessage\x12(.google.chat.v1.FindDirectMessageRequest\x1a\x15.google.chat.v1.Space\"$\x82\xd3\xe4\x93\x02\x1e\x12\x1c/v1/spaces:findDirectMessage\x12\x9e\x01\n\x10\x43reateMembership\x12\'.google.chat.v1.CreateMembershipRequest\x1a\x1a.google.chat.v1.Membership\"E\xda\x41\x11parent,membership\x82\xd3\xe4\x93\x02+\"\x1d/v1/{parent=spaces/*}/members:\nmembership\x12\xae\x01\n\x10UpdateMembership\x12\'.google.chat.v1.UpdateMembershipRequest\x1a\x1a.google.chat.v1.Membership\"U\xda\x41\x16membership,update_mask\x82\xd3\xe4\x93\x02\x36\x32(/v1/{membership.name=spaces/*/members/*}:\nmembership\x12\x85\x01\n\x10\x44\x65leteMembership\x12\'.google.chat.v1.DeleteMembershipRequest\x1a\x1a.google.chat.v1.Membership\",\xda\x41\x04name\x82\xd3\xe4\x93\x02\x1f*\x1d/v1/{name=spaces/*/members/*}\x12\xa1\x01\n\x0e\x43reateReaction\x12%.google.chat.v1.CreateReactionRequest\x1a\x18.google.chat.v1.Reaction\"N\xda\x41\x0fparent,reaction\x82\xd3\xe4\x93\x02\x36\"*/v1/{parent=spaces/*/messages/*}/reactions:\x08reaction\x12\x99\x01\n\rListReactions\x12$.google.chat.v1.ListReactionsRequest\x1a%.google.chat.v1.ListReactionsResponse\";\xda\x41\x06parent\x82\xd3\xe4\x93\x02,\x12*/v1/{parent=spaces/*/messages/*}/reactions\x12\x8a\x01\n\x0e\x44\x65leteReaction\x12%.google.chat.v1.DeleteReactionRequest\x1a\x16.google.protobuf.Empty\"9\xda\x41\x04name\x82\xd3\xe4\x93\x02,**/v1/{name=spaces/*/messages/*/reactions/*}\x12\x98\x01\n\x11GetSpaceReadState\x12(.google.chat.v1.GetSpaceReadStateRequest\x1a\x1e.google.chat.v1.SpaceReadState\"9\xda\x41\x04name\x82\xd3\xe4\x93\x02,\x12*/v1/{name=users/*/spaces/*/spaceReadState}\x12\xd9\x01\n\x14UpdateSpaceReadState\x12+.google.chat.v1.UpdateSpaceReadStateRequest\x1a\x1e.google.chat.v1.SpaceReadState\"t\xda\x41\x1cspace_read_state,update_mask\x82\xd3\xe4\x93\x02O2;/v1/{space_read_state.name=users/*/spaces/*/spaceReadState}:\x10space_read_state\x12\xa6\x01\n\x12GetThreadReadState\x12).google.chat.v1.GetThreadReadStateRequest\x1a\x1f.google.chat.v1.ThreadReadState\"D\xda\x41\x04name\x82\xd3\xe4\x93\x02\x37\x12\x35/v1/{name=users/*/spaces/*/threads/*/threadReadState}\x12\x83\x01\n\rGetSpaceEvent\x12$.google.chat.v1.GetSpaceEventRequest\x1a\x1a.google.chat.v1.SpaceEvent\"0\xda\x41\x04name\x82\xd3\xe4\x93\x02#\x12!/v1/{name=spaces/*/spaceEvents/*}\x12\x9d\x01\n\x0fListSpaceEvents\x12&.google.chat.v1.ListSpaceEventsRequest\x1a\'.google.chat.v1.ListSpaceEventsResponse\"9\xda\x41\rparent,filter\x82\xd3\xe4\x93\x02#\x12!/v1/{parent=spaces/*}/spaceEvents\x12\xc0\x01\n\x1bGetSpaceNotificationSetting\x12\x32.google.chat.v1.GetSpaceNotificationSettingRequest\x1a(.google.chat.v1.SpaceNotificationSetting\"C\xda\x41\x04name\x82\xd3\xe4\x93\x02\x36\x12\x34/v1/{name=users/*/spaces/*/spaceNotificationSetting}\x12\xa0\x02\n\x1eUpdateSpaceNotificationSetting\x12\x35.google.chat.v1.UpdateSpaceNotificationSettingRequest\x1a(.google.chat.v1.SpaceNotificationSetting\"\x9c\x01\xda\x41&space_notification_setting,update_mask\x82\xd3\xe4\x93\x02m2O/v1/{space_notification_setting.name=users/*/spaces/*/spaceNotificationSetting}:\x1aspace_notification_setting\x1a\xe2\t\xca\x41\x13\x63hat.googleapis.com\xd2\x41\xc8\thttps://www.googleapis.com/auth/chat.admin.delete,https://www.googleapis.com/auth/chat.admin.memberships,https://www.googleapis.com/auth/chat.admin.memberships.readonly,https://www.googleapis.com/auth/chat.admin.spaces,https://www.googleapis.com/auth/chat.admin.spaces.readonly,https://www.googleapis.com/auth/chat.bot,https://www.googleapis.com/auth/chat.delete,https://www.googleapis.com/auth/chat.import,https://www.googleapis.com/auth/chat.memberships,https://www.googleapis.com/auth/chat.memberships.app,https://www.googleapis.com/auth/chat.memberships.readonly,https://www.googleapis.com/auth/chat.messages,https://www.googleapis.com/auth/chat.messages.create,https://www.googleapis.com/auth/chat.messages.reactions,https://www.googleapis.com/auth/chat.messages.reactions.create,https://www.googleapis.com/auth/chat.messages.reactions.readonly,https://www.googleapis.com/auth/chat.messages.readonly,https://www.googleapis.com/auth/chat.spaces,https://www.googleapis.com/auth/chat.spaces.create,https://www.googleapis.com/auth/chat.spaces.readonly,https://www.googleapis.com/auth/chat.users.readstate,https://www.googleapis.com/auth/chat.users.readstate.readonly,https://www.googleapis.com/auth/chat.users.spacesettingsB\xa9\x01\n\x12\x63om.google.chat.v1B\x10\x43hatServiceProtoP\x01Z,cloud.google.com/go/chat/apiv1/chatpb;chatpb\xa2\x02\x0b\x44YNAPIProto\xaa\x02\x13Google.Apps.Chat.V1\xca\x02\x13Google\\Apps\\Chat\\V1\xea\x02\x16Google::Apps::Chat::V1b\x06proto3"

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
      end
    end
  end
end
