// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.75.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

import 'dart:ffi' as ffi;

abstract class SegulApi {
  Future<String> showDnaUppercase({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kShowDnaUppercaseConstMeta;

  Future<SequenceServices> newStaticMethodSequenceServices({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNewStaticMethodSequenceServicesConstMeta;

  Future<void> concatAlignmentMethodSequenceServices(
      {required SequenceServices that,
      required String outFname,
      required String outFmtStr,
      required String partitionFmt,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kConcatAlignmentMethodSequenceServicesConstMeta;

  Future<void> convertSequenceMethodSequenceServices(
      {required SequenceServices that,
      required String outputFmt,
      required bool sort,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kConvertSequenceMethodSequenceServicesConstMeta;

  Future<void> summarizeAlignmentMethodSequenceServices(
      {required SequenceServices that,
      required String outputPrefix,
      required int interval,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kSummarizeAlignmentMethodSequenceServicesConstMeta;

  Future<void> translateSequenceMethodSequenceServices(
      {required SequenceServices that,
      required String table,
      required int readingFrame,
      required String outputFmt,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kTranslateSequenceMethodSequenceServicesConstMeta;

  Future<FastqServices> newStaticMethodFastqServices({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNewStaticMethodFastqServicesConstMeta;

  Future<void> summarizeMethodFastqServices(
      {required FastqServices that,
      required String mode,
      required bool lowmem,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSummarizeMethodFastqServicesConstMeta;

  Future<ContigServices> newStaticMethodContigServices({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNewStaticMethodContigServicesConstMeta;

  Future<void> summarizeMethodContigServices(
      {required ContigServices that, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSummarizeMethodContigServicesConstMeta;
}

class ContigServices {
  final SegulApi bridge;
  final String? dirPath;
  final List<String> files;
  final String fileFmt;
  final String outputDir;

  const ContigServices({
    required this.bridge,
    this.dirPath,
    required this.files,
    required this.fileFmt,
    required this.outputDir,
  });

  static Future<ContigServices> newContigServices(
          {required SegulApi bridge, dynamic hint}) =>
      bridge.newStaticMethodContigServices(hint: hint);

  Future<void> summarize({dynamic hint}) =>
      bridge.summarizeMethodContigServices(
        that: this,
      );
}

class FastqServices {
  final SegulApi bridge;
  final String? dirPath;
  final List<String> files;
  final String fileFmt;
  final String outputDir;

  const FastqServices({
    required this.bridge,
    this.dirPath,
    required this.files,
    required this.fileFmt,
    required this.outputDir,
  });

  static Future<FastqServices> newFastqServices(
          {required SegulApi bridge, dynamic hint}) =>
      bridge.newStaticMethodFastqServices(hint: hint);

  Future<void> summarize(
          {required String mode, required bool lowmem, dynamic hint}) =>
      bridge.summarizeMethodFastqServices(
        that: this,
        mode: mode,
        lowmem: lowmem,
      );
}

class SequenceServices {
  final SegulApi bridge;
  final String? dirPath;
  final List<String> files;
  final String fileFmt;
  final String datatype;
  final String outputDir;

  const SequenceServices({
    required this.bridge,
    this.dirPath,
    required this.files,
    required this.fileFmt,
    required this.datatype,
    required this.outputDir,
  });

  static Future<SequenceServices> newSequenceServices(
          {required SegulApi bridge, dynamic hint}) =>
      bridge.newStaticMethodSequenceServices(hint: hint);

  Future<void> concatAlignment(
          {required String outFname,
          required String outFmtStr,
          required String partitionFmt,
          dynamic hint}) =>
      bridge.concatAlignmentMethodSequenceServices(
        that: this,
        outFname: outFname,
        outFmtStr: outFmtStr,
        partitionFmt: partitionFmt,
      );

  Future<void> convertSequence(
          {required String outputFmt, required bool sort, dynamic hint}) =>
      bridge.convertSequenceMethodSequenceServices(
        that: this,
        outputFmt: outputFmt,
        sort: sort,
      );

  Future<void> summarizeAlignment(
          {required String outputPrefix,
          required int interval,
          dynamic hint}) =>
      bridge.summarizeAlignmentMethodSequenceServices(
        that: this,
        outputPrefix: outputPrefix,
        interval: interval,
      );

  Future<void> translateSequence(
          {required String table,
          required int readingFrame,
          required String outputFmt,
          dynamic hint}) =>
      bridge.translateSequenceMethodSequenceServices(
        that: this,
        table: table,
        readingFrame: readingFrame,
        outputFmt: outputFmt,
      );
}

class SegulApiImpl implements SegulApi {
  final SegulApiPlatform _platform;
  factory SegulApiImpl(ExternalLibrary dylib) =>
      SegulApiImpl.raw(SegulApiPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory SegulApiImpl.wasm(FutureOr<WasmModule> module) =>
      SegulApiImpl(module as ExternalLibrary);
  SegulApiImpl.raw(this._platform);
  Future<String> showDnaUppercase({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_show_dna_uppercase(port_),
      parseSuccessData: _wire2api_String,
      constMeta: kShowDnaUppercaseConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kShowDnaUppercaseConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "show_dna_uppercase",
        argNames: [],
      );

  Future<SequenceServices> newStaticMethodSequenceServices({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_new__static_method__SequenceServices(port_),
      parseSuccessData: (d) => _wire2api_sequence_services(d),
      constMeta: kNewStaticMethodSequenceServicesConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kNewStaticMethodSequenceServicesConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "new__static_method__SequenceServices",
            argNames: [],
          );

  Future<void> concatAlignmentMethodSequenceServices(
      {required SequenceServices that,
      required String outFname,
      required String outFmtStr,
      required String partitionFmt,
      dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_sequence_services(that);
    var arg1 = _platform.api2wire_String(outFname);
    var arg2 = _platform.api2wire_String(outFmtStr);
    var arg3 = _platform.api2wire_String(partitionFmt);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_concat_alignment__method__SequenceServices(
              port_, arg0, arg1, arg2, arg3),
      parseSuccessData: _wire2api_unit,
      constMeta: kConcatAlignmentMethodSequenceServicesConstMeta,
      argValues: [that, outFname, outFmtStr, partitionFmt],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kConcatAlignmentMethodSequenceServicesConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "concat_alignment__method__SequenceServices",
            argNames: ["that", "outFname", "outFmtStr", "partitionFmt"],
          );

  Future<void> convertSequenceMethodSequenceServices(
      {required SequenceServices that,
      required String outputFmt,
      required bool sort,
      dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_sequence_services(that);
    var arg1 = _platform.api2wire_String(outputFmt);
    var arg2 = sort;
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_convert_sequence__method__SequenceServices(
              port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_unit,
      constMeta: kConvertSequenceMethodSequenceServicesConstMeta,
      argValues: [that, outputFmt, sort],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kConvertSequenceMethodSequenceServicesConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "convert_sequence__method__SequenceServices",
            argNames: ["that", "outputFmt", "sort"],
          );

  Future<void> summarizeAlignmentMethodSequenceServices(
      {required SequenceServices that,
      required String outputPrefix,
      required int interval,
      dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_sequence_services(that);
    var arg1 = _platform.api2wire_String(outputPrefix);
    var arg2 = api2wire_usize(interval);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_summarize_alignment__method__SequenceServices(
              port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_unit,
      constMeta: kSummarizeAlignmentMethodSequenceServicesConstMeta,
      argValues: [that, outputPrefix, interval],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kSummarizeAlignmentMethodSequenceServicesConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "summarize_alignment__method__SequenceServices",
            argNames: ["that", "outputPrefix", "interval"],
          );

  Future<void> translateSequenceMethodSequenceServices(
      {required SequenceServices that,
      required String table,
      required int readingFrame,
      required String outputFmt,
      dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_sequence_services(that);
    var arg1 = _platform.api2wire_String(table);
    var arg2 = api2wire_usize(readingFrame);
    var arg3 = _platform.api2wire_String(outputFmt);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_translate_sequence__method__SequenceServices(
              port_, arg0, arg1, arg2, arg3),
      parseSuccessData: _wire2api_unit,
      constMeta: kTranslateSequenceMethodSequenceServicesConstMeta,
      argValues: [that, table, readingFrame, outputFmt],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kTranslateSequenceMethodSequenceServicesConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "translate_sequence__method__SequenceServices",
            argNames: ["that", "table", "readingFrame", "outputFmt"],
          );

  Future<FastqServices> newStaticMethodFastqServices({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_new__static_method__FastqServices(port_),
      parseSuccessData: (d) => _wire2api_fastq_services(d),
      constMeta: kNewStaticMethodFastqServicesConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kNewStaticMethodFastqServicesConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "new__static_method__FastqServices",
        argNames: [],
      );

  Future<void> summarizeMethodFastqServices(
      {required FastqServices that,
      required String mode,
      required bool lowmem,
      dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_fastq_services(that);
    var arg1 = _platform.api2wire_String(mode);
    var arg2 = lowmem;
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_summarize__method__FastqServices(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_unit,
      constMeta: kSummarizeMethodFastqServicesConstMeta,
      argValues: [that, mode, lowmem],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSummarizeMethodFastqServicesConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "summarize__method__FastqServices",
        argNames: ["that", "mode", "lowmem"],
      );

  Future<ContigServices> newStaticMethodContigServices({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_new__static_method__ContigServices(port_),
      parseSuccessData: (d) => _wire2api_contig_services(d),
      constMeta: kNewStaticMethodContigServicesConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kNewStaticMethodContigServicesConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "new__static_method__ContigServices",
        argNames: [],
      );

  Future<void> summarizeMethodContigServices(
      {required ContigServices that, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_contig_services(that);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_summarize__method__ContigServices(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kSummarizeMethodContigServicesConstMeta,
      argValues: [that],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kSummarizeMethodContigServicesConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "summarize__method__ContigServices",
        argNames: ["that"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  List<String> _wire2api_StringList(dynamic raw) {
    return (raw as List<dynamic>).cast<String>();
  }

  ContigServices _wire2api_contig_services(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 4)
      throw Exception('unexpected arr length: expect 4 but see ${arr.length}');
    return ContigServices(
      bridge: this,
      dirPath: _wire2api_opt_String(arr[0]),
      files: _wire2api_StringList(arr[1]),
      fileFmt: _wire2api_String(arr[2]),
      outputDir: _wire2api_String(arr[3]),
    );
  }

  FastqServices _wire2api_fastq_services(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 4)
      throw Exception('unexpected arr length: expect 4 but see ${arr.length}');
    return FastqServices(
      bridge: this,
      dirPath: _wire2api_opt_String(arr[0]),
      files: _wire2api_StringList(arr[1]),
      fileFmt: _wire2api_String(arr[2]),
      outputDir: _wire2api_String(arr[3]),
    );
  }

  String? _wire2api_opt_String(dynamic raw) {
    return raw == null ? null : _wire2api_String(raw);
  }

  SequenceServices _wire2api_sequence_services(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 5)
      throw Exception('unexpected arr length: expect 5 but see ${arr.length}');
    return SequenceServices(
      bridge: this,
      dirPath: _wire2api_opt_String(arr[0]),
      files: _wire2api_StringList(arr[1]),
      fileFmt: _wire2api_String(arr[2]),
      datatype: _wire2api_String(arr[3]),
      outputDir: _wire2api_String(arr[4]),
    );
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
bool api2wire_bool(bool raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

@protected
int api2wire_usize(int raw) {
  return raw;
}
// Section: finalizer

class SegulApiPlatform extends FlutterRustBridgeBase<SegulApiWire> {
  SegulApiPlatform(ffi.DynamicLibrary dylib) : super(SegulApiWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_StringList> api2wire_StringList(List<String> raw) {
    final ans = inner.new_StringList_0(raw.length);
    for (var i = 0; i < raw.length; i++) {
      ans.ref.ptr[i] = api2wire_String(raw[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_ContigServices> api2wire_box_autoadd_contig_services(
      ContigServices raw) {
    final ptr = inner.new_box_autoadd_contig_services_0();
    _api_fill_to_wire_contig_services(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_FastqServices> api2wire_box_autoadd_fastq_services(
      FastqServices raw) {
    final ptr = inner.new_box_autoadd_fastq_services_0();
    _api_fill_to_wire_fastq_services(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_SequenceServices> api2wire_box_autoadd_sequence_services(
      SequenceServices raw) {
    final ptr = inner.new_box_autoadd_sequence_services_0();
    _api_fill_to_wire_sequence_services(raw, ptr.ref);
    return ptr;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : api2wire_String(raw);
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

// Section: finalizer

// Section: api_fill_to_wire

  void _api_fill_to_wire_box_autoadd_contig_services(
      ContigServices apiObj, ffi.Pointer<wire_ContigServices> wireObj) {
    _api_fill_to_wire_contig_services(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_fastq_services(
      FastqServices apiObj, ffi.Pointer<wire_FastqServices> wireObj) {
    _api_fill_to_wire_fastq_services(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_box_autoadd_sequence_services(
      SequenceServices apiObj, ffi.Pointer<wire_SequenceServices> wireObj) {
    _api_fill_to_wire_sequence_services(apiObj, wireObj.ref);
  }

  void _api_fill_to_wire_contig_services(
      ContigServices apiObj, wire_ContigServices wireObj) {
    wireObj.dir_path = api2wire_opt_String(apiObj.dirPath);
    wireObj.files = api2wire_StringList(apiObj.files);
    wireObj.file_fmt = api2wire_String(apiObj.fileFmt);
    wireObj.output_dir = api2wire_String(apiObj.outputDir);
  }

  void _api_fill_to_wire_fastq_services(
      FastqServices apiObj, wire_FastqServices wireObj) {
    wireObj.dir_path = api2wire_opt_String(apiObj.dirPath);
    wireObj.files = api2wire_StringList(apiObj.files);
    wireObj.file_fmt = api2wire_String(apiObj.fileFmt);
    wireObj.output_dir = api2wire_String(apiObj.outputDir);
  }

  void _api_fill_to_wire_sequence_services(
      SequenceServices apiObj, wire_SequenceServices wireObj) {
    wireObj.dir_path = api2wire_opt_String(apiObj.dirPath);
    wireObj.files = api2wire_StringList(apiObj.files);
    wireObj.file_fmt = api2wire_String(apiObj.fileFmt);
    wireObj.datatype = api2wire_String(apiObj.datatype);
    wireObj.output_dir = api2wire_String(apiObj.outputDir);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class SegulApiWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  SegulApiWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  SegulApiWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_show_dna_uppercase(
    int port_,
  ) {
    return _wire_show_dna_uppercase(
      port_,
    );
  }

  late final _wire_show_dna_uppercasePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_show_dna_uppercase');
  late final _wire_show_dna_uppercase =
      _wire_show_dna_uppercasePtr.asFunction<void Function(int)>();

  void wire_new__static_method__SequenceServices(
    int port_,
  ) {
    return _wire_new__static_method__SequenceServices(
      port_,
    );
  }

  late final _wire_new__static_method__SequenceServicesPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_new__static_method__SequenceServices');
  late final _wire_new__static_method__SequenceServices =
      _wire_new__static_method__SequenceServicesPtr
          .asFunction<void Function(int)>();

  void wire_concat_alignment__method__SequenceServices(
    int port_,
    ffi.Pointer<wire_SequenceServices> that,
    ffi.Pointer<wire_uint_8_list> out_fname,
    ffi.Pointer<wire_uint_8_list> out_fmt_str,
    ffi.Pointer<wire_uint_8_list> partition_fmt,
  ) {
    return _wire_concat_alignment__method__SequenceServices(
      port_,
      that,
      out_fname,
      out_fmt_str,
      partition_fmt,
    );
  }

  late final _wire_concat_alignment__method__SequenceServicesPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64,
                  ffi.Pointer<wire_SequenceServices>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_concat_alignment__method__SequenceServices');
  late final _wire_concat_alignment__method__SequenceServices =
      _wire_concat_alignment__method__SequenceServicesPtr.asFunction<
          void Function(
              int,
              ffi.Pointer<wire_SequenceServices>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_convert_sequence__method__SequenceServices(
    int port_,
    ffi.Pointer<wire_SequenceServices> that,
    ffi.Pointer<wire_uint_8_list> output_fmt,
    bool sort,
  ) {
    return _wire_convert_sequence__method__SequenceServices(
      port_,
      that,
      output_fmt,
      sort,
    );
  }

  late final _wire_convert_sequence__method__SequenceServicesPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_SequenceServices>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Bool)>>('wire_convert_sequence__method__SequenceServices');
  late final _wire_convert_sequence__method__SequenceServices =
      _wire_convert_sequence__method__SequenceServicesPtr.asFunction<
          void Function(int, ffi.Pointer<wire_SequenceServices>,
              ffi.Pointer<wire_uint_8_list>, bool)>();

  void wire_summarize_alignment__method__SequenceServices(
    int port_,
    ffi.Pointer<wire_SequenceServices> that,
    ffi.Pointer<wire_uint_8_list> output_prefix,
    int interval,
  ) {
    return _wire_summarize_alignment__method__SequenceServices(
      port_,
      that,
      output_prefix,
      interval,
    );
  }

  late final _wire_summarize_alignment__method__SequenceServicesPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_SequenceServices>,
                  ffi.Pointer<wire_uint_8_list>, ffi.UintPtr)>>(
      'wire_summarize_alignment__method__SequenceServices');
  late final _wire_summarize_alignment__method__SequenceServices =
      _wire_summarize_alignment__method__SequenceServicesPtr.asFunction<
          void Function(int, ffi.Pointer<wire_SequenceServices>,
              ffi.Pointer<wire_uint_8_list>, int)>();

  void wire_translate_sequence__method__SequenceServices(
    int port_,
    ffi.Pointer<wire_SequenceServices> that,
    ffi.Pointer<wire_uint_8_list> table,
    int reading_frame,
    ffi.Pointer<wire_uint_8_list> output_fmt,
  ) {
    return _wire_translate_sequence__method__SequenceServices(
      port_,
      that,
      table,
      reading_frame,
      output_fmt,
    );
  }

  late final _wire_translate_sequence__method__SequenceServicesPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64,
                  ffi.Pointer<wire_SequenceServices>,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.UintPtr,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_translate_sequence__method__SequenceServices');
  late final _wire_translate_sequence__method__SequenceServices =
      _wire_translate_sequence__method__SequenceServicesPtr.asFunction<
          void Function(
              int,
              ffi.Pointer<wire_SequenceServices>,
              ffi.Pointer<wire_uint_8_list>,
              int,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_new__static_method__FastqServices(
    int port_,
  ) {
    return _wire_new__static_method__FastqServices(
      port_,
    );
  }

  late final _wire_new__static_method__FastqServicesPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_new__static_method__FastqServices');
  late final _wire_new__static_method__FastqServices =
      _wire_new__static_method__FastqServicesPtr
          .asFunction<void Function(int)>();

  void wire_summarize__method__FastqServices(
    int port_,
    ffi.Pointer<wire_FastqServices> that,
    ffi.Pointer<wire_uint_8_list> mode,
    bool lowmem,
  ) {
    return _wire_summarize__method__FastqServices(
      port_,
      that,
      mode,
      lowmem,
    );
  }

  late final _wire_summarize__method__FastqServicesPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Pointer<wire_FastqServices>,
              ffi.Pointer<wire_uint_8_list>,
              ffi.Bool)>>('wire_summarize__method__FastqServices');
  late final _wire_summarize__method__FastqServices =
      _wire_summarize__method__FastqServicesPtr.asFunction<
          void Function(int, ffi.Pointer<wire_FastqServices>,
              ffi.Pointer<wire_uint_8_list>, bool)>();

  void wire_new__static_method__ContigServices(
    int port_,
  ) {
    return _wire_new__static_method__ContigServices(
      port_,
    );
  }

  late final _wire_new__static_method__ContigServicesPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_new__static_method__ContigServices');
  late final _wire_new__static_method__ContigServices =
      _wire_new__static_method__ContigServicesPtr
          .asFunction<void Function(int)>();

  void wire_summarize__method__ContigServices(
    int port_,
    ffi.Pointer<wire_ContigServices> that,
  ) {
    return _wire_summarize__method__ContigServices(
      port_,
      that,
    );
  }

  late final _wire_summarize__method__ContigServicesPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_ContigServices>)>>(
      'wire_summarize__method__ContigServices');
  late final _wire_summarize__method__ContigServices =
      _wire_summarize__method__ContigServicesPtr
          .asFunction<void Function(int, ffi.Pointer<wire_ContigServices>)>();

  ffi.Pointer<wire_StringList> new_StringList_0(
    int len,
  ) {
    return _new_StringList_0(
      len,
    );
  }

  late final _new_StringList_0Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_StringList> Function(ffi.Int32)>>(
      'new_StringList_0');
  late final _new_StringList_0 = _new_StringList_0Ptr
      .asFunction<ffi.Pointer<wire_StringList> Function(int)>();

  ffi.Pointer<wire_ContigServices> new_box_autoadd_contig_services_0() {
    return _new_box_autoadd_contig_services_0();
  }

  late final _new_box_autoadd_contig_services_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_ContigServices> Function()>>(
          'new_box_autoadd_contig_services_0');
  late final _new_box_autoadd_contig_services_0 =
      _new_box_autoadd_contig_services_0Ptr
          .asFunction<ffi.Pointer<wire_ContigServices> Function()>();

  ffi.Pointer<wire_FastqServices> new_box_autoadd_fastq_services_0() {
    return _new_box_autoadd_fastq_services_0();
  }

  late final _new_box_autoadd_fastq_services_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_FastqServices> Function()>>(
          'new_box_autoadd_fastq_services_0');
  late final _new_box_autoadd_fastq_services_0 =
      _new_box_autoadd_fastq_services_0Ptr
          .asFunction<ffi.Pointer<wire_FastqServices> Function()>();

  ffi.Pointer<wire_SequenceServices> new_box_autoadd_sequence_services_0() {
    return _new_box_autoadd_sequence_services_0();
  }

  late final _new_box_autoadd_sequence_services_0Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_SequenceServices> Function()>>(
      'new_box_autoadd_sequence_services_0');
  late final _new_box_autoadd_sequence_services_0 =
      _new_box_autoadd_sequence_services_0Ptr
          .asFunction<ffi.Pointer<wire_SequenceServices> Function()>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

class _Dart_Handle extends ffi.Opaque {}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_StringList extends ffi.Struct {
  external ffi.Pointer<ffi.Pointer<wire_uint_8_list>> ptr;

  @ffi.Int32()
  external int len;
}

class wire_SequenceServices extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> dir_path;

  external ffi.Pointer<wire_StringList> files;

  external ffi.Pointer<wire_uint_8_list> file_fmt;

  external ffi.Pointer<wire_uint_8_list> datatype;

  external ffi.Pointer<wire_uint_8_list> output_dir;
}

class wire_FastqServices extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> dir_path;

  external ffi.Pointer<wire_StringList> files;

  external ffi.Pointer<wire_uint_8_list> file_fmt;

  external ffi.Pointer<wire_uint_8_list> output_dir;
}

class wire_ContigServices extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> dir_path;

  external ffi.Pointer<wire_StringList> files;

  external ffi.Pointer<wire_uint_8_list> file_fmt;

  external ffi.Pointer<wire_uint_8_list> output_dir;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<
        ffi.Bool Function(DartPort port_id, ffi.Pointer<ffi.Void> message)>>;
typedef DartPort = ffi.Int64;
