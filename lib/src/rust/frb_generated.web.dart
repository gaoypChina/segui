// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.18.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables

import 'api/common.dart';
import 'api/contig.dart';
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

  CrossPlatformFinalizerArg
      get rust_arc_decrement_strong_count_SequenceExtractionPtr => wire
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction;

  CrossPlatformFinalizerArg
      get rust_arc_decrement_strong_count_SequenceRenamingPtr => wire
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming;

  @protected
  SequenceExtraction
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          dynamic raw);

  @protected
  SequenceRenaming
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          dynamic raw);

  @protected
  SequenceExtraction
      dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          dynamic raw);

  @protected
  SequenceRenaming
      dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          dynamic raw);

  @protected
  SequenceExtraction
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          dynamic raw);

  @protected
  SequenceRenaming
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  AlignmentServices dco_decode_alignment_services(dynamic raw);

  @protected
  bool dco_decode_bool(dynamic raw);

  @protected
  AlignmentServices dco_decode_box_autoadd_alignment_services(dynamic raw);

  @protected
  ContigServices dco_decode_box_autoadd_contig_services(dynamic raw);

  @protected
  FilteringServices dco_decode_box_autoadd_filtering_services(dynamic raw);

  @protected
  PartitionServices dco_decode_box_autoadd_partition_services(dynamic raw);

  @protected
  RawReadServices dco_decode_box_autoadd_raw_read_services(dynamic raw);

  @protected
  SequenceRemoval dco_decode_box_autoadd_sequence_removal(dynamic raw);

  @protected
  SequenceServices dco_decode_box_autoadd_sequence_services(dynamic raw);

  @protected
  SplitAlignmentServices dco_decode_box_autoadd_split_alignment_services(
      dynamic raw);

  @protected
  int dco_decode_box_autoadd_usize(dynamic raw);

  @protected
  ContigServices dco_decode_contig_services(dynamic raw);

  @protected
  double dco_decode_f_64(dynamic raw);

  @protected
  FilteringServices dco_decode_filtering_services(dynamic raw);

  @protected
  List<String> dco_decode_list_String(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  String? dco_decode_opt_String(dynamic raw);

  @protected
  int? dco_decode_opt_box_autoadd_usize(dynamic raw);

  @protected
  List<String>? dco_decode_opt_list_String(dynamic raw);

  @protected
  PartitionServices dco_decode_partition_services(dynamic raw);

  @protected
  RawReadServices dco_decode_raw_read_services(dynamic raw);

  @protected
  SequenceRemoval dco_decode_sequence_removal(dynamic raw);

  @protected
  SequenceServices dco_decode_sequence_services(dynamic raw);

  @protected
  SplitAlignmentServices dco_decode_split_alignment_services(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  int dco_decode_usize(dynamic raw);

  @protected
  SequenceExtraction
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          SseDeserializer deserializer);

  @protected
  SequenceRenaming
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          SseDeserializer deserializer);

  @protected
  SequenceExtraction
      sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          SseDeserializer deserializer);

  @protected
  SequenceRenaming
      sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          SseDeserializer deserializer);

  @protected
  SequenceExtraction
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          SseDeserializer deserializer);

  @protected
  SequenceRenaming
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  AlignmentServices sse_decode_alignment_services(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  AlignmentServices sse_decode_box_autoadd_alignment_services(
      SseDeserializer deserializer);

  @protected
  ContigServices sse_decode_box_autoadd_contig_services(
      SseDeserializer deserializer);

  @protected
  FilteringServices sse_decode_box_autoadd_filtering_services(
      SseDeserializer deserializer);

  @protected
  PartitionServices sse_decode_box_autoadd_partition_services(
      SseDeserializer deserializer);

  @protected
  RawReadServices sse_decode_box_autoadd_raw_read_services(
      SseDeserializer deserializer);

  @protected
  SequenceRemoval sse_decode_box_autoadd_sequence_removal(
      SseDeserializer deserializer);

  @protected
  SequenceServices sse_decode_box_autoadd_sequence_services(
      SseDeserializer deserializer);

  @protected
  SplitAlignmentServices sse_decode_box_autoadd_split_alignment_services(
      SseDeserializer deserializer);

  @protected
  int sse_decode_box_autoadd_usize(SseDeserializer deserializer);

  @protected
  ContigServices sse_decode_contig_services(SseDeserializer deserializer);

  @protected
  double sse_decode_f_64(SseDeserializer deserializer);

  @protected
  FilteringServices sse_decode_filtering_services(SseDeserializer deserializer);

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer);

  @protected
  int? sse_decode_opt_box_autoadd_usize(SseDeserializer deserializer);

  @protected
  List<String>? sse_decode_opt_list_String(SseDeserializer deserializer);

  @protected
  PartitionServices sse_decode_partition_services(SseDeserializer deserializer);

  @protected
  RawReadServices sse_decode_raw_read_services(SseDeserializer deserializer);

  @protected
  SequenceRemoval sse_decode_sequence_removal(SseDeserializer deserializer);

  @protected
  SequenceServices sse_decode_sequence_services(SseDeserializer deserializer);

  @protected
  SplitAlignmentServices sse_decode_split_alignment_services(
      SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  int sse_decode_usize(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  String cst_encode_String(String raw) {
    return raw;
  }

  @protected
  List<dynamic> cst_encode_alignment_services(AlignmentServices raw) {
    return [
      cst_encode_opt_String(raw.dir),
      cst_encode_list_String(raw.inputFiles),
      cst_encode_String(raw.inputFmt),
      cst_encode_String(raw.datatype),
      cst_encode_String(raw.outputDir)
    ];
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_alignment_services(
      AlignmentServices raw) {
    return cst_encode_alignment_services(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_contig_services(ContigServices raw) {
    return cst_encode_contig_services(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_filtering_services(
      FilteringServices raw) {
    return cst_encode_filtering_services(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_partition_services(
      PartitionServices raw) {
    return cst_encode_partition_services(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_raw_read_services(RawReadServices raw) {
    return cst_encode_raw_read_services(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_sequence_removal(SequenceRemoval raw) {
    return cst_encode_sequence_removal(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_sequence_services(SequenceServices raw) {
    return cst_encode_sequence_services(raw);
  }

  @protected
  List<dynamic> cst_encode_box_autoadd_split_alignment_services(
      SplitAlignmentServices raw) {
    return cst_encode_split_alignment_services(raw);
  }

  @protected
  int cst_encode_box_autoadd_usize(int raw) {
    return cst_encode_usize(raw);
  }

  @protected
  List<dynamic> cst_encode_contig_services(ContigServices raw) {
    return [
      cst_encode_opt_String(raw.dirPath),
      cst_encode_list_String(raw.files),
      cst_encode_String(raw.fileFmt),
      cst_encode_String(raw.outputDir)
    ];
  }

  @protected
  List<dynamic> cst_encode_filtering_services(FilteringServices raw) {
    return [
      cst_encode_opt_String(raw.dir),
      cst_encode_list_String(raw.inputFiles),
      cst_encode_String(raw.inputFmt),
      cst_encode_String(raw.datatype),
      cst_encode_String(raw.outputDir),
      cst_encode_bool(raw.isConcat)
    ];
  }

  @protected
  List<dynamic> cst_encode_list_String(List<String> raw) {
    return raw.map(cst_encode_String).toList();
  }

  @protected
  Uint8List cst_encode_list_prim_u_8_strict(Uint8List raw) {
    return raw;
  }

  @protected
  String? cst_encode_opt_String(String? raw) {
    return raw == null ? null : cst_encode_String(raw);
  }

  @protected
  int? cst_encode_opt_box_autoadd_usize(int? raw) {
    return raw == null ? null : cst_encode_box_autoadd_usize(raw);
  }

  @protected
  List<dynamic>? cst_encode_opt_list_String(List<String>? raw) {
    return raw == null ? null : cst_encode_list_String(raw);
  }

  @protected
  List<dynamic> cst_encode_partition_services(PartitionServices raw) {
    return [
      cst_encode_list_String(raw.inputFiles),
      cst_encode_String(raw.inputPartFmt),
      cst_encode_String(raw.output),
      cst_encode_String(raw.outputPartFmt),
      cst_encode_String(raw.datatype),
      cst_encode_bool(raw.isUncheck)
    ];
  }

  @protected
  List<dynamic> cst_encode_raw_read_services(RawReadServices raw) {
    return [
      cst_encode_opt_String(raw.dirPath),
      cst_encode_list_String(raw.files),
      cst_encode_String(raw.fileFmt),
      cst_encode_String(raw.outputDir)
    ];
  }

  @protected
  List<dynamic> cst_encode_sequence_removal(SequenceRemoval raw) {
    return [
      cst_encode_list_String(raw.inputFiles),
      cst_encode_String(raw.inputFmt),
      cst_encode_String(raw.datatype),
      cst_encode_String(raw.outputDir),
      cst_encode_String(raw.outputFmt),
      cst_encode_opt_String(raw.removeRegex),
      cst_encode_opt_list_String(raw.removeList)
    ];
  }

  @protected
  List<dynamic> cst_encode_sequence_services(SequenceServices raw) {
    return [
      cst_encode_opt_String(raw.dir),
      cst_encode_list_String(raw.inputFiles),
      cst_encode_String(raw.inputFmt),
      cst_encode_String(raw.datatype),
      cst_encode_String(raw.outputDir)
    ];
  }

  @protected
  List<dynamic> cst_encode_split_alignment_services(
      SplitAlignmentServices raw) {
    return [
      cst_encode_opt_String(raw.dir),
      cst_encode_String(raw.inputFile),
      cst_encode_String(raw.inputFmt),
      cst_encode_String(raw.datatype),
      cst_encode_opt_String(raw.inputPartition),
      cst_encode_String(raw.inputPartitionFmt),
      cst_encode_String(raw.outputDir),
      cst_encode_opt_String(raw.prefix),
      cst_encode_String(raw.outputFmt),
      cst_encode_bool(raw.isUncheck)
    ];
  }

  @protected
  PlatformPointer
      cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          SequenceExtraction raw);

  @protected
  PlatformPointer
      cst_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          SequenceRenaming raw);

  @protected
  PlatformPointer
      cst_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          SequenceExtraction raw);

  @protected
  PlatformPointer
      cst_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          SequenceRenaming raw);

  @protected
  PlatformPointer
      cst_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          SequenceExtraction raw);

  @protected
  PlatformPointer
      cst_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          SequenceRenaming raw);

  @protected
  bool cst_encode_bool(bool raw);

  @protected
  double cst_encode_f_64(double raw);

  @protected
  int cst_encode_u_8(int raw);

  @protected
  void cst_encode_unit(void raw);

  @protected
  int cst_encode_usize(int raw);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          SequenceExtraction self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          SequenceRenaming self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          SequenceExtraction self, SseSerializer serializer);

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          SequenceRenaming self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          SequenceExtraction self, SseSerializer serializer);

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          SequenceRenaming self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_alignment_services(
      AlignmentServices self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_alignment_services(
      AlignmentServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_contig_services(
      ContigServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_filtering_services(
      FilteringServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_partition_services(
      PartitionServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_raw_read_services(
      RawReadServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_sequence_removal(
      SequenceRemoval self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_sequence_services(
      SequenceServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_split_alignment_services(
      SplitAlignmentServices self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_usize(int self, SseSerializer serializer);

  @protected
  void sse_encode_contig_services(
      ContigServices self, SseSerializer serializer);

  @protected
  void sse_encode_f_64(double self, SseSerializer serializer);

  @protected
  void sse_encode_filtering_services(
      FilteringServices self, SseSerializer serializer);

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_usize(int? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_list_String(List<String>? self, SseSerializer serializer);

  @protected
  void sse_encode_partition_services(
      PartitionServices self, SseSerializer serializer);

  @protected
  void sse_encode_raw_read_services(
      RawReadServices self, SseSerializer serializer);

  @protected
  void sse_encode_sequence_removal(
      SequenceRemoval self, SseSerializer serializer);

  @protected
  void sse_encode_sequence_services(
      SequenceServices self, SseSerializer serializer);

  @protected
  void sse_encode_split_alignment_services(
      SplitAlignmentServices self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(int self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire extends BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);

  void dart_fn_deliver_output(int call_id, PlatformGeneralizedUint8ListPtr ptr_,
          int rust_vec_len_, int data_len_) =>
      wasmModule.dart_fn_deliver_output(
          call_id, ptr_, rust_vec_len_, data_len_);

  void wire_init_logger(NativePortType port_, String log_dir) =>
      wasmModule.wire_init_logger(port_, log_dir);

  void wire_ContigServices_new(NativePortType port_) =>
      wasmModule.wire_ContigServices_new(port_);

  void wire_ContigServices_summarize(
          NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_ContigServices_summarize(port_, that);

  void wire_RawReadServices_new(NativePortType port_) =>
      wasmModule.wire_RawReadServices_new(port_);

  void wire_RawReadServices_summarize(
          NativePortType port_, List<dynamic> that, String mode) =>
      wasmModule.wire_RawReadServices_summarize(port_, that, mode);

  void wire_AlignmentServices_concat_alignment(
          NativePortType port_,
          List<dynamic> that,
          String out_fname,
          String out_fmt_str,
          String partition_fmt) =>
      wasmModule.wire_AlignmentServices_concat_alignment(
          port_, that, out_fname, out_fmt_str, partition_fmt);

  void wire_AlignmentServices_new(NativePortType port_) =>
      wasmModule.wire_AlignmentServices_new(port_);

  void wire_AlignmentServices_summarize_alignment(NativePortType port_,
          List<dynamic> that, String output_prefix, int interval) =>
      wasmModule.wire_AlignmentServices_summarize_alignment(
          port_, that, output_prefix, interval);

  void wire_FilteringServices_filter_minimal_length(
          NativePortType port_, List<dynamic> that, int length) =>
      wasmModule.wire_FilteringServices_filter_minimal_length(
          port_, that, length);

  void wire_FilteringServices_filter_minimal_taxa(NativePortType port_,
          List<dynamic> that, double percent, int? taxon_count) =>
      wasmModule.wire_FilteringServices_filter_minimal_taxa(
          port_, that, percent, taxon_count);

  void wire_FilteringServices_filter_parsimony_inf_count(
          NativePortType port_, List<dynamic> that, int count) =>
      wasmModule.wire_FilteringServices_filter_parsimony_inf_count(
          port_, that, count);

  void wire_FilteringServices_filter_percent_informative(
          NativePortType port_, List<dynamic> that, double percent) =>
      wasmModule.wire_FilteringServices_filter_percent_informative(
          port_, that, percent);

  void wire_FilteringServices_new(NativePortType port_) =>
      wasmModule.wire_FilteringServices_new(port_);

  void wire_PartitionServices_convert_partition(
          NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_PartitionServices_convert_partition(port_, that);

  void wire_PartitionServices_new(NativePortType port_) =>
      wasmModule.wire_PartitionServices_new(port_);

  void wire_SequenceExtraction_extract(NativePortType port_, Object that) =>
      wasmModule.wire_SequenceExtraction_extract(port_, that);

  void wire_SequenceExtraction_new(NativePortType port_) =>
      wasmModule.wire_SequenceExtraction_new(port_);

  void wire_SequenceRemoval_new(NativePortType port_) =>
      wasmModule.wire_SequenceRemoval_new(port_);

  void wire_SequenceRemoval_remove_sequence(
          NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_SequenceRemoval_remove_sequence(port_, that);

  void wire_SequenceRenaming_new(NativePortType port_) =>
      wasmModule.wire_SequenceRenaming_new(port_);

  void wire_SequenceRenaming_rename_sequence(
          NativePortType port_, Object that) =>
      wasmModule.wire_SequenceRenaming_rename_sequence(port_, that);

  void wire_SequenceServices_convert_sequence(NativePortType port_,
          List<dynamic> that, String output_fmt, bool sort) =>
      wasmModule.wire_SequenceServices_convert_sequence(
          port_, that, output_fmt, sort);

  void wire_SequenceServices_new(NativePortType port_) =>
      wasmModule.wire_SequenceServices_new(port_);

  void wire_SequenceServices_parse_sequence_id(NativePortType port_,
          List<dynamic> that, String output_fname, bool is_map) =>
      wasmModule.wire_SequenceServices_parse_sequence_id(
          port_, that, output_fname, is_map);

  void wire_SequenceServices_translate_sequence(
          NativePortType port_,
          List<dynamic> that,
          String table,
          int reading_frame,
          String output_fmt) =>
      wasmModule.wire_SequenceServices_translate_sequence(
          port_, that, table, reading_frame, output_fmt);

  void wire_SplitAlignmentServices_new(NativePortType port_) =>
      wasmModule.wire_SplitAlignmentServices_new(port_);

  void wire_SplitAlignmentServices_split_alignment(
          NativePortType port_, List<dynamic> that) =>
      wasmModule.wire_SplitAlignmentServices_split_alignment(port_, that);

  void wire_show_dna_uppercase(NativePortType port_) =>
      wasmModule.wire_show_dna_uppercase(port_);

  void rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          dynamic ptr) =>
      wasmModule
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
              ptr);

  void rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          dynamic ptr) =>
      wasmModule
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
              ptr);

  void rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          dynamic ptr) =>
      wasmModule
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
              ptr);

  void rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          dynamic ptr) =>
      wasmModule
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
              ptr);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
class RustLibWasmModule implements WasmModule {
  @override
  external Object /* Promise */ call([String? moduleName]);

  @override
  external RustLibWasmModule bind(dynamic thisArg, String moduleName);

  external void dart_fn_deliver_output(int call_id,
      PlatformGeneralizedUint8ListPtr ptr_, int rust_vec_len_, int data_len_);

  external void wire_init_logger(NativePortType port_, String log_dir);

  external void wire_ContigServices_new(NativePortType port_);

  external void wire_ContigServices_summarize(
      NativePortType port_, List<dynamic> that);

  external void wire_RawReadServices_new(NativePortType port_);

  external void wire_RawReadServices_summarize(
      NativePortType port_, List<dynamic> that, String mode);

  external void wire_AlignmentServices_concat_alignment(
      NativePortType port_,
      List<dynamic> that,
      String out_fname,
      String out_fmt_str,
      String partition_fmt);

  external void wire_AlignmentServices_new(NativePortType port_);

  external void wire_AlignmentServices_summarize_alignment(NativePortType port_,
      List<dynamic> that, String output_prefix, int interval);

  external void wire_FilteringServices_filter_minimal_length(
      NativePortType port_, List<dynamic> that, int length);

  external void wire_FilteringServices_filter_minimal_taxa(NativePortType port_,
      List<dynamic> that, double percent, int? taxon_count);

  external void wire_FilteringServices_filter_parsimony_inf_count(
      NativePortType port_, List<dynamic> that, int count);

  external void wire_FilteringServices_filter_percent_informative(
      NativePortType port_, List<dynamic> that, double percent);

  external void wire_FilteringServices_new(NativePortType port_);

  external void wire_PartitionServices_convert_partition(
      NativePortType port_, List<dynamic> that);

  external void wire_PartitionServices_new(NativePortType port_);

  external void wire_SequenceExtraction_extract(
      NativePortType port_, Object that);

  external void wire_SequenceExtraction_new(NativePortType port_);

  external void wire_SequenceRemoval_new(NativePortType port_);

  external void wire_SequenceRemoval_remove_sequence(
      NativePortType port_, List<dynamic> that);

  external void wire_SequenceRenaming_new(NativePortType port_);

  external void wire_SequenceRenaming_rename_sequence(
      NativePortType port_, Object that);

  external void wire_SequenceServices_convert_sequence(
      NativePortType port_, List<dynamic> that, String output_fmt, bool sort);

  external void wire_SequenceServices_new(NativePortType port_);

  external void wire_SequenceServices_parse_sequence_id(NativePortType port_,
      List<dynamic> that, String output_fname, bool is_map);

  external void wire_SequenceServices_translate_sequence(NativePortType port_,
      List<dynamic> that, String table, int reading_frame, String output_fmt);

  external void wire_SplitAlignmentServices_new(NativePortType port_);

  external void wire_SplitAlignmentServices_split_alignment(
      NativePortType port_, List<dynamic> that);

  external void wire_show_dna_uppercase(NativePortType port_);

  external void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          dynamic ptr);

  external void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceExtraction(
          dynamic ptr);

  external void
      rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          dynamic ptr);

  external void
      rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedrust_asyncRwLockcrateapisequenceSequenceRenaming(
          dynamic ptr);
}
