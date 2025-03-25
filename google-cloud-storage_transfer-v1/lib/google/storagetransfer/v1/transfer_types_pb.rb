# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/storagetransfer/v1/transfer_types.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/code_pb'
require 'google/type/date_pb'
require 'google/type/timeofday_pb'


descriptor_data = "\n.google/storagetransfer/v1/transfer_types.proto\x12\x19google.storagetransfer.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x15google/rpc/code.proto\x1a\x16google/type/date.proto\x1a\x1bgoogle/type/timeofday.proto\"A\n\x14GoogleServiceAccount\x12\x15\n\raccount_email\x18\x01 \x01(\t\x12\x12\n\nsubject_id\x18\x02 \x01(\t\"J\n\x0c\x41wsAccessKey\x12\x1a\n\raccess_key_id\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x1e\n\x11secret_access_key\x18\x02 \x01(\tB\x03\xe0\x41\x02\"*\n\x10\x41zureCredentials\x12\x16\n\tsas_token\x18\x02 \x01(\tB\x03\xe0\x41\x02\"\xd3\x02\n\x10ObjectConditions\x12K\n(min_time_elapsed_since_last_modification\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12K\n(max_time_elapsed_since_last_modification\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x18\n\x10include_prefixes\x18\x03 \x03(\t\x12\x18\n\x10\x65xclude_prefixes\x18\x04 \x03(\t\x12\x37\n\x13last_modified_since\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x38\n\x14last_modified_before\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"Z\n\x07GcsData\x12\x18\n\x0b\x62ucket_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x0c\n\x04path\x18\x03 \x01(\t\x12\'\n\x1fmanaged_folder_transfer_enabled\x18\x04 \x01(\x08\"\x82\x02\n\tAwsS3Data\x12\x18\n\x0b\x62ucket_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x44\n\x0e\x61ws_access_key\x18\x02 \x01(\x0b\x32\'.google.storagetransfer.v1.AwsAccessKeyB\x03\xe0\x41\x04\x12\x0c\n\x04path\x18\x03 \x01(\t\x12\x10\n\x08role_arn\x18\x04 \x01(\t\x12\x1e\n\x11\x63loudfront_domain\x18\x06 \x01(\tB\x03\xe0\x41\x01\x12\x1f\n\x12\x63redentials_secret\x18\x07 \x01(\tB\x03\xe0\x41\x01\x12!\n\x17managed_private_network\x18\x08 \x01(\x08H\x00\x42\x11\n\x0fprivate_network\"\xcb\x01\n\x14\x41zureBlobStorageData\x12\x1c\n\x0fstorage_account\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12N\n\x11\x61zure_credentials\x18\x02 \x01(\x0b\x32+.google.storagetransfer.v1.AzureCredentialsB\x06\xe0\x41\x02\xe0\x41\x04\x12\x16\n\tcontainer\x18\x04 \x01(\tB\x03\xe0\x41\x02\x12\x0c\n\x04path\x18\x05 \x01(\t\x12\x1f\n\x12\x63redentials_secret\x18\x07 \x01(\tB\x03\xe0\x41\x01\"!\n\x08HttpData\x12\x15\n\x08list_url\x18\x01 \x01(\tB\x03\xe0\x41\x02\")\n\x0fPosixFilesystem\x12\x16\n\x0eroot_directory\x18\x01 \x01(\t\"\x18\n\x08HdfsData\x12\x0c\n\x04path\x18\x01 \x01(\t\"\xbd\x01\n\x13\x41wsS3CompatibleData\x12\x18\n\x0b\x62ucket_name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x0c\n\x04path\x18\x02 \x01(\t\x12\x15\n\x08\x65ndpoint\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12\x0e\n\x06region\x18\x05 \x01(\t\x12\x46\n\x0bs3_metadata\x18\x04 \x01(\x0b\x32/.google.storagetransfer.v1.S3CompatibleMetadataH\x00\x42\x0f\n\rdata_provider\"\xf6\x05\n\x14S3CompatibleMetadata\x12O\n\x0b\x61uth_method\x18\x01 \x01(\x0e\x32:.google.storagetransfer.v1.S3CompatibleMetadata.AuthMethod\x12S\n\rrequest_model\x18\x02 \x01(\x0e\x32<.google.storagetransfer.v1.S3CompatibleMetadata.RequestModel\x12Q\n\x08protocol\x18\x03 \x01(\x0e\x32?.google.storagetransfer.v1.S3CompatibleMetadata.NetworkProtocol\x12I\n\x08list_api\x18\x04 \x01(\x0e\x32\x37.google.storagetransfer.v1.S3CompatibleMetadata.ListApi\"m\n\nAuthMethod\x12\x1b\n\x17\x41UTH_METHOD_UNSPECIFIED\x10\x00\x12 \n\x1c\x41UTH_METHOD_AWS_SIGNATURE_V4\x10\x01\x12 \n\x1c\x41UTH_METHOD_AWS_SIGNATURE_V2\x10\x02\"s\n\x0cRequestModel\x12\x1d\n\x19REQUEST_MODEL_UNSPECIFIED\x10\x00\x12&\n\"REQUEST_MODEL_VIRTUAL_HOSTED_STYLE\x10\x01\x12\x1c\n\x18REQUEST_MODEL_PATH_STYLE\x10\x02\"j\n\x0fNetworkProtocol\x12 \n\x1cNETWORK_PROTOCOL_UNSPECIFIED\x10\x00\x12\x1a\n\x16NETWORK_PROTOCOL_HTTPS\x10\x01\x12\x19\n\x15NETWORK_PROTOCOL_HTTP\x10\x02\"J\n\x07ListApi\x12\x18\n\x14LIST_API_UNSPECIFIED\x10\x00\x12\x13\n\x0fLIST_OBJECTS_V2\x10\x01\x12\x10\n\x0cLIST_OBJECTS\x10\x02\"\x93\x03\n\tAgentPool\x12\x11\n\x04name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x0c\x64isplay_name\x18\x03 \x01(\t\x12>\n\x05state\x18\x04 \x01(\x0e\x32*.google.storagetransfer.v1.AgentPool.StateB\x03\xe0\x41\x03\x12L\n\x0f\x62\x61ndwidth_limit\x18\x05 \x01(\x0b\x32\x33.google.storagetransfer.v1.AgentPool.BandwidthLimit\x1a$\n\x0e\x42\x61ndwidthLimit\x12\x12\n\nlimit_mbps\x18\x01 \x01(\x03\"G\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\x0b\n\x07\x43REATED\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03:`\xea\x41]\n)storagetransfer.googleapis.com/agentPools\x12\x30projects/{project_id}/agentPools/{agent_pool_id}\"\x8e\x03\n\x0fTransferOptions\x12\x32\n*overwrite_objects_already_existing_in_sink\x18\x01 \x01(\x08\x12%\n\x1d\x64\x65lete_objects_unique_in_sink\x18\x02 \x01(\x08\x12\x31\n)delete_objects_from_source_after_transfer\x18\x03 \x01(\x08\x12P\n\x0eoverwrite_when\x18\x04 \x01(\x0e\x32\x38.google.storagetransfer.v1.TransferOptions.OverwriteWhen\x12\x44\n\x10metadata_options\x18\x05 \x01(\x0b\x32*.google.storagetransfer.v1.MetadataOptions\"U\n\rOverwriteWhen\x12\x1e\n\x1aOVERWRITE_WHEN_UNSPECIFIED\x10\x00\x12\r\n\tDIFFERENT\x10\x01\x12\t\n\x05NEVER\x10\x02\x12\n\n\x06\x41LWAYS\x10\x03\"\xb0\x08\n\x0cTransferSpec\x12;\n\rgcs_data_sink\x18\x04 \x01(\x0b\x32\".google.storagetransfer.v1.GcsDataH\x00\x12\x45\n\x0fposix_data_sink\x18\r \x01(\x0b\x32*.google.storagetransfer.v1.PosixFilesystemH\x00\x12=\n\x0fgcs_data_source\x18\x01 \x01(\x0b\x32\".google.storagetransfer.v1.GcsDataH\x01\x12\x42\n\x12\x61ws_s3_data_source\x18\x02 \x01(\x0b\x32$.google.storagetransfer.v1.AwsS3DataH\x01\x12?\n\x10http_data_source\x18\x03 \x01(\x0b\x32#.google.storagetransfer.v1.HttpDataH\x01\x12G\n\x11posix_data_source\x18\x0e \x01(\x0b\x32*.google.storagetransfer.v1.PosixFilesystemH\x01\x12Y\n\x1e\x61zure_blob_storage_data_source\x18\x08 \x01(\x0b\x32/.google.storagetransfer.v1.AzureBlobStorageDataH\x01\x12W\n\x1d\x61ws_s3_compatible_data_source\x18\x13 \x01(\x0b\x32..google.storagetransfer.v1.AwsS3CompatibleDataH\x01\x12?\n\x10hdfs_data_source\x18\x14 \x01(\x0b\x32#.google.storagetransfer.v1.HdfsDataH\x01\x12L\n\x1egcs_intermediate_data_location\x18\x10 \x01(\x0b\x32\".google.storagetransfer.v1.GcsDataH\x02\x12\x46\n\x11object_conditions\x18\x05 \x01(\x0b\x32+.google.storagetransfer.v1.ObjectConditions\x12\x44\n\x10transfer_options\x18\x06 \x01(\x0b\x32*.google.storagetransfer.v1.TransferOptions\x12\x46\n\x11transfer_manifest\x18\x0f \x01(\x0b\x32+.google.storagetransfer.v1.TransferManifest\x12\x1e\n\x16source_agent_pool_name\x18\x11 \x01(\t\x12\x1c\n\x14sink_agent_pool_name\x18\x12 \x01(\tB\x0b\n\tdata_sinkB\r\n\x0b\x64\x61ta_sourceB\x1c\n\x1aintermediate_data_location\"\xb7\x02\n\x0fReplicationSpec\x12=\n\x0fgcs_data_source\x18\x01 \x01(\x0b\x32\".google.storagetransfer.v1.GcsDataH\x00\x12;\n\rgcs_data_sink\x18\x02 \x01(\x0b\x32\".google.storagetransfer.v1.GcsDataH\x01\x12\x46\n\x11object_conditions\x18\x03 \x01(\x0b\x32+.google.storagetransfer.v1.ObjectConditions\x12\x44\n\x10transfer_options\x18\x04 \x01(\x0b\x32*.google.storagetransfer.v1.TransferOptionsB\r\n\x0b\x64\x61ta_sourceB\x0b\n\tdata_sink\"\xf1\x0b\n\x0fMetadataOptions\x12\x43\n\x07symlink\x18\x01 \x01(\x0e\x32\x32.google.storagetransfer.v1.MetadataOptions.Symlink\x12=\n\x04mode\x18\x02 \x01(\x0e\x32/.google.storagetransfer.v1.MetadataOptions.Mode\x12;\n\x03gid\x18\x03 \x01(\x0e\x32..google.storagetransfer.v1.MetadataOptions.GID\x12;\n\x03uid\x18\x04 \x01(\x0e\x32..google.storagetransfer.v1.MetadataOptions.UID\x12;\n\x03\x61\x63l\x18\x05 \x01(\x0e\x32..google.storagetransfer.v1.MetadataOptions.Acl\x12N\n\rstorage_class\x18\x06 \x01(\x0e\x32\x37.google.storagetransfer.v1.MetadataOptions.StorageClass\x12P\n\x0etemporary_hold\x18\x07 \x01(\x0e\x32\x38.google.storagetransfer.v1.MetadataOptions.TemporaryHold\x12\x42\n\x07kms_key\x18\x08 \x01(\x0e\x32\x31.google.storagetransfer.v1.MetadataOptions.KmsKey\x12L\n\x0ctime_created\x18\t \x01(\x0e\x32\x36.google.storagetransfer.v1.MetadataOptions.TimeCreated\"J\n\x07Symlink\x12\x17\n\x13SYMLINK_UNSPECIFIED\x10\x00\x12\x10\n\x0cSYMLINK_SKIP\x10\x01\x12\x14\n\x10SYMLINK_PRESERVE\x10\x02\">\n\x04Mode\x12\x14\n\x10MODE_UNSPECIFIED\x10\x00\x12\r\n\tMODE_SKIP\x10\x01\x12\x11\n\rMODE_PRESERVE\x10\x02\"8\n\x03GID\x12\x13\n\x0fGID_UNSPECIFIED\x10\x00\x12\x0c\n\x08GID_SKIP\x10\x01\x12\x0e\n\nGID_NUMBER\x10\x02\"8\n\x03UID\x12\x13\n\x0fUID_UNSPECIFIED\x10\x00\x12\x0c\n\x08UID_SKIP\x10\x01\x12\x0e\n\nUID_NUMBER\x10\x02\"P\n\x03\x41\x63l\x12\x13\n\x0f\x41\x43L_UNSPECIFIED\x10\x00\x12\"\n\x1e\x41\x43L_DESTINATION_BUCKET_DEFAULT\x10\x01\x12\x10\n\x0c\x41\x43L_PRESERVE\x10\x02\"\xe6\x01\n\x0cStorageClass\x12\x1d\n\x19STORAGE_CLASS_UNSPECIFIED\x10\x00\x12,\n(STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT\x10\x01\x12\x1a\n\x16STORAGE_CLASS_PRESERVE\x10\x02\x12\x1a\n\x16STORAGE_CLASS_STANDARD\x10\x03\x12\x1a\n\x16STORAGE_CLASS_NEARLINE\x10\x04\x12\x1a\n\x16STORAGE_CLASS_COLDLINE\x10\x05\x12\x19\n\x15STORAGE_CLASS_ARCHIVE\x10\x06\"e\n\rTemporaryHold\x12\x1e\n\x1aTEMPORARY_HOLD_UNSPECIFIED\x10\x00\x12\x17\n\x13TEMPORARY_HOLD_SKIP\x10\x01\x12\x1b\n\x17TEMPORARY_HOLD_PRESERVE\x10\x02\"_\n\x06KmsKey\x12\x17\n\x13KMS_KEY_UNSPECIFIED\x10\x00\x12&\n\"KMS_KEY_DESTINATION_BUCKET_DEFAULT\x10\x01\x12\x14\n\x10KMS_KEY_PRESERVE\x10\x02\"l\n\x0bTimeCreated\x12\x1c\n\x18TIME_CREATED_UNSPECIFIED\x10\x00\x12\x15\n\x11TIME_CREATED_SKIP\x10\x01\x12(\n$TIME_CREATED_PRESERVE_AS_CUSTOM_TIME\x10\x02\"$\n\x10TransferManifest\x12\x10\n\x08location\x18\x01 \x01(\t\"\x85\x02\n\x08Schedule\x12\x33\n\x13schedule_start_date\x18\x01 \x01(\x0b\x32\x11.google.type.DateB\x03\xe0\x41\x02\x12,\n\x11schedule_end_date\x18\x02 \x01(\x0b\x32\x11.google.type.Date\x12\x31\n\x11start_time_of_day\x18\x03 \x01(\x0b\x32\x16.google.type.TimeOfDay\x12/\n\x0f\x65nd_time_of_day\x18\x04 \x01(\x0b\x32\x16.google.type.TimeOfDay\x12\x32\n\x0frepeat_interval\x18\x05 \x01(\x0b\x32\x19.google.protobuf.Duration\"\x9f\x01\n\x0b\x45ventStream\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12;\n\x17\x65vent_stream_start_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12@\n\x1c\x65vent_stream_expiration_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xa6\x06\n\x0bTransferJob\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x12\n\nproject_id\x18\x03 \x01(\t\x12>\n\rtransfer_spec\x18\x04 \x01(\x0b\x32\'.google.storagetransfer.v1.TransferSpec\x12\x44\n\x10replication_spec\x18\x11 \x01(\x0b\x32*.google.storagetransfer.v1.ReplicationSpec\x12J\n\x13notification_config\x18\x0b \x01(\x0b\x32-.google.storagetransfer.v1.NotificationConfig\x12@\n\x0elogging_config\x18\x0e \x01(\x0b\x32(.google.storagetransfer.v1.LoggingConfig\x12\x35\n\x08schedule\x18\x05 \x01(\x0b\x32#.google.storagetransfer.v1.Schedule\x12<\n\x0c\x65vent_stream\x18\x0f \x01(\x0b\x32&.google.storagetransfer.v1.EventStream\x12=\n\x06status\x18\x06 \x01(\x0e\x32-.google.storagetransfer.v1.TransferJob.Status\x12\x36\n\rcreation_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12?\n\x16last_modification_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x36\n\rdeletion_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x1d\n\x15latest_operation_name\x18\x0c \x01(\t\"H\n\x06Status\x12\x16\n\x12STATUS_UNSPECIFIED\x10\x00\x12\x0b\n\x07\x45NABLED\x10\x01\x12\x0c\n\x08\x44ISABLED\x10\x02\x12\x0b\n\x07\x44\x45LETED\x10\x03\"8\n\rErrorLogEntry\x12\x10\n\x03url\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12\x15\n\rerror_details\x18\x03 \x03(\t\"\x98\x01\n\x0c\x45rrorSummary\x12)\n\nerror_code\x18\x01 \x01(\x0e\x32\x10.google.rpc.CodeB\x03\xe0\x41\x02\x12\x18\n\x0b\x65rror_count\x18\x02 \x01(\x03\x42\x03\xe0\x41\x02\x12\x43\n\x11\x65rror_log_entries\x18\x03 \x03(\x0b\x32(.google.storagetransfer.v1.ErrorLogEntry\"\xc3\x06\n\x10TransferCounters\x12!\n\x19objects_found_from_source\x18\x01 \x01(\x03\x12\x1f\n\x17\x62ytes_found_from_source\x18\x02 \x01(\x03\x12$\n\x1cobjects_found_only_from_sink\x18\x03 \x01(\x03\x12\"\n\x1a\x62ytes_found_only_from_sink\x18\x04 \x01(\x03\x12+\n#objects_from_source_skipped_by_sync\x18\x05 \x01(\x03\x12)\n!bytes_from_source_skipped_by_sync\x18\x06 \x01(\x03\x12\x1e\n\x16objects_copied_to_sink\x18\x07 \x01(\x03\x12\x1c\n\x14\x62ytes_copied_to_sink\x18\x08 \x01(\x03\x12#\n\x1bobjects_deleted_from_source\x18\t \x01(\x03\x12!\n\x19\x62ytes_deleted_from_source\x18\n \x01(\x03\x12!\n\x19objects_deleted_from_sink\x18\x0b \x01(\x03\x12\x1f\n\x17\x62ytes_deleted_from_sink\x18\x0c \x01(\x03\x12\"\n\x1aobjects_from_source_failed\x18\r \x01(\x03\x12 \n\x18\x62ytes_from_source_failed\x18\x0e \x01(\x03\x12*\n\"objects_failed_to_delete_from_sink\x18\x0f \x01(\x03\x12(\n bytes_failed_to_delete_from_sink\x18\x10 \x01(\x03\x12%\n\x1d\x64irectories_found_from_source\x18\x11 \x01(\x03\x12.\n&directories_failed_to_list_from_source\x18\x12 \x01(\x03\x12\x33\n+directories_successfully_listed_from_source\x18\x13 \x01(\x03\x12\'\n\x1fintermediate_objects_cleaned_up\x18\x16 \x01(\x03\x12.\n&intermediate_objects_failed_cleaned_up\x18\x17 \x01(\x03\"\xa5\x03\n\x12NotificationConfig\x12\x19\n\x0cpubsub_topic\x18\x01 \x01(\tB\x03\xe0\x41\x02\x12L\n\x0b\x65vent_types\x18\x02 \x03(\x0e\x32\x37.google.storagetransfer.v1.NotificationConfig.EventType\x12X\n\x0epayload_format\x18\x03 \x01(\x0e\x32;.google.storagetransfer.v1.NotificationConfig.PayloadFormatB\x03\xe0\x41\x02\"\x86\x01\n\tEventType\x12\x1a\n\x16\x45VENT_TYPE_UNSPECIFIED\x10\x00\x12\x1e\n\x1aTRANSFER_OPERATION_SUCCESS\x10\x01\x12\x1d\n\x19TRANSFER_OPERATION_FAILED\x10\x02\x12\x1e\n\x1aTRANSFER_OPERATION_ABORTED\x10\x03\"C\n\rPayloadFormat\x12\x1e\n\x1aPAYLOAD_FORMAT_UNSPECIFIED\x10\x00\x12\x08\n\x04NONE\x10\x01\x12\x08\n\x04JSON\x10\x02\"\x8b\x03\n\rLoggingConfig\x12L\n\x0blog_actions\x18\x01 \x03(\x0e\x32\x37.google.storagetransfer.v1.LoggingConfig.LoggableAction\x12W\n\x11log_action_states\x18\x02 \x03(\x0e\x32<.google.storagetransfer.v1.LoggingConfig.LoggableActionState\x12\'\n\x1f\x65nable_onprem_gcs_transfer_logs\x18\x03 \x01(\x08\"Q\n\x0eLoggableAction\x12\x1f\n\x1bLOGGABLE_ACTION_UNSPECIFIED\x10\x00\x12\x08\n\x04\x46IND\x10\x01\x12\n\n\x06\x44\x45LETE\x10\x02\x12\x08\n\x04\x43OPY\x10\x03\"W\n\x13LoggableActionState\x12%\n!LOGGABLE_ACTION_STATE_UNSPECIFIED\x10\x00\x12\r\n\tSUCCEEDED\x10\x01\x12\n\n\x06\x46\x41ILED\x10\x02\"\xc4\x05\n\x11TransferOperation\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x12\n\nproject_id\x18\x02 \x01(\t\x12>\n\rtransfer_spec\x18\x03 \x01(\x0b\x32\'.google.storagetransfer.v1.TransferSpec\x12J\n\x13notification_config\x18\n \x01(\x0b\x32-.google.storagetransfer.v1.NotificationConfig\x12@\n\x0elogging_config\x18\x0c \x01(\x0b\x32(.google.storagetransfer.v1.LoggingConfig\x12.\n\nstart_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x43\n\x06status\x18\x06 \x01(\x0e\x32\x33.google.storagetransfer.v1.TransferOperation.Status\x12=\n\x08\x63ounters\x18\x07 \x01(\x0b\x32+.google.storagetransfer.v1.TransferCounters\x12\x41\n\x10\x65rror_breakdowns\x18\x08 \x03(\x0b\x32\'.google.storagetransfer.v1.ErrorSummary\x12\x19\n\x11transfer_job_name\x18\t \x01(\t\"\x7f\n\x06Status\x12\x16\n\x12STATUS_UNSPECIFIED\x10\x00\x12\x0f\n\x0bIN_PROGRESS\x10\x01\x12\n\n\x06PAUSED\x10\x02\x12\x0b\n\x07SUCCESS\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04\x12\x0b\n\x07\x41\x42ORTED\x10\x05\x12\n\n\x06QUEUED\x10\x06\x12\x0e\n\nSUSPENDING\x10\x07\x42\xec\x01\n#com.google.storagetransfer.v1.protoB\rTransferTypesZMcloud.google.com/go/storagetransfer/apiv1/storagetransferpb;storagetransferpb\xaa\x02\x1fGoogle.Cloud.StorageTransfer.V1\xca\x02\x1fGoogle\\Cloud\\StorageTransfer\\V1\xea\x02\"Google::Cloud::StorageTransfer::V1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.type.Date", "google/type/date.proto"],
    ["google.type.TimeOfDay", "google/type/timeofday.proto"],
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
    module StorageTransfer
      module V1
        GoogleServiceAccount = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.GoogleServiceAccount").msgclass
        AwsAccessKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.AwsAccessKey").msgclass
        AzureCredentials = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.AzureCredentials").msgclass
        ObjectConditions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ObjectConditions").msgclass
        GcsData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.GcsData").msgclass
        AwsS3Data = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.AwsS3Data").msgclass
        AzureBlobStorageData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.AzureBlobStorageData").msgclass
        HttpData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.HttpData").msgclass
        PosixFilesystem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.PosixFilesystem").msgclass
        HdfsData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.HdfsData").msgclass
        AwsS3CompatibleData = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.AwsS3CompatibleData").msgclass
        S3CompatibleMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.S3CompatibleMetadata").msgclass
        S3CompatibleMetadata::AuthMethod = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.S3CompatibleMetadata.AuthMethod").enummodule
        S3CompatibleMetadata::RequestModel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.S3CompatibleMetadata.RequestModel").enummodule
        S3CompatibleMetadata::NetworkProtocol = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.S3CompatibleMetadata.NetworkProtocol").enummodule
        S3CompatibleMetadata::ListApi = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.S3CompatibleMetadata.ListApi").enummodule
        AgentPool = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.AgentPool").msgclass
        AgentPool::BandwidthLimit = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.AgentPool.BandwidthLimit").msgclass
        AgentPool::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.AgentPool.State").enummodule
        TransferOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferOptions").msgclass
        TransferOptions::OverwriteWhen = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferOptions.OverwriteWhen").enummodule
        TransferSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferSpec").msgclass
        ReplicationSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ReplicationSpec").msgclass
        MetadataOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.MetadataOptions").msgclass
        MetadataOptions::Symlink = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.MetadataOptions.Symlink").enummodule
        MetadataOptions::Mode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.MetadataOptions.Mode").enummodule
        MetadataOptions::GID = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.MetadataOptions.GID").enummodule
        MetadataOptions::UID = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.MetadataOptions.UID").enummodule
        MetadataOptions::Acl = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.MetadataOptions.Acl").enummodule
        MetadataOptions::StorageClass = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.MetadataOptions.StorageClass").enummodule
        MetadataOptions::TemporaryHold = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.MetadataOptions.TemporaryHold").enummodule
        MetadataOptions::KmsKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.MetadataOptions.KmsKey").enummodule
        MetadataOptions::TimeCreated = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.MetadataOptions.TimeCreated").enummodule
        TransferManifest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferManifest").msgclass
        Schedule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.Schedule").msgclass
        EventStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.EventStream").msgclass
        TransferJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferJob").msgclass
        TransferJob::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferJob.Status").enummodule
        ErrorLogEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ErrorLogEntry").msgclass
        ErrorSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.ErrorSummary").msgclass
        TransferCounters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferCounters").msgclass
        NotificationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.NotificationConfig").msgclass
        NotificationConfig::EventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.NotificationConfig.EventType").enummodule
        NotificationConfig::PayloadFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.NotificationConfig.PayloadFormat").enummodule
        LoggingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.LoggingConfig").msgclass
        LoggingConfig::LoggableAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.LoggingConfig.LoggableAction").enummodule
        LoggingConfig::LoggableActionState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.LoggingConfig.LoggableActionState").enummodule
        TransferOperation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferOperation").msgclass
        TransferOperation::Status = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.storagetransfer.v1.TransferOperation.Status").enummodule
      end
    end
  end
end
