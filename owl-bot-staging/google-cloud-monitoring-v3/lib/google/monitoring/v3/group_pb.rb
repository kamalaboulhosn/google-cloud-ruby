# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/group.proto

require 'google/protobuf'

require 'google/api/resource_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/v3/group.proto", :syntax => :proto3) do
    add_message "google.monitoring.v3.Group" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :parent_name, :string, 3
      optional :filter, :string, 5
      optional :is_cluster, :bool, 6
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module V3
        Group = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Group").msgclass
      end
    end
  end
end