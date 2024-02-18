// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.24.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

class ContigServices {
  final List<String> files;
  final String fileFmt;
  final String outputDir;

  const ContigServices({
    required this.files,
    required this.fileFmt,
    required this.outputDir,
  });

  static Future<ContigServices> newContigServices({dynamic hint}) =>
      RustLib.instance.api.contigServicesNew(hint: hint);

  Future<void> summarize({String? prefix, dynamic hint}) =>
      RustLib.instance.api.contigServicesSummarize(
        that: this,
        prefix: prefix,
      );

  @override
  int get hashCode => files.hashCode ^ fileFmt.hashCode ^ outputDir.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContigServices &&
          runtimeType == other.runtimeType &&
          files == other.files &&
          fileFmt == other.fileFmt &&
          outputDir == other.outputDir;
}
