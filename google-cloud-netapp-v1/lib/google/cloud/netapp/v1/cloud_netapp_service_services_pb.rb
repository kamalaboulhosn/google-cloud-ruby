# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/netapp/v1/cloud_netapp_service.proto for package 'Google.Cloud.NetApp.V1'
# Original file comments:
# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/netapp/v1/cloud_netapp_service_pb'

module Google
  module Cloud
    module NetApp
      module V1
        module NetApp
          # NetApp Files Google Cloud Service
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.netapp.v1.NetApp'

            # Returns descriptions of all storage pools owned by the caller.
            rpc :ListStoragePools, ::Google::Cloud::NetApp::V1::ListStoragePoolsRequest, ::Google::Cloud::NetApp::V1::ListStoragePoolsResponse
            # Creates a new storage pool.
            rpc :CreateStoragePool, ::Google::Cloud::NetApp::V1::CreateStoragePoolRequest, ::Google::Longrunning::Operation
            # Returns the description of the specified storage pool by poolId.
            rpc :GetStoragePool, ::Google::Cloud::NetApp::V1::GetStoragePoolRequest, ::Google::Cloud::NetApp::V1::StoragePool
            # Updates the storage pool properties with the full spec
            rpc :UpdateStoragePool, ::Google::Cloud::NetApp::V1::UpdateStoragePoolRequest, ::Google::Longrunning::Operation
            # Warning! This operation will permanently delete the storage pool.
            rpc :DeleteStoragePool, ::Google::Cloud::NetApp::V1::DeleteStoragePoolRequest, ::Google::Longrunning::Operation
            # ValidateDirectoryService does a connectivity check for a directory service
            # policy attached to the storage pool.
            rpc :ValidateDirectoryService, ::Google::Cloud::NetApp::V1::ValidateDirectoryServiceRequest, ::Google::Longrunning::Operation
            # This operation will switch the active/replica zone for a regional
            # storagePool.
            rpc :SwitchActiveReplicaZone, ::Google::Cloud::NetApp::V1::SwitchActiveReplicaZoneRequest, ::Google::Longrunning::Operation
            # Lists Volumes in a given project.
            rpc :ListVolumes, ::Google::Cloud::NetApp::V1::ListVolumesRequest, ::Google::Cloud::NetApp::V1::ListVolumesResponse
            # Gets details of a single Volume.
            rpc :GetVolume, ::Google::Cloud::NetApp::V1::GetVolumeRequest, ::Google::Cloud::NetApp::V1::Volume
            # Creates a new Volume in a given project and location.
            rpc :CreateVolume, ::Google::Cloud::NetApp::V1::CreateVolumeRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a single Volume.
            rpc :UpdateVolume, ::Google::Cloud::NetApp::V1::UpdateVolumeRequest, ::Google::Longrunning::Operation
            # Deletes a single Volume.
            rpc :DeleteVolume, ::Google::Cloud::NetApp::V1::DeleteVolumeRequest, ::Google::Longrunning::Operation
            # Revert an existing volume to a specified snapshot.
            # Warning! This operation will permanently revert all changes made after the
            # snapshot was created.
            rpc :RevertVolume, ::Google::Cloud::NetApp::V1::RevertVolumeRequest, ::Google::Longrunning::Operation
            # Returns descriptions of all snapshots for a volume.
            rpc :ListSnapshots, ::Google::Cloud::NetApp::V1::ListSnapshotsRequest, ::Google::Cloud::NetApp::V1::ListSnapshotsResponse
            # Describe a snapshot for a volume.
            rpc :GetSnapshot, ::Google::Cloud::NetApp::V1::GetSnapshotRequest, ::Google::Cloud::NetApp::V1::Snapshot
            # Create a new snapshot for a volume.
            rpc :CreateSnapshot, ::Google::Cloud::NetApp::V1::CreateSnapshotRequest, ::Google::Longrunning::Operation
            # Deletes a snapshot.
            rpc :DeleteSnapshot, ::Google::Cloud::NetApp::V1::DeleteSnapshotRequest, ::Google::Longrunning::Operation
            # Updates the settings of a specific snapshot.
            rpc :UpdateSnapshot, ::Google::Cloud::NetApp::V1::UpdateSnapshotRequest, ::Google::Longrunning::Operation
            # Lists active directories.
            rpc :ListActiveDirectories, ::Google::Cloud::NetApp::V1::ListActiveDirectoriesRequest, ::Google::Cloud::NetApp::V1::ListActiveDirectoriesResponse
            # Describes a specified active directory.
            rpc :GetActiveDirectory, ::Google::Cloud::NetApp::V1::GetActiveDirectoryRequest, ::Google::Cloud::NetApp::V1::ActiveDirectory
            # CreateActiveDirectory
            # Creates the active directory specified in the request.
            rpc :CreateActiveDirectory, ::Google::Cloud::NetApp::V1::CreateActiveDirectoryRequest, ::Google::Longrunning::Operation
            # Update the parameters of an active directories.
            rpc :UpdateActiveDirectory, ::Google::Cloud::NetApp::V1::UpdateActiveDirectoryRequest, ::Google::Longrunning::Operation
            # Delete the active directory specified in the request.
            rpc :DeleteActiveDirectory, ::Google::Cloud::NetApp::V1::DeleteActiveDirectoryRequest, ::Google::Longrunning::Operation
            # Returns descriptions of all KMS configs owned by the caller.
            rpc :ListKmsConfigs, ::Google::Cloud::NetApp::V1::ListKmsConfigsRequest, ::Google::Cloud::NetApp::V1::ListKmsConfigsResponse
            # Creates a new KMS config.
            rpc :CreateKmsConfig, ::Google::Cloud::NetApp::V1::CreateKmsConfigRequest, ::Google::Longrunning::Operation
            # Returns the description of the specified KMS config by kms_config_id.
            rpc :GetKmsConfig, ::Google::Cloud::NetApp::V1::GetKmsConfigRequest, ::Google::Cloud::NetApp::V1::KmsConfig
            # Updates the Kms config properties with the full spec
            rpc :UpdateKmsConfig, ::Google::Cloud::NetApp::V1::UpdateKmsConfigRequest, ::Google::Longrunning::Operation
            # Encrypt the existing volumes without CMEK encryption with the desired the
            # KMS config for the whole region.
            rpc :EncryptVolumes, ::Google::Cloud::NetApp::V1::EncryptVolumesRequest, ::Google::Longrunning::Operation
            # Verifies KMS config reachability.
            rpc :VerifyKmsConfig, ::Google::Cloud::NetApp::V1::VerifyKmsConfigRequest, ::Google::Cloud::NetApp::V1::VerifyKmsConfigResponse
            # Warning! This operation will permanently delete the Kms config.
            rpc :DeleteKmsConfig, ::Google::Cloud::NetApp::V1::DeleteKmsConfigRequest, ::Google::Longrunning::Operation
            # Returns descriptions of all replications for a volume.
            rpc :ListReplications, ::Google::Cloud::NetApp::V1::ListReplicationsRequest, ::Google::Cloud::NetApp::V1::ListReplicationsResponse
            # Describe a replication for a volume.
            rpc :GetReplication, ::Google::Cloud::NetApp::V1::GetReplicationRequest, ::Google::Cloud::NetApp::V1::Replication
            # Create a new replication for a volume.
            rpc :CreateReplication, ::Google::Cloud::NetApp::V1::CreateReplicationRequest, ::Google::Longrunning::Operation
            # Deletes a replication.
            rpc :DeleteReplication, ::Google::Cloud::NetApp::V1::DeleteReplicationRequest, ::Google::Longrunning::Operation
            # Updates the settings of a specific replication.
            rpc :UpdateReplication, ::Google::Cloud::NetApp::V1::UpdateReplicationRequest, ::Google::Longrunning::Operation
            # Stop Cross Region Replication.
            rpc :StopReplication, ::Google::Cloud::NetApp::V1::StopReplicationRequest, ::Google::Longrunning::Operation
            # Resume Cross Region Replication.
            rpc :ResumeReplication, ::Google::Cloud::NetApp::V1::ResumeReplicationRequest, ::Google::Longrunning::Operation
            # Reverses direction of replication. Source becomes destination and
            # destination becomes source.
            rpc :ReverseReplicationDirection, ::Google::Cloud::NetApp::V1::ReverseReplicationDirectionRequest, ::Google::Longrunning::Operation
            # Establish replication peering.
            rpc :EstablishPeering, ::Google::Cloud::NetApp::V1::EstablishPeeringRequest, ::Google::Longrunning::Operation
            # Syncs the replication. This will invoke one time volume data transfer from
            # source to destination.
            rpc :SyncReplication, ::Google::Cloud::NetApp::V1::SyncReplicationRequest, ::Google::Longrunning::Operation
            # Creates new backup vault
            rpc :CreateBackupVault, ::Google::Cloud::NetApp::V1::CreateBackupVaultRequest, ::Google::Longrunning::Operation
            # Returns the description of the specified backup vault
            rpc :GetBackupVault, ::Google::Cloud::NetApp::V1::GetBackupVaultRequest, ::Google::Cloud::NetApp::V1::BackupVault
            # Returns list of all available backup vaults.
            rpc :ListBackupVaults, ::Google::Cloud::NetApp::V1::ListBackupVaultsRequest, ::Google::Cloud::NetApp::V1::ListBackupVaultsResponse
            # Updates the settings of a specific backup vault.
            rpc :UpdateBackupVault, ::Google::Cloud::NetApp::V1::UpdateBackupVaultRequest, ::Google::Longrunning::Operation
            # Warning! This operation will permanently delete the backup vault.
            rpc :DeleteBackupVault, ::Google::Cloud::NetApp::V1::DeleteBackupVaultRequest, ::Google::Longrunning::Operation
            # Creates a backup from the volume specified in the request
            # The backup can be created from the given snapshot if specified in the
            # request. If no snapshot specified, there'll be a new snapshot taken to
            # initiate the backup creation.
            rpc :CreateBackup, ::Google::Cloud::NetApp::V1::CreateBackupRequest, ::Google::Longrunning::Operation
            # Returns the description of the specified backup
            rpc :GetBackup, ::Google::Cloud::NetApp::V1::GetBackupRequest, ::Google::Cloud::NetApp::V1::Backup
            # Returns descriptions of all backups for a backupVault.
            rpc :ListBackups, ::Google::Cloud::NetApp::V1::ListBackupsRequest, ::Google::Cloud::NetApp::V1::ListBackupsResponse
            # Warning! This operation will permanently delete the backup.
            rpc :DeleteBackup, ::Google::Cloud::NetApp::V1::DeleteBackupRequest, ::Google::Longrunning::Operation
            # Update backup with full spec.
            rpc :UpdateBackup, ::Google::Cloud::NetApp::V1::UpdateBackupRequest, ::Google::Longrunning::Operation
            # Creates new backup policy
            rpc :CreateBackupPolicy, ::Google::Cloud::NetApp::V1::CreateBackupPolicyRequest, ::Google::Longrunning::Operation
            # Returns the description of the specified backup policy by backup_policy_id.
            rpc :GetBackupPolicy, ::Google::Cloud::NetApp::V1::GetBackupPolicyRequest, ::Google::Cloud::NetApp::V1::BackupPolicy
            # Returns list of all available backup policies.
            rpc :ListBackupPolicies, ::Google::Cloud::NetApp::V1::ListBackupPoliciesRequest, ::Google::Cloud::NetApp::V1::ListBackupPoliciesResponse
            # Updates settings of a specific backup policy.
            rpc :UpdateBackupPolicy, ::Google::Cloud::NetApp::V1::UpdateBackupPolicyRequest, ::Google::Longrunning::Operation
            # Warning! This operation will permanently delete the backup policy.
            rpc :DeleteBackupPolicy, ::Google::Cloud::NetApp::V1::DeleteBackupPolicyRequest, ::Google::Longrunning::Operation
            # Returns list of all quota rules in a location.
            rpc :ListQuotaRules, ::Google::Cloud::NetApp::V1::ListQuotaRulesRequest, ::Google::Cloud::NetApp::V1::ListQuotaRulesResponse
            # Returns details of the specified quota rule.
            rpc :GetQuotaRule, ::Google::Cloud::NetApp::V1::GetQuotaRuleRequest, ::Google::Cloud::NetApp::V1::QuotaRule
            # Creates a new quota rule.
            rpc :CreateQuotaRule, ::Google::Cloud::NetApp::V1::CreateQuotaRuleRequest, ::Google::Longrunning::Operation
            # Updates a quota rule.
            rpc :UpdateQuotaRule, ::Google::Cloud::NetApp::V1::UpdateQuotaRuleRequest, ::Google::Longrunning::Operation
            # Deletes a quota rule.
            rpc :DeleteQuotaRule, ::Google::Cloud::NetApp::V1::DeleteQuotaRuleRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
