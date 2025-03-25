# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/cloudcontrolspartner/v1/customers.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/cloudcontrolspartner/v1/completion_state_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n4google/cloud/cloudcontrolspartner/v1/customers.proto\x12$google.cloud.cloudcontrolspartner.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a;google/cloud/cloudcontrolspartner/v1/completion_state.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xcc\x02\n\x08\x43ustomer\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x65\n\x19\x63ustomer_onboarding_state\x18\x03 \x01(\x0b\x32=.google.cloud.cloudcontrolspartner.v1.CustomerOnboardingStateB\x03\xe0\x41\x03\x12\x19\n\x0cis_onboarded\x18\x04 \x01(\x08\x42\x03\xe0\x41\x03:\x8f\x01\xea\x41\x8b\x01\n,cloudcontrolspartner.googleapis.com/Customer\x12\x46organizations/{organization}/locations/{location}/customers/{customer}*\tcustomers2\x08\x63ustomer\"\xaf\x01\n\x14ListCustomersRequest\x12\x44\n\x06parent\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\x12,cloudcontrolspartner.googleapis.com/Customer\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x88\x01\n\x15ListCustomersResponse\x12\x41\n\tcustomers\x18\x01 \x03(\x0b\x32..google.cloud.cloudcontrolspartner.v1.Customer\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"X\n\x12GetCustomerRequest\x12\x42\n\x04name\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\n,cloudcontrolspartner.googleapis.com/Customer\"q\n\x17\x43ustomerOnboardingState\x12V\n\x10onboarding_steps\x18\x01 \x03(\x0b\x32<.google.cloud.cloudcontrolspartner.v1.CustomerOnboardingStep\"\xf0\x02\n\x16\x43ustomerOnboardingStep\x12O\n\x04step\x18\x01 \x01(\x0e\x32\x41.google.cloud.cloudcontrolspartner.v1.CustomerOnboardingStep.Step\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x33\n\x0f\x63ompletion_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12T\n\x10\x63ompletion_state\x18\x04 \x01(\x0e\x32\x35.google.cloud.cloudcontrolspartner.v1.CompletionStateB\x03\xe0\x41\x03\"J\n\x04Step\x12\x14\n\x10STEP_UNSPECIFIED\x10\x00\x12\x12\n\x0eKAJ_ENROLLMENT\x10\x01\x12\x18\n\x14\x43USTOMER_ENVIRONMENT\x10\x02\x42\x92\x02\n(com.google.cloud.cloudcontrolspartner.v1B\x0e\x43ustomersProtoP\x01Z\\cloud.google.com/go/cloudcontrolspartner/apiv1/cloudcontrolspartnerpb;cloudcontrolspartnerpb\xaa\x02$Google.Cloud.CloudControlsPartner.V1\xca\x02$Google\\Cloud\\CloudControlsPartner\\V1\xea\x02\'Google::Cloud::CloudControlsPartner::V1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
    module CloudControlsPartner
      module V1
        Customer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.cloudcontrolspartner.v1.Customer").msgclass
        ListCustomersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.cloudcontrolspartner.v1.ListCustomersRequest").msgclass
        ListCustomersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.cloudcontrolspartner.v1.ListCustomersResponse").msgclass
        GetCustomerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.cloudcontrolspartner.v1.GetCustomerRequest").msgclass
        CustomerOnboardingState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.cloudcontrolspartner.v1.CustomerOnboardingState").msgclass
        CustomerOnboardingStep = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.cloudcontrolspartner.v1.CustomerOnboardingStep").msgclass
        CustomerOnboardingStep::Step = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.cloudcontrolspartner.v1.CustomerOnboardingStep.Step").enummodule
      end
    end
  end
end
