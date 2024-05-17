# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/metastore/v1beta/metastore.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/type/dayofweek_pb'


descriptor_data = "\n-google/cloud/metastore/v1beta/metastore.proto\x12\x1dgoogle.cloud.metastore.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1egoogle/protobuf/wrappers.proto\x1a\x1bgoogle/type/dayofweek.proto\"\x95\x0e\n\x07Service\x12S\n\x15hive_metastore_config\x18\x05 \x01(\x0b\x32\x32.google.cloud.metastore.v1beta.HiveMetastoreConfigH\x00\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x42\n\x06labels\x18\x04 \x03(\x0b\x32\x32.google.cloud.metastore.v1beta.Service.LabelsEntry\x12\x37\n\x07network\x18\x07 \x01(\tB&\xe0\x41\x05\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\x12\x19\n\x0c\x65ndpoint_uri\x18\x08 \x01(\tB\x03\xe0\x41\x03\x12\x0c\n\x04port\x18\t \x01(\x05\x12@\n\x05state\x18\n \x01(\x0e\x32,.google.cloud.metastore.v1beta.Service.StateB\x03\xe0\x41\x03\x12\x1a\n\rstate_message\x18\x0b \x01(\tB\x03\xe0\x41\x03\x12\x1d\n\x10\x61rtifact_gcs_uri\x18\x0c \x01(\tB\x03\xe0\x41\x03\x12\x39\n\x04tier\x18\r \x01(\x0e\x32+.google.cloud.metastore.v1beta.Service.Tier\x12P\n\x14metadata_integration\x18\x0e \x01(\x0b\x32\x32.google.cloud.metastore.v1beta.MetadataIntegration\x12L\n\x12maintenance_window\x18\x0f \x01(\x0b\x32\x30.google.cloud.metastore.v1beta.MaintenanceWindow\x12\x10\n\x03uid\x18\x10 \x01(\tB\x03\xe0\x41\x03\x12\x64\n\x1cmetadata_management_activity\x18\x11 \x01(\x0b\x32\x39.google.cloud.metastore.v1beta.MetadataManagementActivityB\x03\xe0\x41\x03\x12S\n\x0frelease_channel\x18\x13 \x01(\x0e\x32\x35.google.cloud.metastore.v1beta.Service.ReleaseChannelB\x03\xe0\x41\x05\x12O\n\x11\x65ncryption_config\x18\x14 \x01(\x0b\x32/.google.cloud.metastore.v1beta.EncryptionConfigB\x03\xe0\x41\x05\x12\x44\n\x0enetwork_config\x18\x15 \x01(\x0b\x32,.google.cloud.metastore.v1beta.NetworkConfig\x12O\n\rdatabase_type\x18\x16 \x01(\x0e\x32\x33.google.cloud.metastore.v1beta.Service.DatabaseTypeB\x03\xe0\x41\x05\x12H\n\x10telemetry_config\x18\x17 \x01(\x0b\x32..google.cloud.metastore.v1beta.TelemetryConfig\x12\x44\n\x0escaling_config\x18\x18 \x01(\x0b\x32,.google.cloud.metastore.v1beta.ScalingConfig\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"~\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\x0e\n\nSUSPENDING\x10\x03\x12\r\n\tSUSPENDED\x10\x04\x12\x0c\n\x08UPDATING\x10\x05\x12\x0c\n\x08\x44\x45LETING\x10\x06\x12\t\n\x05\x45RROR\x10\x07\";\n\x04Tier\x12\x14\n\x10TIER_UNSPECIFIED\x10\x00\x12\r\n\tDEVELOPER\x10\x01\x12\x0e\n\nENTERPRISE\x10\x03\"I\n\x0eReleaseChannel\x12\x1f\n\x1bRELEASE_CHANNEL_UNSPECIFIED\x10\x00\x12\n\n\x06\x43\x41NARY\x10\x01\x12\n\n\x06STABLE\x10\x02\"E\n\x0c\x44\x61tabaseType\x12\x1d\n\x19\x44\x41TABASE_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05MYSQL\x10\x01\x12\x0b\n\x07SPANNER\x10\x02:a\xea\x41^\n metastore.googleapis.com/Service\x12:projects/{project}/locations/{location}/services/{service}B\x12\n\x10metastore_config\"\xac\x01\n\x13MetadataIntegration\x12M\n\x13\x64\x61ta_catalog_config\x18\x01 \x01(\x0b\x32\x30.google.cloud.metastore.v1beta.DataCatalogConfig\x12\x46\n\x0f\x64\x61taplex_config\x18\x02 \x01(\x0b\x32-.google.cloud.metastore.v1beta.DataplexConfig\"$\n\x11\x44\x61taCatalogConfig\x12\x0f\n\x07\x65nabled\x18\x02 \x01(\x08\"\xc5\x01\n\x0e\x44\x61taplexConfig\x12X\n\x0elake_resources\x18\x01 \x03(\x0b\x32@.google.cloud.metastore.v1beta.DataplexConfig.LakeResourcesEntry\x1aY\n\x12LakeResourcesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x32\n\x05value\x18\x02 \x01(\x0b\x32#.google.cloud.metastore.v1beta.Lake:\x02\x38\x01\"7\n\x04Lake\x12/\n\x04name\x18\x01 \x01(\tB!\xfa\x41\x1e\n\x1c\x64\x61taplex.googleapis.com/Lake\"r\n\x11MaintenanceWindow\x12\x30\n\x0bhour_of_day\x18\x01 \x01(\x0b\x32\x1b.google.protobuf.Int32Value\x12+\n\x0b\x64\x61y_of_week\x18\x02 \x01(\x0e\x32\x16.google.type.DayOfWeek\"\x93\x05\n\x13HiveMetastoreConfig\x12\x14\n\x07version\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x61\n\x10\x63onfig_overrides\x18\x02 \x03(\x0b\x32G.google.cloud.metastore.v1beta.HiveMetastoreConfig.ConfigOverridesEntry\x12\x46\n\x0fkerberos_config\x18\x03 \x01(\x0b\x32-.google.cloud.metastore.v1beta.KerberosConfig\x12^\n\x11\x65ndpoint_protocol\x18\x04 \x01(\x0e\x32\x43.google.cloud.metastore.v1beta.HiveMetastoreConfig.EndpointProtocol\x12\x65\n\x12\x61uxiliary_versions\x18\x05 \x03(\x0b\x32I.google.cloud.metastore.v1beta.HiveMetastoreConfig.AuxiliaryVersionsEntry\x1a\x36\n\x14\x43onfigOverridesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x1ao\n\x16\x41uxiliaryVersionsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x44\n\x05value\x18\x02 \x01(\x0b\x32\x35.google.cloud.metastore.v1beta.AuxiliaryVersionConfig:\x02\x38\x01\"K\n\x10\x45ndpointProtocol\x12!\n\x1d\x45NDPOINT_PROTOCOL_UNSPECIFIED\x10\x00\x12\n\n\x06THRIFT\x10\x01\x12\x08\n\x04GRPC\x10\x02\"w\n\x0eKerberosConfig\x12\x35\n\x06keytab\x18\x01 \x01(\x0b\x32%.google.cloud.metastore.v1beta.Secret\x12\x11\n\tprincipal\x18\x02 \x01(\t\x12\x1b\n\x13krb5_config_gcs_uri\x18\x03 \x01(\t\")\n\x06Secret\x12\x16\n\x0c\x63loud_secret\x18\x02 \x01(\tH\x00\x42\x07\n\x05value\"#\n\x10\x45ncryptionConfig\x12\x0f\n\x07kms_key\x18\x01 \x01(\t\"\x92\x02\n\x16\x41uxiliaryVersionConfig\x12\x0f\n\x07version\x18\x01 \x01(\t\x12\x64\n\x10\x63onfig_overrides\x18\x02 \x03(\x0b\x32J.google.cloud.metastore.v1beta.AuxiliaryVersionConfig.ConfigOverridesEntry\x12I\n\x0enetwork_config\x18\x03 \x01(\x0b\x32,.google.cloud.metastore.v1beta.NetworkConfigB\x03\xe0\x41\x03\x1a\x36\n\x14\x43onfigOverridesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xbc\x02\n\rNetworkConfig\x12M\n\tconsumers\x18\x01 \x03(\x0b\x32\x35.google.cloud.metastore.v1beta.NetworkConfig.ConsumerB\x03\xe0\x41\x05\x12\x1d\n\x15\x63ustom_routes_enabled\x18\x02 \x01(\x08\x1a\xbc\x01\n\x08\x43onsumer\x12?\n\nsubnetwork\x18\x01 \x01(\tB)\xe0\x41\x05\xfa\x41#\n!compute.googleapis.com/SubnetworkH\x00\x12\x19\n\x0c\x65ndpoint_uri\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x44\n\x11\x65ndpoint_location\x18\x04 \x01(\tB)\xe0\x41\x03\xfa\x41#\n!locations.googleapis.com/LocationB\x0e\n\x0cvpc_resource\"\x9e\x01\n\x0fTelemetryConfig\x12L\n\nlog_format\x18\x01 \x01(\x0e\x32\x38.google.cloud.metastore.v1beta.TelemetryConfig.LogFormat\"=\n\tLogFormat\x12\x1a\n\x16LOG_FORMAT_UNSPECIFIED\x10\x00\x12\n\n\x06LEGACY\x10\x01\x12\x08\n\x04JSON\x10\x02\"\xa9\x01\n\x1aMetadataManagementActivity\x12L\n\x10metadata_exports\x18\x01 \x03(\x0b\x32-.google.cloud.metastore.v1beta.MetadataExportB\x03\xe0\x41\x03\x12=\n\x08restores\x18\x02 \x03(\x0b\x32&.google.cloud.metastore.v1beta.RestoreB\x03\xe0\x41\x03\"\x90\x07\n\x0eMetadataImport\x12X\n\rdatabase_dump\x18\x06 \x01(\x0b\x32:.google.cloud.metastore.v1beta.MetadataImport.DatabaseDumpB\x03\xe0\x41\x05H\x00\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12G\n\x05state\x18\x05 \x01(\x0e\x32\x33.google.cloud.metastore.v1beta.MetadataImport.StateB\x03\xe0\x41\x03\x1a\xa3\x02\n\x0c\x44\x61tabaseDump\x12\x62\n\rdatabase_type\x18\x01 \x01(\x0e\x32G.google.cloud.metastore.v1beta.MetadataImport.DatabaseDump.DatabaseTypeB\x02\x18\x01\x12\x0f\n\x07gcs_uri\x18\x02 \x01(\t\x12\x1b\n\x0fsource_database\x18\x03 \x01(\tB\x02\x18\x01\x12G\n\x04type\x18\x04 \x01(\x0e\x32\x34.google.cloud.metastore.v1beta.DatabaseDumpSpec.TypeB\x03\xe0\x41\x01\"8\n\x0c\x44\x61tabaseType\x12\x1d\n\x19\x44\x41TABASE_TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05MYSQL\x10\x01\"T\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07RUNNING\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\x12\x0c\n\x08UPDATING\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04:\x8b\x01\xea\x41\x87\x01\n\'metastore.googleapis.com/MetadataImport\x12\\projects/{project}/locations/{location}/services/{service}/metadataImports/{metadata_import}B\n\n\x08metadata\"\xa2\x03\n\x0eMetadataExport\x12\"\n\x13\x64\x65stination_gcs_uri\x18\x04 \x01(\tB\x03\xe0\x41\x03H\x00\x12\x33\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12G\n\x05state\x18\x03 \x01(\x0e\x32\x33.google.cloud.metastore.v1beta.MetadataExport.StateB\x03\xe0\x41\x03\x12U\n\x12\x64\x61tabase_dump_type\x18\x05 \x01(\x0e\x32\x34.google.cloud.metastore.v1beta.DatabaseDumpSpec.TypeB\x03\xe0\x41\x03\"U\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07RUNNING\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\r\n\tCANCELLED\x10\x04\x42\r\n\x0b\x64\x65stination\"\x98\x04\n\x06\x42\x61\x63kup\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x05\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12?\n\x05state\x18\x04 \x01(\x0e\x32+.google.cloud.metastore.v1beta.Backup.StateB\x03\xe0\x41\x03\x12\x45\n\x10service_revision\x18\x05 \x01(\x0b\x32&.google.cloud.metastore.v1beta.ServiceB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18\x06 \x01(\t\x12\x1f\n\x12restoring_services\x18\x07 \x03(\tB\x03\xe0\x41\x03\"a\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\x0c\n\x08\x44\x45LETING\x10\x02\x12\n\n\x06\x41\x43TIVE\x10\x03\x12\n\n\x06\x46\x41ILED\x10\x04\x12\r\n\tRESTORING\x10\x05:q\xea\x41n\n\x1fmetastore.googleapis.com/Backup\x12Kprojects/{project}/locations/{location}/services/{service}/backups/{backup}\"\xea\x03\n\x07Restore\x12\x33\n\nstart_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12@\n\x05state\x18\x03 \x01(\x0e\x32,.google.cloud.metastore.v1beta.Restore.StateB\x03\xe0\x41\x03\x12\x37\n\x06\x62\x61\x63kup\x18\x04 \x01(\tB\'\xe0\x41\x03\xfa\x41!\n\x1fmetastore.googleapis.com/Backup\x12\x45\n\x04type\x18\x05 \x01(\x0e\x32\x32.google.cloud.metastore.v1beta.Restore.RestoreTypeB\x03\xe0\x41\x03\x12\x14\n\x07\x64\x65tails\x18\x06 \x01(\tB\x03\xe0\x41\x03\"U\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07RUNNING\x10\x01\x12\r\n\tSUCCEEDED\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03\x12\r\n\tCANCELLED\x10\x04\"H\n\x0bRestoreType\x12\x1c\n\x18RESTORE_TYPE_UNSPECIFIED\x10\x00\x12\x08\n\x04\x46ULL\x10\x01\x12\x11\n\rMETADATA_ONLY\x10\x02\"\x81\x02\n\rScalingConfig\x12R\n\rinstance_size\x18\x01 \x01(\x0e\x32\x39.google.cloud.metastore.v1beta.ScalingConfig.InstanceSizeH\x00\x12\x18\n\x0escaling_factor\x18\x02 \x01(\x02H\x00\"q\n\x0cInstanceSize\x12\x1d\n\x19INSTANCE_SIZE_UNSPECIFIED\x10\x00\x12\x0f\n\x0b\x45XTRA_SMALL\x10\x01\x12\t\n\x05SMALL\x10\x02\x12\n\n\x06MEDIUM\x10\x03\x12\t\n\x05LARGE\x10\x04\x12\x0f\n\x0b\x45XTRA_LARGE\x10\x05\x42\x0f\n\rscaling_model\"\xac\x01\n\x13ListServicesRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\x12 metastore.googleapis.com/Service\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"~\n\x14ListServicesResponse\x12\x38\n\x08services\x18\x01 \x03(\x0b\x32&.google.cloud.metastore.v1beta.Service\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"K\n\x11GetServiceRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n metastore.googleapis.com/Service\"\xc0\x01\n\x14\x43reateServiceRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\x12 metastore.googleapis.com/Service\x12\x17\n\nservice_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12<\n\x07service\x18\x03 \x01(\x0b\x32&.google.cloud.metastore.v1beta.ServiceB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\xa3\x01\n\x14UpdateServiceRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12<\n\x07service\x18\x02 \x01(\x0b\x32&.google.cloud.metastore.v1beta.ServiceB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"g\n\x14\x44\x65leteServiceRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n metastore.googleapis.com/Service\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\xba\x01\n\x1aListMetadataImportsRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'metastore.googleapis.com/MetadataImport\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x94\x01\n\x1bListMetadataImportsResponse\x12G\n\x10metadata_imports\x18\x01 \x03(\x0b\x32-.google.cloud.metastore.v1beta.MetadataImport\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"Y\n\x18GetMetadataImportRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'metastore.googleapis.com/MetadataImport\"\xe5\x01\n\x1b\x43reateMetadataImportRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\x12\'metastore.googleapis.com/MetadataImport\x12\x1f\n\x12metadata_import_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12K\n\x0fmetadata_import\x18\x03 \x01(\x0b\x32-.google.cloud.metastore.v1beta.MetadataImportB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\xb9\x01\n\x1bUpdateMetadataImportRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12K\n\x0fmetadata_import\x18\x02 \x01(\x0b\x32-.google.cloud.metastore.v1beta.MetadataImportB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\xaa\x01\n\x12ListBackupsRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\x12\x1fmetastore.googleapis.com/Backup\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"{\n\x13ListBackupsResponse\x12\x36\n\x07\x62\x61\x63kups\x18\x01 \x03(\x0b\x32%.google.cloud.metastore.v1beta.Backup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"I\n\x10GetBackupRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fmetastore.googleapis.com/Backup\"\xbb\x01\n\x13\x43reateBackupRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\x12\x1fmetastore.googleapis.com/Backup\x12\x16\n\tbackup_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12:\n\x06\x62\x61\x63kup\x18\x03 \x01(\x0b\x32%.google.cloud.metastore.v1beta.BackupB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"e\n\x13\x44\x65leteBackupRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fmetastore.googleapis.com/Backup\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\xf3\x01\n\x15\x45xportMetadataRequest\x12 \n\x16\x64\x65stination_gcs_folder\x18\x02 \x01(\tH\x00\x12\x39\n\x07service\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n metastore.googleapis.com/Service\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12U\n\x12\x64\x61tabase_dump_type\x18\x04 \x01(\x0e\x32\x34.google.cloud.metastore.v1beta.DatabaseDumpSpec.TypeB\x03\xe0\x41\x01\x42\r\n\x0b\x64\x65stination\"\xf3\x01\n\x15RestoreServiceRequest\x12\x39\n\x07service\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n metastore.googleapis.com/Service\x12\x37\n\x06\x62\x61\x63kup\x18\x02 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1fmetastore.googleapis.com/Backup\x12M\n\x0crestore_type\x18\x03 \x01(\x0e\x32\x32.google.cloud.metastore.v1beta.Restore.RestoreTypeB\x03\xe0\x41\x01\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\x80\x02\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\"\xc0\x01\n\x10LocationMetadata\x12o\n!supported_hive_metastore_versions\x18\x01 \x03(\x0b\x32\x44.google.cloud.metastore.v1beta.LocationMetadata.HiveMetastoreVersion\x1a;\n\x14HiveMetastoreVersion\x12\x0f\n\x07version\x18\x01 \x01(\t\x12\x12\n\nis_default\x18\x02 \x01(\x08\"E\n\x10\x44\x61tabaseDumpSpec\"1\n\x04Type\x12\x14\n\x10TYPE_UNSPECIFIED\x10\x00\x12\t\n\x05MYSQL\x10\x01\x12\x08\n\x04\x41VRO\x10\x02\"P\n\x16RemoveIamPolicyRequest\x12\x1b\n\x08resource\x18\x01 \x01(\tB\t\xe0\x41\x02\xfa\x41\x03\n\x01*\x12\x19\n\x0c\x61synchronous\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\"*\n\x17RemoveIamPolicyResponse\x12\x0f\n\x07success\x18\x01 \x01(\x08\"e\n\x14QueryMetadataRequest\x12\x39\n\x07service\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n metastore.googleapis.com/Service\x12\x12\n\x05query\x18\x02 \x01(\tB\x03\xe0\x41\x02\"4\n\x15QueryMetadataResponse\x12\x1b\n\x13result_manifest_uri\x18\x01 \x01(\t\"\x89\x01\n\x0c\x45rrorDetails\x12I\n\x07\x64\x65tails\x18\x01 \x03(\x0b\x32\x38.google.cloud.metastore.v1beta.ErrorDetails.DetailsEntry\x1a.\n\x0c\x44\x65tailsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xa8\x01\n\x1aMoveTableToDatabaseRequest\x12\x39\n\x07service\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n metastore.googleapis.com/Service\x12\x17\n\ntable_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x14\n\x07\x64\x62_name\x18\x03 \x01(\tB\x03\xe0\x41\x02\x12 \n\x13\x64\x65stination_db_name\x18\x04 \x01(\tB\x03\xe0\x41\x02\"\x1d\n\x1bMoveTableToDatabaseResponse\"\x98\x01\n$AlterMetadataResourceLocationRequest\x12\x39\n\x07service\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n metastore.googleapis.com/Service\x12\x1a\n\rresource_name\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x19\n\x0clocation_uri\x18\x03 \x01(\tB\x03\xe0\x41\x02\"\'\n%AlterMetadataResourceLocationResponse2\x8f%\n\x11\x44\x61taprocMetastore\x12\xba\x01\n\x0cListServices\x12\x32.google.cloud.metastore.v1beta.ListServicesRequest\x1a\x33.google.cloud.metastore.v1beta.ListServicesResponse\"A\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x32\x12\x30/v1beta/{parent=projects/*/locations/*}/services\x12\xa7\x01\n\nGetService\x12\x30.google.cloud.metastore.v1beta.GetServiceRequest\x1a&.google.cloud.metastore.v1beta.Service\"?\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32\x12\x30/v1beta/{name=projects/*/locations/*/services/*}\x12\x80\x02\n\rCreateService\x12\x33.google.cloud.metastore.v1beta.CreateServiceRequest\x1a\x1d.google.longrunning.Operation\"\x9a\x01\xca\x41:\n\x07Service\x12/google.cloud.metastore.v1beta.OperationMetadata\xda\x41\x19parent,service,service_id\x82\xd3\xe4\x93\x02;\"0/v1beta/{parent=projects/*/locations/*}/services:\x07service\x12\x82\x02\n\rUpdateService\x12\x33.google.cloud.metastore.v1beta.UpdateServiceRequest\x1a\x1d.google.longrunning.Operation\"\x9c\x01\xca\x41:\n\x07Service\x12/google.cloud.metastore.v1beta.OperationMetadata\xda\x41\x13service,update_mask\x82\xd3\xe4\x93\x02\x43\x32\x38/v1beta/{service.name=projects/*/locations/*/services/*}:\x07service\x12\xf0\x01\n\rDeleteService\x12\x33.google.cloud.metastore.v1beta.DeleteServiceRequest\x1a\x1d.google.longrunning.Operation\"\x8a\x01\xca\x41H\n\x15google.protobuf.Empty\x12/google.cloud.metastore.v1beta.OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32*0/v1beta/{name=projects/*/locations/*/services/*}\x12\xe1\x01\n\x13ListMetadataImports\x12\x39.google.cloud.metastore.v1beta.ListMetadataImportsRequest\x1a:.google.cloud.metastore.v1beta.ListMetadataImportsResponse\"S\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x44\x12\x42/v1beta/{parent=projects/*/locations/*/services/*}/metadataImports\x12\xce\x01\n\x11GetMetadataImport\x12\x37.google.cloud.metastore.v1beta.GetMetadataImportRequest\x1a-.google.cloud.metastore.v1beta.MetadataImport\"Q\xda\x41\x04name\x82\xd3\xe4\x93\x02\x44\x12\x42/v1beta/{name=projects/*/locations/*/services/*/metadataImports/*}\x12\xbf\x02\n\x14\x43reateMetadataImport\x12:.google.cloud.metastore.v1beta.CreateMetadataImportRequest\x1a\x1d.google.longrunning.Operation\"\xcb\x01\xca\x41\x41\n\x0eMetadataImport\x12/google.cloud.metastore.v1beta.OperationMetadata\xda\x41)parent,metadata_import,metadata_import_id\x82\xd3\xe4\x93\x02U\"B/v1beta/{parent=projects/*/locations/*/services/*}/metadataImports:\x0fmetadata_import\x12\xc1\x02\n\x14UpdateMetadataImport\x12:.google.cloud.metastore.v1beta.UpdateMetadataImportRequest\x1a\x1d.google.longrunning.Operation\"\xcd\x01\xca\x41\x41\n\x0eMetadataImport\x12/google.cloud.metastore.v1beta.OperationMetadata\xda\x41\x1bmetadata_import,update_mask\x82\xd3\xe4\x93\x02\x65\x32R/v1beta/{metadata_import.name=projects/*/locations/*/services/*/metadataImports/*}:\x0fmetadata_import\x12\xf9\x01\n\x0e\x45xportMetadata\x12\x34.google.cloud.metastore.v1beta.ExportMetadataRequest\x1a\x1d.google.longrunning.Operation\"\x91\x01\xca\x41\x41\n\x0eMetadataExport\x12/google.cloud.metastore.v1beta.OperationMetadata\x82\xd3\xe4\x93\x02G\"B/v1beta/{service=projects/*/locations/*/services/*}:exportMetadata:\x01*\x12\xfc\x01\n\x0eRestoreService\x12\x34.google.cloud.metastore.v1beta.RestoreServiceRequest\x1a\x1d.google.longrunning.Operation\"\x94\x01\xca\x41:\n\x07Restore\x12/google.cloud.metastore.v1beta.OperationMetadata\xda\x41\x0eservice,backup\x82\xd3\xe4\x93\x02@\";/v1beta/{service=projects/*/locations/*/services/*}:restore:\x01*\x12\xc1\x01\n\x0bListBackups\x12\x31.google.cloud.metastore.v1beta.ListBackupsRequest\x1a\x32.google.cloud.metastore.v1beta.ListBackupsResponse\"K\xda\x41\x06parent\x82\xd3\xe4\x93\x02<\x12:/v1beta/{parent=projects/*/locations/*/services/*}/backups\x12\xae\x01\n\tGetBackup\x12/.google.cloud.metastore.v1beta.GetBackupRequest\x1a%.google.cloud.metastore.v1beta.Backup\"I\xda\x41\x04name\x82\xd3\xe4\x93\x02<\x12:/v1beta/{name=projects/*/locations/*/services/*/backups/*}\x12\x84\x02\n\x0c\x43reateBackup\x12\x32.google.cloud.metastore.v1beta.CreateBackupRequest\x1a\x1d.google.longrunning.Operation\"\xa0\x01\xca\x41\x39\n\x06\x42\x61\x63kup\x12/google.cloud.metastore.v1beta.OperationMetadata\xda\x41\x17parent,backup,backup_id\x82\xd3\xe4\x93\x02\x44\":/v1beta/{parent=projects/*/locations/*/services/*}/backups:\x06\x62\x61\x63kup\x12\xf8\x01\n\x0c\x44\x65leteBackup\x12\x32.google.cloud.metastore.v1beta.DeleteBackupRequest\x1a\x1d.google.longrunning.Operation\"\x94\x01\xca\x41H\n\x15google.protobuf.Empty\x12/google.cloud.metastore.v1beta.OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02<*:/v1beta/{name=projects/*/locations/*/services/*/backups/*}\x12\xd4\x01\n\x0fRemoveIamPolicy\x12\x35.google.cloud.metastore.v1beta.RemoveIamPolicyRequest\x1a\x36.google.cloud.metastore.v1beta.RemoveIamPolicyResponse\"R\x82\xd3\xe4\x93\x02L\"G/v1beta/{resource=projects/*/locations/*/services/*/**}:removeIamPolicy:\x01*\x12\xfd\x01\n\rQueryMetadata\x12\x33.google.cloud.metastore.v1beta.QueryMetadataRequest\x1a\x1d.google.longrunning.Operation\"\x97\x01\xca\x41H\n\x15QueryMetadataResponse\x12/google.cloud.metastore.v1beta.OperationMetadata\x82\xd3\xe4\x93\x02\x46\"A/v1beta/{service=projects/*/locations/*/services/*}:queryMetadata:\x01*\x12\x95\x02\n\x13MoveTableToDatabase\x12\x39.google.cloud.metastore.v1beta.MoveTableToDatabaseRequest\x1a\x1d.google.longrunning.Operation\"\xa3\x01\xca\x41N\n\x1bMoveTableToDatabaseResponse\x12/google.cloud.metastore.v1beta.OperationMetadata\x82\xd3\xe4\x93\x02L\"G/v1beta/{service=projects/*/locations/*/services/*}:moveTableToDatabase:\x01*\x12\xad\x02\n\x1d\x41lterMetadataResourceLocation\x12\x43.google.cloud.metastore.v1beta.AlterMetadataResourceLocationRequest\x1a\x1d.google.longrunning.Operation\"\xa7\x01\xca\x41X\n%AlterMetadataResourceLocationResponse\x12/google.cloud.metastore.v1beta.OperationMetadata\x82\xd3\xe4\x93\x02\x46\"A/v1beta/{service=projects/*/locations/*/services/*}:alterLocation:\x01*\x1aL\xca\x41\x18metastore.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xa2\x03\n!com.google.cloud.metastore.v1betaB\x0eMetastoreProtoP\x01Z?cloud.google.com/go/metastore/apiv1beta/metastorepb;metastorepb\xca\x02\x1dGoogle\\Cloud\\Metastore\\V1beta\xea\x41N\n\x1e\x63ompute.googleapis.com/Network\x12,projects/{project}/global/networks/{network}\xea\x41\x61\n!compute.googleapis.com/Subnetwork\x12<projects/{project}/regions/{region}/subnetworks/{subnetwork}\xea\x41T\n\x1c\x64\x61taplex.googleapis.com/Lake\x12\x34projects/{project}/locations/{location}/lakes/{lake}b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Int32Value", "google/protobuf/wrappers.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module Metastore
      module V1beta
        Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Service").msgclass
        Service::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Service.State").enummodule
        Service::Tier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Service.Tier").enummodule
        Service::ReleaseChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Service.ReleaseChannel").enummodule
        Service::DatabaseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Service.DatabaseType").enummodule
        MetadataIntegration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataIntegration").msgclass
        DataCatalogConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.DataCatalogConfig").msgclass
        DataplexConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.DataplexConfig").msgclass
        Lake = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Lake").msgclass
        MaintenanceWindow = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MaintenanceWindow").msgclass
        HiveMetastoreConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.HiveMetastoreConfig").msgclass
        HiveMetastoreConfig::EndpointProtocol = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.HiveMetastoreConfig.EndpointProtocol").enummodule
        KerberosConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.KerberosConfig").msgclass
        Secret = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Secret").msgclass
        EncryptionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.EncryptionConfig").msgclass
        AuxiliaryVersionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.AuxiliaryVersionConfig").msgclass
        NetworkConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.NetworkConfig").msgclass
        NetworkConfig::Consumer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.NetworkConfig.Consumer").msgclass
        TelemetryConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.TelemetryConfig").msgclass
        TelemetryConfig::LogFormat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.TelemetryConfig.LogFormat").enummodule
        MetadataManagementActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataManagementActivity").msgclass
        MetadataImport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataImport").msgclass
        MetadataImport::DatabaseDump = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataImport.DatabaseDump").msgclass
        MetadataImport::DatabaseDump::DatabaseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataImport.DatabaseDump.DatabaseType").enummodule
        MetadataImport::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataImport.State").enummodule
        MetadataExport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataExport").msgclass
        MetadataExport::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MetadataExport.State").enummodule
        Backup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Backup").msgclass
        Backup::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Backup.State").enummodule
        Restore = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Restore").msgclass
        Restore::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Restore.State").enummodule
        Restore::RestoreType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.Restore.RestoreType").enummodule
        ScalingConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ScalingConfig").msgclass
        ScalingConfig::InstanceSize = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ScalingConfig.InstanceSize").enummodule
        ListServicesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListServicesRequest").msgclass
        ListServicesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListServicesResponse").msgclass
        GetServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.GetServiceRequest").msgclass
        CreateServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.CreateServiceRequest").msgclass
        UpdateServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.UpdateServiceRequest").msgclass
        DeleteServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.DeleteServiceRequest").msgclass
        ListMetadataImportsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListMetadataImportsRequest").msgclass
        ListMetadataImportsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListMetadataImportsResponse").msgclass
        GetMetadataImportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.GetMetadataImportRequest").msgclass
        CreateMetadataImportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.CreateMetadataImportRequest").msgclass
        UpdateMetadataImportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.UpdateMetadataImportRequest").msgclass
        ListBackupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListBackupsRequest").msgclass
        ListBackupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ListBackupsResponse").msgclass
        GetBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.GetBackupRequest").msgclass
        CreateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.CreateBackupRequest").msgclass
        DeleteBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.DeleteBackupRequest").msgclass
        ExportMetadataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ExportMetadataRequest").msgclass
        RestoreServiceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.RestoreServiceRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.OperationMetadata").msgclass
        LocationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.LocationMetadata").msgclass
        LocationMetadata::HiveMetastoreVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.LocationMetadata.HiveMetastoreVersion").msgclass
        DatabaseDumpSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.DatabaseDumpSpec").msgclass
        DatabaseDumpSpec::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.DatabaseDumpSpec.Type").enummodule
        RemoveIamPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.RemoveIamPolicyRequest").msgclass
        RemoveIamPolicyResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.RemoveIamPolicyResponse").msgclass
        QueryMetadataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.QueryMetadataRequest").msgclass
        QueryMetadataResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.QueryMetadataResponse").msgclass
        ErrorDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.ErrorDetails").msgclass
        MoveTableToDatabaseRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MoveTableToDatabaseRequest").msgclass
        MoveTableToDatabaseResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.MoveTableToDatabaseResponse").msgclass
        AlterMetadataResourceLocationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.AlterMetadataResourceLocationRequest").msgclass
        AlterMetadataResourceLocationResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.metastore.v1beta.AlterMetadataResourceLocationResponse").msgclass
      end
    end
  end
end
