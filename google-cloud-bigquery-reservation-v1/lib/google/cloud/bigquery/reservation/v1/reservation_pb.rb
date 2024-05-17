# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/bigquery/reservation/v1/reservation.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n6google/cloud/bigquery/reservation/v1/reservation.proto\x12$google.cloud.bigquery.reservation.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xb5\x04\n\x0bReservation\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x15\n\rslot_capacity\x18\x02 \x01(\x03\x12\x19\n\x11ignore_idle_slots\x18\x04 \x01(\x08\x12N\n\tautoscale\x18\x07 \x01(\x0b\x32;.google.cloud.bigquery.reservation.v1.Reservation.Autoscale\x12\x13\n\x0b\x63oncurrency\x18\x10 \x01(\x03\x12\x36\n\rcreation_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x1e\n\x16multi_region_auxiliary\x18\x0e \x01(\x08\x12>\n\x07\x65\x64ition\x18\x11 \x01(\x0e\x32-.google.cloud.bigquery.reservation.v1.Edition\x1a:\n\tAutoscale\x12\x1a\n\rcurrent_slots\x18\x01 \x01(\x03\x42\x03\xe0\x41\x03\x12\x11\n\tmax_slots\x18\x02 \x01(\x03:w\xea\x41t\n.bigqueryreservation.googleapis.com/Reservation\x12\x42projects/{project}/locations/{location}/reservations/{reservation}\"\xf3\x07\n\x12\x43\x61pacityCommitment\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x12\n\nslot_count\x18\x02 \x01(\x03\x12U\n\x04plan\x18\x03 \x01(\x0e\x32G.google.cloud.bigquery.reservation.v1.CapacityCommitment.CommitmentPlan\x12R\n\x05state\x18\x04 \x01(\x0e\x32>.google.cloud.bigquery.reservation.v1.CapacityCommitment.StateB\x03\xe0\x41\x03\x12>\n\x15\x63ommitment_start_time\x18\t \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12<\n\x13\x63ommitment_end_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12/\n\x0e\x66\x61ilure_status\x18\x07 \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12]\n\x0crenewal_plan\x18\x08 \x01(\x0e\x32G.google.cloud.bigquery.reservation.v1.CapacityCommitment.CommitmentPlan\x12\x1e\n\x16multi_region_auxiliary\x18\n \x01(\x08\x12>\n\x07\x65\x64ition\x18\x0c \x01(\x0e\x32-.google.cloud.bigquery.reservation.v1.Edition\"\xc6\x01\n\x0e\x43ommitmentPlan\x12\x1f\n\x1b\x43OMMITMENT_PLAN_UNSPECIFIED\x10\x00\x12\x08\n\x04\x46LEX\x10\x03\x12\x16\n\x0e\x46LEX_FLAT_RATE\x10\x07\x1a\x02\x08\x01\x12\t\n\x05TRIAL\x10\x05\x12\x0b\n\x07MONTHLY\x10\x02\x12\x19\n\x11MONTHLY_FLAT_RATE\x10\x08\x1a\x02\x08\x01\x12\n\n\x06\x41NNUAL\x10\x04\x12\x18\n\x10\x41NNUAL_FLAT_RATE\x10\t\x1a\x02\x08\x01\x12\x0e\n\nTHREE_YEAR\x10\n\x12\x08\n\x04NONE\x10\x06\"C\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PENDING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\n\n\x06\x46\x41ILED\x10\x03:\x8e\x01\xea\x41\x8a\x01\n5bigqueryreservation.googleapis.com/CapacityCommitment\x12Qprojects/{project}/locations/{location}/capacityCommitments/{capacity_commitment}\"\xc2\x01\n\x18\x43reateReservationRequest\x12\x46\n\x06parent\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\x12.bigqueryreservation.googleapis.com/Reservation\x12\x16\n\x0ereservation_id\x18\x02 \x01(\t\x12\x46\n\x0breservation\x18\x03 \x01(\x0b\x32\x31.google.cloud.bigquery.reservation.v1.Reservation\"\x88\x01\n\x17ListReservationsRequest\x12\x46\n\x06parent\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\x12.bigqueryreservation.googleapis.com/Reservation\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"|\n\x18ListReservationsResponse\x12G\n\x0creservations\x18\x01 \x03(\x0b\x32\x31.google.cloud.bigquery.reservation.v1.Reservation\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"]\n\x15GetReservationRequest\x12\x44\n\x04name\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\n.bigqueryreservation.googleapis.com/Reservation\"`\n\x18\x44\x65leteReservationRequest\x12\x44\n\x04name\x18\x01 \x01(\tB6\xe0\x41\x02\xfa\x41\x30\n.bigqueryreservation.googleapis.com/Reservation\"\x93\x01\n\x18UpdateReservationRequest\x12\x46\n\x0breservation\x18\x01 \x01(\x0b\x32\x31.google.cloud.bigquery.reservation.v1.Reservation\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"\x95\x02\n\x1f\x43reateCapacityCommitmentRequest\x12M\n\x06parent\x18\x01 \x01(\tB=\xe0\x41\x02\xfa\x41\x37\x12\x35\x62igqueryreservation.googleapis.com/CapacityCommitment\x12U\n\x13\x63\x61pacity_commitment\x18\x02 \x01(\x0b\x32\x38.google.cloud.bigquery.reservation.v1.CapacityCommitment\x12,\n$enforce_single_admin_project_per_org\x18\x04 \x01(\x08\x12\x1e\n\x16\x63\x61pacity_commitment_id\x18\x05 \x01(\t\"\x96\x01\n\x1eListCapacityCommitmentsRequest\x12M\n\x06parent\x18\x01 \x01(\tB=\xe0\x41\x02\xfa\x41\x37\x12\x35\x62igqueryreservation.googleapis.com/CapacityCommitment\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x92\x01\n\x1fListCapacityCommitmentsResponse\x12V\n\x14\x63\x61pacity_commitments\x18\x01 \x03(\x0b\x32\x38.google.cloud.bigquery.reservation.v1.CapacityCommitment\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"k\n\x1cGetCapacityCommitmentRequest\x12K\n\x04name\x18\x01 \x01(\tB=\xe0\x41\x02\xfa\x41\x37\n5bigqueryreservation.googleapis.com/CapacityCommitment\"}\n\x1f\x44\x65leteCapacityCommitmentRequest\x12K\n\x04name\x18\x01 \x01(\tB=\xe0\x41\x02\xfa\x41\x37\n5bigqueryreservation.googleapis.com/CapacityCommitment\x12\r\n\x05\x66orce\x18\x03 \x01(\x08\"\xa9\x01\n\x1fUpdateCapacityCommitmentRequest\x12U\n\x13\x63\x61pacity_commitment\x18\x01 \x01(\x0b\x32\x38.google.cloud.bigquery.reservation.v1.CapacityCommitment\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"\x81\x01\n\x1eSplitCapacityCommitmentRequest\x12K\n\x04name\x18\x01 \x01(\tB=\xe0\x41\x02\xfa\x41\x37\n5bigqueryreservation.googleapis.com/CapacityCommitment\x12\x12\n\nslot_count\x18\x02 \x01(\x03\"\xb4\x01\n\x1fSplitCapacityCommitmentResponse\x12G\n\x05\x66irst\x18\x01 \x01(\x0b\x32\x38.google.cloud.bigquery.reservation.v1.CapacityCommitment\x12H\n\x06second\x18\x02 \x01(\x0b\x32\x38.google.cloud.bigquery.reservation.v1.CapacityCommitment\"\x8e\x01\n\x1fMergeCapacityCommitmentsRequest\x12J\n\x06parent\x18\x01 \x01(\tB:\xfa\x41\x37\x12\x35\x62igqueryreservation.googleapis.com/CapacityCommitment\x12\x1f\n\x17\x63\x61pacity_commitment_ids\x18\x02 \x03(\t\"\xf4\x03\n\nAssignment\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x10\n\x08\x61ssignee\x18\x04 \x01(\t\x12J\n\x08job_type\x18\x03 \x01(\x0e\x32\x38.google.cloud.bigquery.reservation.v1.Assignment.JobType\x12J\n\x05state\x18\x06 \x01(\x0e\x32\x36.google.cloud.bigquery.reservation.v1.Assignment.StateB\x03\xe0\x41\x03\"]\n\x07JobType\x12\x18\n\x14JOB_TYPE_UNSPECIFIED\x10\x00\x12\x0c\n\x08PIPELINE\x10\x01\x12\t\n\x05QUERY\x10\x02\x12\x0f\n\x0bML_EXTERNAL\x10\x03\x12\x0e\n\nBACKGROUND\x10\x04\"7\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PENDING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02:\x90\x01\xea\x41\x8c\x01\n-bigqueryreservation.googleapis.com/Assignment\x12[projects/{project}/locations/{location}/reservations/{reservation}/assignments/{assignment}\"\xbd\x01\n\x17\x43reateAssignmentRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-bigqueryreservation.googleapis.com/Assignment\x12\x44\n\nassignment\x18\x02 \x01(\x0b\x32\x30.google.cloud.bigquery.reservation.v1.Assignment\x12\x15\n\rassignment_id\x18\x04 \x01(\t\"\x86\x01\n\x16ListAssignmentsRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\x12-bigqueryreservation.googleapis.com/Assignment\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"y\n\x17ListAssignmentsResponse\x12\x45\n\x0b\x61ssignments\x18\x01 \x03(\x0b\x32\x30.google.cloud.bigquery.reservation.v1.Assignment\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"^\n\x17\x44\x65leteAssignmentRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-bigqueryreservation.googleapis.com/Assignment\"\x8b\x01\n\x18SearchAssignmentsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\r\n\x05query\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"\x8e\x01\n\x1bSearchAllAssignmentsRequest\x12\x39\n\x06parent\x18\x01 \x01(\tB)\xe0\x41\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\r\n\x05query\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"{\n\x19SearchAssignmentsResponse\x12\x45\n\x0b\x61ssignments\x18\x01 \x03(\x0b\x32\x30.google.cloud.bigquery.reservation.v1.Assignment\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"~\n\x1cSearchAllAssignmentsResponse\x12\x45\n\x0b\x61ssignments\x18\x01 \x03(\x0b\x32\x30.google.cloud.bigquery.reservation.v1.Assignment\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xbf\x01\n\x15MoveAssignmentRequest\x12\x43\n\x04name\x18\x01 \x01(\tB5\xe0\x41\x02\xfa\x41/\n-bigqueryreservation.googleapis.com/Assignment\x12J\n\x0e\x64\x65stination_id\x18\x03 \x01(\tB2\xfa\x41/\x12-bigqueryreservation.googleapis.com/Assignment\x12\x15\n\rassignment_id\x18\x05 \x01(\t\"\x90\x01\n\x17UpdateAssignmentRequest\x12\x44\n\nassignment\x18\x01 \x01(\x0b\x32\x30.google.cloud.bigquery.reservation.v1.Assignment\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\"J\n\x0eTableReference\x12\x12\n\nproject_id\x18\x01 \x01(\t\x12\x12\n\ndataset_id\x18\x02 \x01(\t\x12\x10\n\x08table_id\x18\x03 \x01(\t\"\x9f\x02\n\rBiReservation\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x0c\n\x04size\x18\x04 \x01(\x03\x12N\n\x10preferred_tables\x18\x05 \x03(\x0b\x32\x34.google.cloud.bigquery.reservation.v1.TableReference:l\xea\x41i\n0bigqueryreservation.googleapis.com/BiReservation\x12\x35projects/{project}/locations/{location}/biReservation\"a\n\x17GetBiReservationRequest\x12\x46\n\x04name\x18\x01 \x01(\tB8\xe0\x41\x02\xfa\x41\x32\n0bigqueryreservation.googleapis.com/BiReservation\"\x9a\x01\n\x1aUpdateBiReservationRequest\x12K\n\x0e\x62i_reservation\x18\x01 \x01(\x0b\x32\x33.google.cloud.bigquery.reservation.v1.BiReservation\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask*U\n\x07\x45\x64ition\x12\x17\n\x13\x45\x44ITION_UNSPECIFIED\x10\x00\x12\x0c\n\x08STANDARD\x10\x01\x12\x0e\n\nENTERPRISE\x10\x02\x12\x13\n\x0f\x45NTERPRISE_PLUS\x10\x03\x32\xc1\'\n\x12ReservationService\x12\xf1\x01\n\x11\x43reateReservation\x12>.google.cloud.bigquery.reservation.v1.CreateReservationRequest\x1a\x31.google.cloud.bigquery.reservation.v1.Reservation\"i\xda\x41!parent,reservation,reservation_id\x82\xd3\xe4\x93\x02?\"0/v1/{parent=projects/*/locations/*}/reservations:\x0breservation\x12\xd4\x01\n\x10ListReservations\x12=.google.cloud.bigquery.reservation.v1.ListReservationsRequest\x1a>.google.cloud.bigquery.reservation.v1.ListReservationsResponse\"A\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{parent=projects/*/locations/*}/reservations\x12\xc1\x01\n\x0eGetReservation\x12;.google.cloud.bigquery.reservation.v1.GetReservationRequest\x1a\x31.google.cloud.bigquery.reservation.v1.Reservation\"?\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32\x12\x30/v1/{name=projects/*/locations/*/reservations/*}\x12\xac\x01\n\x11\x44\x65leteReservation\x12>.google.cloud.bigquery.reservation.v1.DeleteReservationRequest\x1a\x16.google.protobuf.Empty\"?\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32*0/v1/{name=projects/*/locations/*/reservations/*}\x12\xf3\x01\n\x11UpdateReservation\x12>.google.cloud.bigquery.reservation.v1.UpdateReservationRequest\x1a\x31.google.cloud.bigquery.reservation.v1.Reservation\"k\xda\x41\x17reservation,update_mask\x82\xd3\xe4\x93\x02K2</v1/{reservation.name=projects/*/locations/*/reservations/*}:\x0breservation\x12\x8e\x02\n\x18\x43reateCapacityCommitment\x12\x45.google.cloud.bigquery.reservation.v1.CreateCapacityCommitmentRequest\x1a\x38.google.cloud.bigquery.reservation.v1.CapacityCommitment\"q\xda\x41\x1aparent,capacity_commitment\x82\xd3\xe4\x93\x02N\"7/v1/{parent=projects/*/locations/*}/capacityCommitments:\x13\x63\x61pacity_commitment\x12\xf0\x01\n\x17ListCapacityCommitments\x12\x44.google.cloud.bigquery.reservation.v1.ListCapacityCommitmentsRequest\x1a\x45.google.cloud.bigquery.reservation.v1.ListCapacityCommitmentsResponse\"H\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x39\x12\x37/v1/{parent=projects/*/locations/*}/capacityCommitments\x12\xdd\x01\n\x15GetCapacityCommitment\x12\x42.google.cloud.bigquery.reservation.v1.GetCapacityCommitmentRequest\x1a\x38.google.cloud.bigquery.reservation.v1.CapacityCommitment\"F\xda\x41\x04name\x82\xd3\xe4\x93\x02\x39\x12\x37/v1/{name=projects/*/locations/*/capacityCommitments/*}\x12\xc1\x01\n\x18\x44\x65leteCapacityCommitment\x12\x45.google.cloud.bigquery.reservation.v1.DeleteCapacityCommitmentRequest\x1a\x16.google.protobuf.Empty\"F\xda\x41\x04name\x82\xd3\xe4\x93\x02\x39*7/v1/{name=projects/*/locations/*/capacityCommitments/*}\x12\xa8\x02\n\x18UpdateCapacityCommitment\x12\x45.google.cloud.bigquery.reservation.v1.UpdateCapacityCommitmentRequest\x1a\x38.google.cloud.bigquery.reservation.v1.CapacityCommitment\"\x8a\x01\xda\x41\x1f\x63\x61pacity_commitment,update_mask\x82\xd3\xe4\x93\x02\x62\x32K/v1/{capacity_commitment.name=projects/*/locations/*/capacityCommitments/*}:\x13\x63\x61pacity_commitment\x12\x82\x02\n\x17SplitCapacityCommitment\x12\x44.google.cloud.bigquery.reservation.v1.SplitCapacityCommitmentRequest\x1a\x45.google.cloud.bigquery.reservation.v1.SplitCapacityCommitmentResponse\"Z\xda\x41\x0fname,slot_count\x82\xd3\xe4\x93\x02\x42\"=/v1/{name=projects/*/locations/*/capacityCommitments/*}:split:\x01*\x12\x86\x02\n\x18MergeCapacityCommitments\x12\x45.google.cloud.bigquery.reservation.v1.MergeCapacityCommitmentsRequest\x1a\x38.google.cloud.bigquery.reservation.v1.CapacityCommitment\"i\xda\x41\x1eparent,capacity_commitment_ids\x82\xd3\xe4\x93\x02\x42\"=/v1/{parent=projects/*/locations/*}/capacityCommitments:merge:\x01*\x12\xeb\x01\n\x10\x43reateAssignment\x12=.google.cloud.bigquery.reservation.v1.CreateAssignmentRequest\x1a\x30.google.cloud.bigquery.reservation.v1.Assignment\"f\xda\x41\x11parent,assignment\x82\xd3\xe4\x93\x02L\">/v1/{parent=projects/*/locations/*/reservations/*}/assignments:\nassignment\x12\xdf\x01\n\x0fListAssignments\x12<.google.cloud.bigquery.reservation.v1.ListAssignmentsRequest\x1a=.google.cloud.bigquery.reservation.v1.ListAssignmentsResponse\"O\xda\x41\x06parent\x82\xd3\xe4\x93\x02@\x12>/v1/{parent=projects/*/locations/*/reservations/*}/assignments\x12\xb8\x01\n\x10\x44\x65leteAssignment\x12=.google.cloud.bigquery.reservation.v1.DeleteAssignmentRequest\x1a\x16.google.protobuf.Empty\"M\xda\x41\x04name\x82\xd3\xe4\x93\x02@*>/v1/{name=projects/*/locations/*/reservations/*/assignments/*}\x12\xe5\x01\n\x11SearchAssignments\x12>.google.cloud.bigquery.reservation.v1.SearchAssignmentsRequest\x1a?.google.cloud.bigquery.reservation.v1.SearchAssignmentsResponse\"O\x88\x02\x01\xda\x41\x0cparent,query\x82\xd3\xe4\x93\x02\x37\x12\x35/v1/{parent=projects/*/locations/*}:searchAssignments\x12\xee\x01\n\x14SearchAllAssignments\x12\x41.google.cloud.bigquery.reservation.v1.SearchAllAssignmentsRequest\x1a\x42.google.cloud.bigquery.reservation.v1.SearchAllAssignmentsResponse\"O\xda\x41\x0cparent,query\x82\xd3\xe4\x93\x02:\x12\x38/v1/{parent=projects/*/locations/*}:searchAllAssignments\x12\xe5\x01\n\x0eMoveAssignment\x12;.google.cloud.bigquery.reservation.v1.MoveAssignmentRequest\x1a\x30.google.cloud.bigquery.reservation.v1.Assignment\"d\xda\x41\x13name,destination_id\x82\xd3\xe4\x93\x02H\"C/v1/{name=projects/*/locations/*/reservations/*/assignments/*}:move:\x01*\x12\xfb\x01\n\x10UpdateAssignment\x12=.google.cloud.bigquery.reservation.v1.UpdateAssignmentRequest\x1a\x30.google.cloud.bigquery.reservation.v1.Assignment\"v\xda\x41\x16\x61ssignment,update_mask\x82\xd3\xe4\x93\x02W2I/v1/{assignment.name=projects/*/locations/*/reservations/*/assignments/*}:\nassignment\x12\xc6\x01\n\x10GetBiReservation\x12=.google.cloud.bigquery.reservation.v1.GetBiReservationRequest\x1a\x33.google.cloud.bigquery.reservation.v1.BiReservation\">\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\x12//v1/{name=projects/*/locations/*/biReservation}\x12\x81\x02\n\x13UpdateBiReservation\x12@.google.cloud.bigquery.reservation.v1.UpdateBiReservationRequest\x1a\x33.google.cloud.bigquery.reservation.v1.BiReservation\"s\xda\x41\x1a\x62i_reservation,update_mask\x82\xd3\xe4\x93\x02P2>/v1/{bi_reservation.name=projects/*/locations/*/biReservation}:\x0e\x62i_reservation\x1a\x7f\xca\x41\"bigqueryreservation.googleapis.com\xd2\x41Whttps://www.googleapis.com/auth/bigquery,https://www.googleapis.com/auth/cloud-platformB\xd8\x01\n(com.google.cloud.bigquery.reservation.v1B\x10ReservationProtoP\x01ZJcloud.google.com/go/bigquery/reservation/apiv1/reservationpb;reservationpb\xaa\x02$Google.Cloud.BigQuery.Reservation.V1\xca\x02$Google\\Cloud\\BigQuery\\Reservation\\V1b\x06proto3"

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
    ["google.rpc.Status", "google/rpc/status.proto"],
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
    module Bigquery
      module Reservation
        module V1
          Reservation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.Reservation").msgclass
          Reservation::Autoscale = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.Reservation.Autoscale").msgclass
          CapacityCommitment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.CapacityCommitment").msgclass
          CapacityCommitment::CommitmentPlan = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.CapacityCommitment.CommitmentPlan").enummodule
          CapacityCommitment::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.CapacityCommitment.State").enummodule
          CreateReservationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.CreateReservationRequest").msgclass
          ListReservationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.ListReservationsRequest").msgclass
          ListReservationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.ListReservationsResponse").msgclass
          GetReservationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.GetReservationRequest").msgclass
          DeleteReservationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.DeleteReservationRequest").msgclass
          UpdateReservationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.UpdateReservationRequest").msgclass
          CreateCapacityCommitmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.CreateCapacityCommitmentRequest").msgclass
          ListCapacityCommitmentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.ListCapacityCommitmentsRequest").msgclass
          ListCapacityCommitmentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.ListCapacityCommitmentsResponse").msgclass
          GetCapacityCommitmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.GetCapacityCommitmentRequest").msgclass
          DeleteCapacityCommitmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.DeleteCapacityCommitmentRequest").msgclass
          UpdateCapacityCommitmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.UpdateCapacityCommitmentRequest").msgclass
          SplitCapacityCommitmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.SplitCapacityCommitmentRequest").msgclass
          SplitCapacityCommitmentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.SplitCapacityCommitmentResponse").msgclass
          MergeCapacityCommitmentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.MergeCapacityCommitmentsRequest").msgclass
          Assignment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.Assignment").msgclass
          Assignment::JobType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.Assignment.JobType").enummodule
          Assignment::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.Assignment.State").enummodule
          CreateAssignmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.CreateAssignmentRequest").msgclass
          ListAssignmentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.ListAssignmentsRequest").msgclass
          ListAssignmentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.ListAssignmentsResponse").msgclass
          DeleteAssignmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.DeleteAssignmentRequest").msgclass
          SearchAssignmentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.SearchAssignmentsRequest").msgclass
          SearchAllAssignmentsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.SearchAllAssignmentsRequest").msgclass
          SearchAssignmentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.SearchAssignmentsResponse").msgclass
          SearchAllAssignmentsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.SearchAllAssignmentsResponse").msgclass
          MoveAssignmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.MoveAssignmentRequest").msgclass
          UpdateAssignmentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.UpdateAssignmentRequest").msgclass
          TableReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.TableReference").msgclass
          BiReservation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.BiReservation").msgclass
          GetBiReservationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.GetBiReservationRequest").msgclass
          UpdateBiReservationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.UpdateBiReservationRequest").msgclass
          Edition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.bigquery.reservation.v1.Edition").enummodule
        end
      end
    end
  end
end
