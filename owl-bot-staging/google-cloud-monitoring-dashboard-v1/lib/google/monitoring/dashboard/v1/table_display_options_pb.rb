# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/dashboard/v1/table_display_options.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/dashboard/v1/table_display_options.proto", :syntax => :proto3) do
    add_message "google.monitoring.dashboard.v1.TableDisplayOptions" do
      repeated :shown_columns, :string, 1
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module Dashboard
        module V1
          TableDisplayOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.TableDisplayOptions").msgclass
        end
      end
    end
  end
end