# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/conformance/storage/v1/tests.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'


descriptor_data = "\n/google/cloud/conformance/storage/v1/tests.proto\x12#google.cloud.conformance.storage.v1\x1a\x1fgoogle/protobuf/timestamp.proto\"\xad\x01\n\x08TestFile\x12L\n\x10signing_v4_tests\x18\x01 \x03(\x0b\x32\x32.google.cloud.conformance.storage.v1.SigningV4Test\x12S\n\x14post_policy_v4_tests\x18\x02 \x03(\x0b\x32\x35.google.cloud.conformance.storage.v1.PostPolicyV4Test\"\x89\x05\n\rSigningV4Test\x12\x10\n\x08\x66ileName\x18\x01 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x0e\n\x06\x62ucket\x18\x03 \x01(\t\x12\x0e\n\x06object\x18\x04 \x01(\t\x12\x0e\n\x06method\x18\x05 \x01(\t\x12\x12\n\nexpiration\x18\x06 \x01(\x03\x12-\n\ttimestamp\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x13\n\x0b\x65xpectedUrl\x18\x08 \x01(\t\x12P\n\x07headers\x18\t \x03(\x0b\x32?.google.cloud.conformance.storage.v1.SigningV4Test.HeadersEntry\x12\x61\n\x10query_parameters\x18\n \x03(\x0b\x32G.google.cloud.conformance.storage.v1.SigningV4Test.QueryParametersEntry\x12\x0e\n\x06scheme\x18\x0b \x01(\t\x12?\n\x08urlStyle\x18\x0c \x01(\x0e\x32-.google.cloud.conformance.storage.v1.UrlStyle\x12\x1b\n\x13\x62ucketBoundHostname\x18\r \x01(\t\x12 \n\x18\x65xpectedCanonicalRequest\x18\x0e \x01(\t\x12\x1c\n\x14\x65xpectedStringToSign\x18\x0f \x01(\t\x1a.\n\x0cHeadersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x36\n\x14QueryParametersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"(\n\x12\x43onditionalMatches\x12\x12\n\nexpression\x18\x01 \x03(\t\"B\n\x10PolicyConditions\x12\x1a\n\x12\x63ontentLengthRange\x18\x01 \x03(\x05\x12\x12\n\nstartsWith\x18\x02 \x03(\t\"\xa6\x03\n\x0bPolicyInput\x12\x0e\n\x06scheme\x18\x01 \x01(\t\x12?\n\x08urlStyle\x18\x02 \x01(\x0e\x32-.google.cloud.conformance.storage.v1.UrlStyle\x12\x1b\n\x13\x62ucketBoundHostname\x18\x03 \x01(\t\x12\x0e\n\x06\x62ucket\x18\x04 \x01(\t\x12\x0e\n\x06object\x18\x05 \x01(\t\x12\x12\n\nexpiration\x18\x06 \x01(\x05\x12-\n\ttimestamp\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12L\n\x06\x66ields\x18\x08 \x03(\x0b\x32<.google.cloud.conformance.storage.v1.PolicyInput.FieldsEntry\x12I\n\nconditions\x18\t \x01(\x0b\x32\x35.google.cloud.conformance.storage.v1.PolicyConditions\x1a-\n\x0b\x46ieldsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xb8\x01\n\x0cPolicyOutput\x12\x0b\n\x03url\x18\x01 \x01(\t\x12M\n\x06\x66ields\x18\x02 \x03(\x0b\x32=.google.cloud.conformance.storage.v1.PolicyOutput.FieldsEntry\x12\x1d\n\x15\x65xpectedDecodedPolicy\x18\x03 \x01(\t\x1a-\n\x0b\x46ieldsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xb7\x01\n\x10PostPolicyV4Test\x12\x13\n\x0b\x64\x65scription\x18\x01 \x01(\t\x12\x45\n\x0bpolicyInput\x18\x02 \x01(\x0b\x32\x30.google.cloud.conformance.storage.v1.PolicyInput\x12G\n\x0cpolicyOutput\x18\x03 \x01(\x0b\x32\x31.google.cloud.conformance.storage.v1.PolicyOutput\"P\n\nRetryTests\x12\x42\n\nretryTests\x18\x01 \x03(\x0b\x32..google.cloud.conformance.storage.v1.RetryTest\"\'\n\x0fInstructionList\x12\x14\n\x0cinstructions\x18\x01 \x03(\t\"g\n\x06Method\x12\x0c\n\x04name\x18\x01 \x01(\t\x12@\n\tresources\x18\x02 \x03(\x0e\x32-.google.cloud.conformance.storage.v1.Resource\x12\r\n\x05group\x18\x03 \x01(\t\"\xe4\x01\n\tRetryTest\x12\n\n\x02id\x18\x01 \x01(\x05\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x43\n\x05\x63\x61ses\x18\x03 \x03(\x0b\x32\x34.google.cloud.conformance.storage.v1.InstructionList\x12<\n\x07methods\x18\x04 \x03(\x0b\x32+.google.cloud.conformance.storage.v1.Method\x12\x1c\n\x14preconditionProvided\x18\x05 \x01(\x08\x12\x15\n\rexpectSuccess\x18\x06 \x01(\x08*O\n\x08UrlStyle\x12\x0e\n\nPATH_STYLE\x10\x00\x12\x18\n\x14VIRTUAL_HOSTED_STYLE\x10\x01\x12\x19\n\x15\x42UCKET_BOUND_HOSTNAME\x10\x02*B\n\x08Resource\x12\n\n\x06\x42UCKET\x10\x00\x12\n\n\x06OBJECT\x10\x01\x12\x10\n\x0cNOTIFICATION\x10\x02\x12\x0c\n\x08HMAC_KEY\x10\x03\x42|\n\'com.google.cloud.conformance.storage.v1P\x01Z#google/cloud/conformance/storage/v1\xaa\x02)Google.Cloud.Storage.V1.Tests.Conformanceb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Google
  module Cloud
    module Conformance
      module Storage
        module V1
          TestFile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.TestFile").msgclass
          SigningV4Test = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.SigningV4Test").msgclass
          ConditionalMatches = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.ConditionalMatches").msgclass
          PolicyConditions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.PolicyConditions").msgclass
          PolicyInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.PolicyInput").msgclass
          PolicyOutput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.PolicyOutput").msgclass
          PostPolicyV4Test = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.PostPolicyV4Test").msgclass
          RetryTests = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.RetryTests").msgclass
          InstructionList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.InstructionList").msgclass
          Method = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.Method").msgclass
          RetryTest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.RetryTest").msgclass
          UrlStyle = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.UrlStyle").enummodule
          Resource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.conformance.storage.v1.Resource").enummodule
        end
      end
    end
  end
end
