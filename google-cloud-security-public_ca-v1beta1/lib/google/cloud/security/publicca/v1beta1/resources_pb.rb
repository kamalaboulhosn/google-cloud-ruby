# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/security/publicca/v1beta1/resources.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'


descriptor_data = "\n6google/cloud/security/publicca/v1beta1/resources.proto\x12&google.cloud.security.publicca.v1beta1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\"\xdd\x01\n\x12\x45xternalAccountKey\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x06key_id\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x18\n\x0b\x62\x36\x34_mac_key\x18\x03 \x01(\x0c\x42\x03\xe0\x41\x03:\x84\x01\xea\x41\x80\x01\n*publicca.googleapis.com/ExternalAccountKey\x12Rprojects/{project}/locations/{location}/externalAccountKeys/{external_account_key}B\x88\x02\n*com.google.cloud.security.publicca.v1beta1B\x0eResourcesProtoP\x01ZFcloud.google.com/go/security/publicca/apiv1beta1/publiccapb;publiccapb\xf8\x01\x01\xaa\x02&Google.Cloud.Security.PublicCA.V1Beta1\xca\x02&Google\\Cloud\\Security\\PublicCA\\V1beta1\xea\x02*Google::Cloud::Security::PublicCA::V1beta1b\x06proto3"

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
  module Cloud
    module Security
      module PublicCA
        module V1beta1
          ExternalAccountKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.security.publicca.v1beta1.ExternalAccountKey").msgclass
        end
      end
    end
  end
end
