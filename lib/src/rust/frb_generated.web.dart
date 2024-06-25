// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

// Static analysis wrongly picks the IO variant, thus ignore this
// ignore_for_file: argument_type_not_assignable

import 'api/archive.dart';
import 'api/common.dart';
import 'api/contig.dart';
import 'api/csv.dart';
import 'api/reads.dart';
import 'api/sequence.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @protected
  Map<String, String> dco_decode_Map_String_String(dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  AlignmentServices dco_decode_alignment_services(dynamic raw);

  @protected
  ArchiveServices dco_decode_archive_services(dynamic raw);

  @protected
  bool dco_decode_bool(dynamic raw);

  @protected
  AlignmentServices dco_decode_box_autoadd_alignment_services(dynamic raw);

  @protected
  ArchiveServices dco_decode_box_autoadd_archive_services(dynamic raw);

  @protected
  ContigServices dco_decode_box_autoadd_contig_services(dynamic raw);

  @protected
  CsvSummaryServices dco_decode_box_autoadd_csv_summary_services(dynamic raw);

  @protected
  FilteringServices dco_decode_box_autoadd_filtering_services(dynamic raw);

  @protected
  IDExtractionServices dco_decode_box_autoadd_id_extraction_services(
      dynamic raw);

  @protected
  PartitionServices dco_decode_box_autoadd_partition_services(dynamic raw);

  @protected
  RawReadServices dco_decode_box_autoadd_raw_read_services(dynamic raw);

  @protected
  SequenceConversionServices
      dco_decode_box_autoadd_sequence_conversion_services(dynamic raw);

  @protected
  SequenceExtraction dco_decode_box_autoadd_sequence_extraction(dynamic raw);

  @protected
  SequenceRemoval dco_decode_box_autoadd_sequence_removal(dynamic raw);

  @protected
  SequenceRenaming dco_decode_box_autoadd_sequence_renaming(dynamic raw);

  @protected
  SplitAlignmentServices dco_decode_box_autoadd_split_alignment_services(
      dynamic raw);

  @protected
  TranslationServices dco_decode_box_autoadd_translation_services(dynamic raw);

  @protected
  ContigServices dco_decode_contig_services(dynamic raw);

  @protected
  CsvSegulType dco_decode_csv_segul_type(dynamic raw);

  @protected
  CsvSummaryServices dco_decode_csv_summary_services(dynamic raw);

  @protected
  double dco_decode_f_64(dynamic raw);

  @protected
  FilteringParams dco_decode_filtering_params(dynamic raw);

  @protected
  FilteringServices dco_decode_filtering_services(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  IDExtractionServices dco_decode_id_extraction_services(dynamic raw);

  @protected
  List<String> dco_decode_list_String(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  List<(String, String)> dco_decode_list_record_string_string(dynamic raw);

  @protected
  String? dco_decode_opt_String(dynamic raw);

  @protected
  List<String>? dco_decode_opt_list_String(dynamic raw);

  @protected
  PartitionServices dco_decode_partition_services(dynamic raw);

  @protected
  RawReadServices dco_decode_raw_read_services(dynamic raw);

  @protected
  (String, String) dco_decode_record_string_string(dynamic raw);

  @protected
  SequenceConversionServices dco_decode_sequence_conversion_services(
      dynamic raw);

  @protected
  SequenceExtraction dco_decode_sequence_extraction(dynamic raw);

  @protected
  SequenceExtractionParams dco_decode_sequence_extraction_params(dynamic raw);

  @protected
  SequenceRemoval dco_decode_sequence_removal(dynamic raw);

  @protected
  SequenceRenaming dco_decode_sequence_renaming(dynamic raw);

  @protected
  SequenceRenamingParams dco_decode_sequence_renaming_params(dynamic raw);

  @protected
  SplitAlignmentServices dco_decode_split_alignment_services(dynamic raw);

  @protected
  TranslationServices dco_decode_translation_services(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  BigInt dco_decode_usize(dynamic raw);

  @protected
  Map<String, String> sse_decode_Map_String_String(
      SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  AlignmentServices sse_decode_alignment_services(SseDeserializer deserializer);

  @protected
  ArchiveServices sse_decode_archive_services(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  AlignmentServices sse_decode_box_autoadd_alignment_services(
      SseDeserializer deserializer);

  @protected
  ArchiveServices sse_decode_box_autoadd_archive_services(
      SseDeserializer deserializer);

  @protected
  ContigServices sse_decode_box_autoadd_contig_services(
      SseDeserializer deserializer);

  @protected
  CsvSummaryServices sse_decode_box_autoadd_csv_summary_services(
      SseDeserializer deserializer);

  @protected
  FilteringServices sse_decode_box_autoadd_filtering_services(
      SseDeserializer deserializer);

  @protected
  IDExtractionServices sse_decode_box_autoadd_id_extraction_services(
      SseDeserializer deserializer);

  @protected
  PartitionServices sse_decode_box_autoadd_partition_services(
      SseDeserializer deserializer);

  @protected
  RawReadServices sse_decode_box_autoadd_raw_read_services(
      SseDeserializer deserializer);

  @protected
  SequenceConversionServices
      sse_decode_box_autoadd_sequence_conversion_services(
          SseDeserializer deserializer);

  @protected
  SequenceExtraction sse_decode_box_autoadd_sequence_extraction(
      SseDeserializer deserializer);

  @protected
  SequenceRemoval sse_decode_box_autoadd_sequence_removal(
      SseDeserializer deserializer);

  @protected
  SequenceRenaming sse_decode_box_autoadd_sequence_renaming(
      SseDeserializer deserializer);

  @protected
  SplitAlignmentServices sse_decode_box_autoadd_split_alignment_services(
      SseDeserializer deserializer);

  @protected
  TranslationServices sse_decode_box_autoadd_translation_services(
      SseDeserializer deserializer);

  @protected
  ContigServices sse_decode_contig_services(SseDeserializer deserializer);

  @protected
  CsvSegulType sse_decode_csv_segul_type(SseDeserializer deserializer);

  @protected
  CsvSummaryServices sse_decode_csv_summary_services(
      SseDeserializer deserializer);

  @protected
  double sse_decode_f_64(SseDeserializer deserializer);

  @protected
  FilteringParams sse_decode_filtering_params(SseDeserializer deserializer);

  @protected
  FilteringServices sse_decode_filtering_services(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  IDExtractionServices sse_decode_id_extraction_services(
      SseDeserializer deserializer);

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  List<(String, String)> sse_decode_list_record_string_string(
      SseDeserializer deserializer);

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer);

  @protected
  List<String>? sse_decode_opt_list_String(SseDeserializer deserializer);

  @protected
  PartitionServices sse_decode_partition_services(SseDeserializer deserializer);

  @protected
  RawReadServices sse_decode_raw_read_services(SseDeserializer deserializer);

  @protected
  (String, String) sse_decode_record_string_string(
      SseDeserializer deserializer);

  @protected
  SequenceConversionServices sse_decode_sequence_conversion_services(
      SseDeserializer deserializer);

  @protected
  SequenceExtraction sse_decode_sequence_extraction(
      SseDeserializer deserializer);

  @protected
  SequenceExtractionParams sse_decode_sequence_extraction_params(
      SseDeserializer deserializer);

  @protected
  SequenceRemoval sse_decode_sequence_removal(SseDeserializer deserializer);

  @protected
  SequenceRenaming sse_decode_sequence_renaming(SseDeserializer deserializer);

  @protected
  SequenceRenamingParams sse_decode_sequence_renaming_params(
      SseDeserializer deserializer);

  @protected
  SplitAlignmentServices sse_decode_split_alignment_services(
      SseDeserializer deserializer);

  @protected
  TranslationServices sse_decode_translation_services(
      SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_usize(SseDeserializer deserializer);

  @protected
  void sse_encode_Map_String_String(
      Map<String, String> self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_alignment_services(
      AlignmentServices self, SseSerializer serializer);

  @protected
  void sse_encode_archive_services(
      ArchiveServices self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_alignment_services(
      AlignmentServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_archive_services(
      ArchiveServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_contig_services(
      ContigServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_csv_summary_services(
      CsvSummaryServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_filtering_services(
      FilteringServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_id_extraction_services(
      IDExtractionServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_partition_services(
      PartitionServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_raw_read_services(
      RawReadServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_sequence_conversion_services(
      SequenceConversionServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_sequence_extraction(
      SequenceExtraction self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_sequence_removal(
      SequenceRemoval self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_sequence_renaming(
      SequenceRenaming self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_split_alignment_services(
      SplitAlignmentServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_translation_services(
      TranslationServices self, SseSerializer serializer);

  @protected
  void sse_encode_contig_services(
      ContigServices self, SseSerializer serializer);

  @protected
  void sse_encode_csv_segul_type(CsvSegulType self, SseSerializer serializer);

  @protected
  void sse_encode_csv_summary_services(
      CsvSummaryServices self, SseSerializer serializer);

  @protected
  void sse_encode_f_64(double self, SseSerializer serializer);

  @protected
  void sse_encode_filtering_params(
      FilteringParams self, SseSerializer serializer);

  @protected
  void sse_encode_filtering_services(
      FilteringServices self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_id_extraction_services(
      IDExtractionServices self, SseSerializer serializer);

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_list_record_string_string(
      List<(String, String)> self, SseSerializer serializer);

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_list_String(List<String>? self, SseSerializer serializer);

  @protected
  void sse_encode_partition_services(
      PartitionServices self, SseSerializer serializer);

  @protected
  void sse_encode_raw_read_services(
      RawReadServices self, SseSerializer serializer);

  @protected
  void sse_encode_record_string_string(
      (String, String) self, SseSerializer serializer);

  @protected
  void sse_encode_sequence_conversion_services(
      SequenceConversionServices self, SseSerializer serializer);

  @protected
  void sse_encode_sequence_extraction(
      SequenceExtraction self, SseSerializer serializer);

  @protected
  void sse_encode_sequence_extraction_params(
      SequenceExtractionParams self, SseSerializer serializer);

  @protected
  void sse_encode_sequence_removal(
      SequenceRemoval self, SseSerializer serializer);

  @protected
  void sse_encode_sequence_renaming(
      SequenceRenaming self, SseSerializer serializer);

  @protected
  void sse_encode_sequence_renaming_params(
      SequenceRenamingParams self, SseSerializer serializer);

  @protected
  void sse_encode_split_alignment_services(
      SplitAlignmentServices self, SseSerializer serializer);

  @protected
  void sse_encode_translation_services(
      TranslationServices self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(BigInt self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
extension type RustLibWasmModule._(JSObject _) implements JSObject {}
