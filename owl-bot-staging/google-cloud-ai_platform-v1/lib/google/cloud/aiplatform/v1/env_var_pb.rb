# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/env_var.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/aiplatform/v1/env_var.proto", :syntax => :proto3) do
    add_message "google.cloud.aiplatform.v1.EnvVar" do
      optional :name, :string, 1
      optional :value, :string, 2
    end
  end
end

module Google
  module Cloud
    module AIPlatform
      module V1
        EnvVar = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.EnvVar").msgclass
      end
    end
  end
end