# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/osconfig/v1/osconfig_zonal_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/cloud/osconfig/v1/inventory_pb'
require 'google/cloud/osconfig/v1/os_policy_assignment_reports_pb'
require 'google/cloud/osconfig/v1/os_policy_assignments_pb'
require 'google/cloud/osconfig/v1/vulnerability_pb'
require 'google/longrunning/operations_pb'


descriptor_data = "\n5google/cloud/osconfig/v1/osconfig_zonal_service.proto\x12\x18google.cloud.osconfig.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a(google/cloud/osconfig/v1/inventory.proto\x1a;google/cloud/osconfig/v1/os_policy_assignment_reports.proto\x1a\x34google/cloud/osconfig/v1/os_policy_assignments.proto\x1a,google/cloud/osconfig/v1/vulnerability.proto\x1a#google/longrunning/operations.proto2\xac\x17\n\x14OsConfigZonalService\x12\xbe\x02\n\x18\x43reateOSPolicyAssignment\x12\x39.google.cloud.osconfig.v1.CreateOSPolicyAssignmentRequest\x1a\x1d.google.longrunning.Operation\"\xc7\x01\xca\x41\x39\n\x12OSPolicyAssignment\x12#OSPolicyAssignmentOperationMetadata\xda\x41\x33parent,os_policy_assignment,os_policy_assignment_id\x82\xd3\xe4\x93\x02O\"7/v1/{parent=projects/*/locations/*}/osPolicyAssignments:\x14os_policy_assignment\x12\xc0\x02\n\x18UpdateOSPolicyAssignment\x12\x39.google.cloud.osconfig.v1.UpdateOSPolicyAssignmentRequest\x1a\x1d.google.longrunning.Operation\"\xc9\x01\xca\x41\x39\n\x12OSPolicyAssignment\x12#OSPolicyAssignmentOperationMetadata\xda\x41 os_policy_assignment,update_mask\x82\xd3\xe4\x93\x02\x64\x32L/v1/{os_policy_assignment.name=projects/*/locations/*/osPolicyAssignments/*}:\x14os_policy_assignment\x12\xc5\x01\n\x15GetOSPolicyAssignment\x12\x36.google.cloud.osconfig.v1.GetOSPolicyAssignmentRequest\x1a,.google.cloud.osconfig.v1.OSPolicyAssignment\"F\xda\x41\x04name\x82\xd3\xe4\x93\x02\x39\x12\x37/v1/{name=projects/*/locations/*/osPolicyAssignments/*}\x12\xd8\x01\n\x17ListOSPolicyAssignments\x12\x38.google.cloud.osconfig.v1.ListOSPolicyAssignmentsRequest\x1a\x39.google.cloud.osconfig.v1.ListOSPolicyAssignmentsResponse\"H\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x39\x12\x37/v1/{parent=projects/*/locations/*}/osPolicyAssignments\x12\xfc\x01\n\x1fListOSPolicyAssignmentRevisions\x12@.google.cloud.osconfig.v1.ListOSPolicyAssignmentRevisionsRequest\x1a\x41.google.cloud.osconfig.v1.ListOSPolicyAssignmentRevisionsResponse\"T\xda\x41\x04name\x82\xd3\xe4\x93\x02G\x12\x45/v1/{name=projects/*/locations/*/osPolicyAssignments/*}:listRevisions\x12\xfc\x01\n\x18\x44\x65leteOSPolicyAssignment\x12\x39.google.cloud.osconfig.v1.DeleteOSPolicyAssignmentRequest\x1a\x1d.google.longrunning.Operation\"\x85\x01\xca\x41<\n\x15google.protobuf.Empty\x12#OSPolicyAssignmentOperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x39*7/v1/{name=projects/*/locations/*/osPolicyAssignments/*}\x12\xea\x01\n\x1bGetOSPolicyAssignmentReport\x12<.google.cloud.osconfig.v1.GetOSPolicyAssignmentReportRequest\x1a\x32.google.cloud.osconfig.v1.OSPolicyAssignmentReport\"Y\xda\x41\x04name\x82\xd3\xe4\x93\x02L\x12J/v1/{name=projects/*/locations/*/instances/*/osPolicyAssignments/*/report}\x12\x80\x02\n\x1dListOSPolicyAssignmentReports\x12>.google.cloud.osconfig.v1.ListOSPolicyAssignmentReportsRequest\x1a?.google.cloud.osconfig.v1.ListOSPolicyAssignmentReportsResponse\"^\xda\x41\x06parent\x82\xd3\xe4\x93\x02O\x12M/v1/{parent=projects/*/locations/*/instances/*/osPolicyAssignments/*}/reports\x12\xaa\x01\n\x0cGetInventory\x12-.google.cloud.osconfig.v1.GetInventoryRequest\x1a#.google.cloud.osconfig.v1.Inventory\"F\xda\x41\x04name\x82\xd3\xe4\x93\x02\x39\x12\x37/v1/{name=projects/*/locations/*/instances/*/inventory}\x12\xc4\x01\n\x0fListInventories\x12\x30.google.cloud.osconfig.v1.ListInventoriesRequest\x1a\x31.google.cloud.osconfig.v1.ListInventoriesResponse\"L\xda\x41\x06parent\x82\xd3\xe4\x93\x02=\x12;/v1/{parent=projects/*/locations/*/instances/*}/inventories\x12\xd2\x01\n\x16GetVulnerabilityReport\x12\x37.google.cloud.osconfig.v1.GetVulnerabilityReportRequest\x1a-.google.cloud.osconfig.v1.VulnerabilityReport\"P\xda\x41\x04name\x82\xd3\xe4\x93\x02\x43\x12\x41/v1/{name=projects/*/locations/*/instances/*/vulnerabilityReport}\x12\xe8\x01\n\x18ListVulnerabilityReports\x12\x39.google.cloud.osconfig.v1.ListVulnerabilityReportsRequest\x1a:.google.cloud.osconfig.v1.ListVulnerabilityReportsResponse\"U\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x46\x12\x44/v1/{parent=projects/*/locations/*/instances/*}/vulnerabilityReports\x1aK\xca\x41\x17osconfig.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xc9\x01\n\x1c\x63om.google.cloud.osconfig.v1B\x19OsConfigZonalServiceProtoP\x01Z8cloud.google.com/go/osconfig/apiv1/osconfigpb;osconfigpb\xaa\x02\x18Google.Cloud.OsConfig.V1\xca\x02\x18Google\\Cloud\\OsConfig\\V1\xea\x02\x1bGoogle::Cloud::OsConfig::V1b\x06proto3"

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
    module OsConfig
      module V1
      end
    end
  end
end
