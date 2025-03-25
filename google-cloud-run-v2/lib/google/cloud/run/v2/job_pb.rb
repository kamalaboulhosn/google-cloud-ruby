# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/run/v2/job.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/launch_stage_pb'
require 'google/api/resource_pb'
require 'google/api/routing_pb'
require 'google/cloud/run/v2/condition_pb'
require 'google/cloud/run/v2/execution_pb'
require 'google/cloud/run/v2/execution_template_pb'
require 'google/cloud/run/v2/k8s.min_pb'
require 'google/cloud/run/v2/vendor_settings_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n\x1dgoogle/cloud/run/v2/job.proto\x12\x13google.cloud.run.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1dgoogle/api/launch_stage.proto\x1a\x19google/api/resource.proto\x1a\x18google/api/routing.proto\x1a#google/cloud/run/v2/condition.proto\x1a#google/cloud/run/v2/execution.proto\x1a,google/cloud/run/v2/execution_template.proto\x1a!google/cloud/run/v2/k8s.min.proto\x1a)google/cloud/run/v2/vendor_settings.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a#google/longrunning/operations.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x9a\x01\n\x10\x43reateJobRequest\x12.\n\x06parent\x18\x01 \x01(\tB\x1e\xe0\x41\x02\xfa\x41\x18\x12\x16run.googleapis.com/Job\x12*\n\x03job\x18\x02 \x01(\x0b\x32\x18.google.cloud.run.v2.JobB\x03\xe0\x41\x02\x12\x13\n\x06job_id\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\rvalidate_only\x18\x04 \x01(\x08\"=\n\rGetJobRequest\x12,\n\x04name\x18\x01 \x01(\tB\x1e\xe0\x41\x02\xfa\x41\x18\n\x16run.googleapis.com/Job\"q\n\x10UpdateJobRequest\x12*\n\x03job\x18\x01 \x01(\x0b\x32\x18.google.cloud.run.v2.JobB\x03\xe0\x41\x02\x12\x15\n\rvalidate_only\x18\x03 \x01(\x08\x12\x1a\n\rallow_missing\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\"~\n\x0fListJobsRequest\x12.\n\x06parent\x18\x01 \x01(\tB\x1e\xe0\x41\x02\xfa\x41\x18\x12\x16run.googleapis.com/Job\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x14\n\x0cshow_deleted\x18\x04 \x01(\x08\"S\n\x10ListJobsResponse\x12&\n\x04jobs\x18\x01 \x03(\x0b\x32\x18.google.cloud.run.v2.Job\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"e\n\x10\x44\x65leteJobRequest\x12,\n\x04name\x18\x01 \x01(\tB\x1e\xe0\x41\x02\xfa\x41\x18\n\x16run.googleapis.com/Job\x12\x15\n\rvalidate_only\x18\x03 \x01(\x08\x12\x0c\n\x04\x65tag\x18\x04 \x01(\t\"\xcc\x03\n\rRunJobRequest\x12,\n\x04name\x18\x01 \x01(\tB\x1e\xe0\x41\x02\xfa\x41\x18\n\x16run.googleapis.com/Job\x12\x15\n\rvalidate_only\x18\x02 \x01(\x08\x12\x0c\n\x04\x65tag\x18\x03 \x01(\t\x12?\n\toverrides\x18\x04 \x01(\x0b\x32,.google.cloud.run.v2.RunJobRequest.Overrides\x1a\xa6\x02\n\tOverrides\x12[\n\x13\x63ontainer_overrides\x18\x01 \x03(\x0b\x32>.google.cloud.run.v2.RunJobRequest.Overrides.ContainerOverride\x12\x17\n\ntask_count\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12*\n\x07timeout\x18\x04 \x01(\x0b\x32\x19.google.protobuf.Duration\x1aw\n\x11\x43ontainerOverride\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x11\n\x04\x61rgs\x18\x02 \x03(\tB\x03\xe0\x41\x01\x12(\n\x03\x65nv\x18\x03 \x03(\x0b\x32\x1b.google.cloud.run.v2.EnvVar\x12\x17\n\nclear_args\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\"\xfa\t\n\x03Job\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x10\n\x03uid\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x17\n\ngeneration\x18\x03 \x01(\x03\x42\x03\xe0\x41\x03\x12\x34\n\x06labels\x18\x04 \x03(\x0b\x32$.google.cloud.run.v2.Job.LabelsEntry\x12>\n\x0b\x61nnotations\x18\x05 \x03(\x0b\x32).google.cloud.run.v2.Job.AnnotationsEntry\x12\x34\n\x0b\x63reate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x64\x65lete_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0b\x65xpire_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x14\n\x07\x63reator\x18\n \x01(\tB\x03\xe0\x41\x03\x12\x1a\n\rlast_modifier\x18\x0b \x01(\tB\x03\xe0\x41\x03\x12\x0e\n\x06\x63lient\x18\x0c \x01(\t\x12\x16\n\x0e\x63lient_version\x18\r \x01(\t\x12-\n\x0claunch_stage\x18\x0e \x01(\x0e\x32\x17.google.api.LaunchStage\x12\x46\n\x14\x62inary_authorization\x18\x0f \x01(\x0b\x32(.google.cloud.run.v2.BinaryAuthorization\x12=\n\x08template\x18\x10 \x01(\x0b\x32&.google.cloud.run.v2.ExecutionTemplateB\x03\xe0\x41\x02\x12 \n\x13observed_generation\x18\x11 \x01(\x03\x42\x03\xe0\x41\x03\x12?\n\x12terminal_condition\x18\x12 \x01(\x0b\x32\x1e.google.cloud.run.v2.ConditionB\x03\xe0\x41\x03\x12\x37\n\nconditions\x18\x13 \x03(\x0b\x32\x1e.google.cloud.run.v2.ConditionB\x03\xe0\x41\x03\x12\x1c\n\x0f\x65xecution_count\x18\x14 \x01(\x05\x42\x03\xe0\x41\x03\x12N\n\x18latest_created_execution\x18\x16 \x01(\x0b\x32\'.google.cloud.run.v2.ExecutionReferenceB\x03\xe0\x41\x03\x12\x18\n\x0breconciling\x18\x17 \x01(\x08\x42\x03\xe0\x41\x03\x12\x1a\n\rsatisfies_pzs\x18\x19 \x01(\x08\x42\x03\xe0\x41\x03\x12\x1f\n\x15start_execution_token\x18\x1a \x01(\tH\x00\x12\x1d\n\x13run_execution_token\x18\x1b \x01(\tH\x00\x12\x11\n\x04\x65tag\x18\x63 \x01(\tB\x03\xe0\x41\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1a\x32\n\x10\x41nnotationsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:R\xea\x41O\n\x16run.googleapis.com/Job\x12\x32projects/{project}/locations/{location}/jobs/{job}R\x01\x01\x42\x12\n\x10\x63reate_execution\"\xdf\x03\n\x12\x45xecutionReference\x12/\n\x04name\x18\x01 \x01(\tB!\xfa\x41\x1e\n\x1crun.googleapis.com/Execution\x12/\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x33\n\x0f\x63ompletion_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x64\x65lete_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12S\n\x11\x63ompletion_status\x18\x04 \x01(\x0e\x32\x38.google.cloud.run.v2.ExecutionReference.CompletionStatus\"\xab\x01\n\x10\x43ompletionStatus\x12!\n\x1d\x43OMPLETION_STATUS_UNSPECIFIED\x10\x00\x12\x17\n\x13\x45XECUTION_SUCCEEDED\x10\x01\x12\x14\n\x10\x45XECUTION_FAILED\x10\x02\x12\x15\n\x11\x45XECUTION_RUNNING\x10\x03\x12\x15\n\x11\x45XECUTION_PENDING\x10\x04\x12\x17\n\x13\x45XECUTION_CANCELLED\x10\x05\x32\x8a\x0e\n\x04Jobs\x12\xdd\x01\n\tCreateJob\x12%.google.cloud.run.v2.CreateJobRequest\x1a\x1d.google.longrunning.Operation\"\x89\x01\xca\x41\n\n\x03Job\x12\x03Job\xda\x41\x11parent,job,job_id\x82\xd3\xe4\x93\x02/\"(/v2/{parent=projects/*/locations/*}/jobs:\x03job\x8a\xd3\xe4\x93\x02-\x12+\n\x06parent\x12!projects/*/locations/{location=*}\x12\xb3\x01\n\x06GetJob\x12\".google.cloud.run.v2.GetJobRequest\x1a\x18.google.cloud.run.v2.Job\"k\xda\x41\x04name\x82\xd3\xe4\x93\x02*\x12(/v2/{name=projects/*/locations/*/jobs/*}\x8a\xd3\xe4\x93\x02.\x12,\n\x04name\x12$projects/*/locations/{location=*}/**\x12\xc5\x01\n\x08ListJobs\x12$.google.cloud.run.v2.ListJobsRequest\x1a%.google.cloud.run.v2.ListJobsResponse\"l\xda\x41\x06parent\x82\xd3\xe4\x93\x02*\x12(/v2/{parent=projects/*/locations/*}/jobs\x8a\xd3\xe4\x93\x02-\x12+\n\x06parent\x12!projects/*/locations/{location=*}\x12\xd8\x01\n\tUpdateJob\x12%.google.cloud.run.v2.UpdateJobRequest\x1a\x1d.google.longrunning.Operation\"\x84\x01\xca\x41\n\n\x03Job\x12\x03Job\xda\x41\x03job\x82\xd3\xe4\x93\x02\x33\x32,/v2/{job.name=projects/*/locations/*/jobs/*}:\x03job\x8a\xd3\xe4\x93\x02\x32\x12\x30\n\x08job.name\x12$projects/*/locations/{location=*}/**\x12\xcb\x01\n\tDeleteJob\x12%.google.cloud.run.v2.DeleteJobRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41\n\n\x03Job\x12\x03Job\xda\x41\x04name\x82\xd3\xe4\x93\x02**(/v2/{name=projects/*/locations/*/jobs/*}\x8a\xd3\xe4\x93\x02.\x12,\n\x04name\x12$projects/*/locations/{location=*}/**\x12\xd9\x01\n\x06RunJob\x12\".google.cloud.run.v2.RunJobRequest\x1a\x1d.google.longrunning.Operation\"\x8b\x01\xca\x41\x16\n\tExecution\x12\tExecution\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\",/v2/{name=projects/*/locations/*/jobs/*}:run:\x01*\x8a\xd3\xe4\x93\x02.\x12,\n\x04name\x12$projects/*/locations/{location=*}/**\x12\x8c\x01\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"A\x82\xd3\xe4\x93\x02;\x12\x39/v2/{resource=projects/*/locations/*/jobs/*}:getIamPolicy\x12\x8f\x01\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"D\x82\xd3\xe4\x93\x02>\"9/v2/{resource=projects/*/locations/*/jobs/*}:setIamPolicy:\x01*\x12\xb5\x01\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"J\x82\xd3\xe4\x93\x02\x44\"?/v2/{resource=projects/*/locations/*/jobs/*}:testIamPermissions:\x01*\x1a\x46\xca\x41\x12run.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformBP\n\x17\x63om.google.cloud.run.v2B\x08JobProtoP\x01Z)cloud.google.com/go/run/apiv2/runpb;runpbb\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.cloud.run.v2.EnvVar", "google/cloud/run/v2/k8s.min.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.cloud.run.v2.BinaryAuthorization", "google/cloud/run/v2/vendor_settings.proto"],
    ["google.cloud.run.v2.ExecutionTemplate", "google/cloud/run/v2/execution_template.proto"],
    ["google.cloud.run.v2.Condition", "google/cloud/run/v2/condition.proto"],
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
    module Run
      module V2
        CreateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.CreateJobRequest").msgclass
        GetJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.GetJobRequest").msgclass
        UpdateJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.UpdateJobRequest").msgclass
        ListJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ListJobsRequest").msgclass
        ListJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ListJobsResponse").msgclass
        DeleteJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.DeleteJobRequest").msgclass
        RunJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.RunJobRequest").msgclass
        RunJobRequest::Overrides = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.RunJobRequest.Overrides").msgclass
        RunJobRequest::Overrides::ContainerOverride = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.RunJobRequest.Overrides.ContainerOverride").msgclass
        Job = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.Job").msgclass
        ExecutionReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ExecutionReference").msgclass
        ExecutionReference::CompletionStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.run.v2.ExecutionReference.CompletionStatus").enummodule
      end
    end
  end
end
