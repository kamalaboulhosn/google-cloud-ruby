# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/scheduler/v1/job.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/scheduler/v1/target_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n#google/cloud/scheduler/v1/job.proto\x12\x19google.cloud.scheduler.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a&google/cloud/scheduler/v1/target.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xef\x06\n\x03Job\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12@\n\rpubsub_target\x18\x04 \x01(\x0b\x32\'.google.cloud.scheduler.v1.PubsubTargetH\x00\x12P\n\x16\x61pp_engine_http_target\x18\x05 \x01(\x0b\x32..google.cloud.scheduler.v1.AppEngineHttpTargetH\x00\x12<\n\x0bhttp_target\x18\x06 \x01(\x0b\x32%.google.cloud.scheduler.v1.HttpTargetH\x00\x12\x10\n\x08schedule\x18\x14 \x01(\t\x12\x11\n\ttime_zone\x18\x15 \x01(\t\x12\x39\n\x10user_update_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x38\n\x05state\x18\n \x01(\x0e\x32$.google.cloud.scheduler.v1.Job.StateB\x03\xe0\x41\x03\x12\'\n\x06status\x18\x0b \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12\x36\n\rschedule_time\x18\x11 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12:\n\x11last_attempt_time\x18\x12 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12<\n\x0cretry_config\x18\x13 \x01(\x0b\x32&.google.cloud.scheduler.v1.RetryConfig\x12\x33\n\x10\x61ttempt_deadline\x18\x16 \x01(\x0b\x32\x19.google.protobuf.Duration\"X\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x45NABLED\x10\x01\x12\n\n\x06PAUSED\x10\x02\x12\x0c\n\x08\x44ISABLED\x10\x03\x12\x11\n\rUPDATE_FAILED\x10\x04:e\xea\x41\x62\n!cloudscheduler.googleapis.com/Job\x12\x32projects/{project}/locations/{location}/jobs/{job}*\x04jobs2\x03jobB\x08\n\x06target\"\xe2\x01\n\x0bRetryConfig\x12\x13\n\x0bretry_count\x18\x01 \x01(\x05\x12\x35\n\x12max_retry_duration\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x37\n\x14min_backoff_duration\x18\x03 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x37\n\x14max_backoff_duration\x18\x04 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x15\n\rmax_doublings\x18\x05 \x01(\x05\x42h\n\x1d\x63om.google.cloud.scheduler.v1B\x08JobProtoP\x01Z;cloud.google.com/go/scheduler/apiv1/schedulerpb;schedulerpbb\x06proto3"

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
    ["google.cloud.scheduler.v1.PubsubTarget", "google/cloud/scheduler/v1/target.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module Scheduler
      module V1
        Job = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.Job").msgclass
        Job::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.Job.State").enummodule
        RetryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.scheduler.v1.RetryConfig").msgclass
      end
    end
  end
end
