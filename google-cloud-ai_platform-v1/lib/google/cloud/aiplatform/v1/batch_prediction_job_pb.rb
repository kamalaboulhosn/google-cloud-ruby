# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/batch_prediction_job.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/completion_stats_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/cloud/aiplatform/v1/explanation_pb'
require 'google/cloud/aiplatform/v1/io_pb'
require 'google/cloud/aiplatform/v1/job_state_pb'
require 'google/cloud/aiplatform/v1/machine_resources_pb'
require 'google/cloud/aiplatform/v1/manual_batch_tuning_parameters_pb'
require 'google/cloud/aiplatform/v1/unmanaged_container_model_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n5google/cloud/aiplatform/v1/batch_prediction_job.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x31google/cloud/aiplatform/v1/completion_stats.proto\x1a\x30google/cloud/aiplatform/v1/encryption_spec.proto\x1a,google/cloud/aiplatform/v1/explanation.proto\x1a#google/cloud/aiplatform/v1/io.proto\x1a*google/cloud/aiplatform/v1/job_state.proto\x1a\x32google/cloud/aiplatform/v1/machine_resources.proto\x1a?google/cloud/aiplatform/v1/manual_batch_tuning_parameters.proto\x1a:google/cloud/aiplatform/v1/unmanaged_container_model.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xbb\x13\n\x12\x42\x61tchPredictionJob\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x19\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x33\n\x05model\x18\x03 \x01(\tB$\xfa\x41!\n\x1f\x61iplatform.googleapis.com/Model\x12\x1d\n\x10model_version_id\x18\x1e \x01(\tB\x03\xe0\x41\x03\x12V\n\x19unmanaged_container_model\x18\x1c \x01(\x0b\x32\x33.google.cloud.aiplatform.v1.UnmanagedContainerModel\x12U\n\x0cinput_config\x18\x04 \x01(\x0b\x32:.google.cloud.aiplatform.v1.BatchPredictionJob.InputConfigB\x03\xe0\x41\x02\x12V\n\x0finstance_config\x18\x1b \x01(\x0b\x32=.google.cloud.aiplatform.v1.BatchPredictionJob.InstanceConfig\x12\x30\n\x10model_parameters\x18\x05 \x01(\x0b\x32\x16.google.protobuf.Value\x12W\n\routput_config\x18\x06 \x01(\x0b\x32;.google.cloud.aiplatform.v1.BatchPredictionJob.OutputConfigB\x03\xe0\x41\x02\x12P\n\x13\x64\x65\x64icated_resources\x18\x07 \x01(\x0b\x32\x33.google.cloud.aiplatform.v1.BatchDedicatedResources\x12\x17\n\x0fservice_account\x18\x1d \x01(\t\x12\x64\n\x1emanual_batch_tuning_parameters\x18\x08 \x01(\x0b\x32\x37.google.cloud.aiplatform.v1.ManualBatchTuningParametersB\x03\xe0\x41\x05\x12\x1c\n\x14generate_explanation\x18\x17 \x01(\x08\x12\x45\n\x10\x65xplanation_spec\x18\x19 \x01(\x0b\x32+.google.cloud.aiplatform.v1.ExplanationSpec\x12S\n\x0boutput_info\x18\t \x01(\x0b\x32\x39.google.cloud.aiplatform.v1.BatchPredictionJob.OutputInfoB\x03\xe0\x41\x03\x12\x38\n\x05state\x18\n \x01(\x0e\x32$.google.cloud.aiplatform.v1.JobStateB\x03\xe0\x41\x03\x12&\n\x05\x65rror\x18\x0b \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12\x31\n\x10partial_failures\x18\x0c \x03(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12N\n\x12resources_consumed\x18\r \x01(\x0b\x32-.google.cloud.aiplatform.v1.ResourcesConsumedB\x03\xe0\x41\x03\x12J\n\x10\x63ompletion_stats\x18\x0e \x01(\x0b\x32+.google.cloud.aiplatform.v1.CompletionStatsB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x0f \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x33\n\nstart_time\x18\x10 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x11 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x12 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12J\n\x06labels\x18\x13 \x03(\x0b\x32:.google.cloud.aiplatform.v1.BatchPredictionJob.LabelsEntry\x12\x43\n\x0f\x65ncryption_spec\x18\x18 \x01(\x0b\x32*.google.cloud.aiplatform.v1.EncryptionSpec\x12!\n\x19\x64isable_container_logging\x18\" \x01(\x08\x1a\xba\x01\n\x0bInputConfig\x12;\n\ngcs_source\x18\x02 \x01(\x0b\x32%.google.cloud.aiplatform.v1.GcsSourceH\x00\x12\x45\n\x0f\x62igquery_source\x18\x03 \x01(\x0b\x32*.google.cloud.aiplatform.v1.BigQuerySourceH\x00\x12\x1d\n\x10instances_format\x18\x01 \x01(\tB\x03\xe0\x41\x02\x42\x08\n\x06source\x1al\n\x0eInstanceConfig\x12\x15\n\rinstance_type\x18\x01 \x01(\t\x12\x11\n\tkey_field\x18\x02 \x01(\t\x12\x17\n\x0fincluded_fields\x18\x03 \x03(\t\x12\x17\n\x0f\x65xcluded_fields\x18\x04 \x03(\t\x1a\xd6\x01\n\x0cOutputConfig\x12\x45\n\x0fgcs_destination\x18\x02 \x01(\x0b\x32*.google.cloud.aiplatform.v1.GcsDestinationH\x00\x12O\n\x14\x62igquery_destination\x18\x03 \x01(\x0b\x32/.google.cloud.aiplatform.v1.BigQueryDestinationH\x00\x12\x1f\n\x12predictions_format\x18\x01 \x01(\tB\x03\xe0\x41\x02\x42\r\n\x0b\x64\x65stination\x1a\x90\x01\n\nOutputInfo\x12#\n\x14gcs_output_directory\x18\x01 \x01(\tB\x03\xe0\x41\x03H\x00\x12&\n\x17\x62igquery_output_dataset\x18\x02 \x01(\tB\x03\xe0\x41\x03H\x00\x12\"\n\x15\x62igquery_output_table\x18\x04 \x01(\tB\x03\xe0\x41\x03\x42\x11\n\x0foutput_location\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x86\x01\xea\x41\x82\x01\n,aiplatform.googleapis.com/BatchPredictionJob\x12Rprojects/{project}/locations/{location}/batchPredictionJobs/{batch_prediction_job}B\xd5\x01\n\x1e\x63om.google.cloud.aiplatform.v1B\x17\x42\x61tchPredictionJobProtoP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1b\x06proto3"

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
    ["google.cloud.aiplatform.v1.UnmanagedContainerModel", "google/cloud/aiplatform/v1/unmanaged_container_model.proto"],
    ["google.protobuf.Value", "google/protobuf/struct.proto"],
    ["google.cloud.aiplatform.v1.BatchDedicatedResources", "google/cloud/aiplatform/v1/machine_resources.proto"],
    ["google.cloud.aiplatform.v1.ManualBatchTuningParameters", "google/cloud/aiplatform/v1/manual_batch_tuning_parameters.proto"],
    ["google.cloud.aiplatform.v1.ExplanationSpec", "google/cloud/aiplatform/v1/explanation.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.cloud.aiplatform.v1.CompletionStats", "google/cloud/aiplatform/v1/completion_stats.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.aiplatform.v1.EncryptionSpec", "google/cloud/aiplatform/v1/encryption_spec.proto"],
    ["google.cloud.aiplatform.v1.GcsSource", "google/cloud/aiplatform/v1/io.proto"],
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
    module AIPlatform
      module V1
        BatchPredictionJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchPredictionJob").msgclass
        BatchPredictionJob::InputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchPredictionJob.InputConfig").msgclass
        BatchPredictionJob::InstanceConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchPredictionJob.InstanceConfig").msgclass
        BatchPredictionJob::OutputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchPredictionJob.OutputConfig").msgclass
        BatchPredictionJob::OutputInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.BatchPredictionJob.OutputInfo").msgclass
      end
    end
  end
end
