import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:segui/providers/io.dart';
import 'package:segui/screens/shared/buttons.dart';
import 'package:segui/services/tasks/sequences.dart';
import 'package:segui/services/controllers.dart';
import 'package:segui/screens/shared/forms.dart';
import 'package:segui/screens/shared/io.dart';
import 'package:segui/services/io.dart';

const SupportedTask task = SupportedTask.sequenceUniqueId;

class IDExtractionPage extends ConsumerStatefulWidget {
  const IDExtractionPage({super.key});

  @override
  IDExtractionPageState createState() => IDExtractionPageState();
}

class IDExtractionPageState extends ConsumerState<IDExtractionPage> {
  final IOController _ctr = IOController.empty();
  bool _isMap = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CardTitle(title: 'Input'),
        SharedSequenceInputForm(
          ctr: _ctr,
          xTypeGroup: sequenceTypeGroup,
          isDatatypeEnabled: false,
        ),
        const SizedBox(height: 16),
        const CardTitle(title: 'Output'),
        FormCard(children: [
          SharedOutputDirField(
            ctr: _ctr.outputDir,
          ),
          SharedTextField(
            controller: _ctr.outputController,
            label: 'Prefix',
            hint: 'Enter output filename',
          ),
          SwitchForm(
              label: 'Map sequence ID',
              value: _isMap,
              onPressed: (value) {
                setState(() {
                  _isMap = value;
                });
              }),
        ]),
        const SizedBox(height: 16),
        Center(
          child: ExecutionButton(
            label: 'Parse IDs',
            isRunning: _ctr.isRunning,
            isSuccess: _ctr.isSuccess,
            controller: _ctr,
            onNewRun: _setNewRun,
            onExecuted: ref.read(fileInputProvider).when(
                  data: (value) {
                    if (value.isEmpty) {
                      return null;
                    } else {
                      return _ctr.isRunning || !_ctr.isValid()
                          ? null
                          : () async {
                              await _execute(value);
                            };
                    }
                  },
                  loading: () => null,
                  error: (e, _) => null,
                ),
            onShared: ref.read(fileOutputProvider).when(
                  data: (value) {
                    if (value.directory == null) {
                      return null;
                    } else {
                      return _ctr.isRunning || !_ctr.isValid()
                          ? null
                          : () async {
                              await _shareOutput(
                                value.directory!,
                                value.newFiles,
                              );
                            };
                    }
                  },
                  loading: () => null,
                  error: (e, _) => null,
                ),
          ),
        )
      ],
    );
  }

  Future<void> _execute(List<SegulInputFile> inputFiles) async {
    updateOutputDir(ref, _ctr.outputDir.text, task);
    return ref.read(fileOutputProvider).when(
          data: (value) async {
            if (value.directory == null) {
              return;
            } else {
              await _extractId(inputFiles, value.directory!);
            }
          },
          loading: () => null,
          error: (e, s) {
            _showError(e.toString());
          },
        );
  }

  Future<void> _extractId(
      List<SegulInputFile> inputFiles, Directory outputDir) async {
    try {
      _setRunning();
      await SequenceIdExtractionRunner(
        inputFiles: inputFiles,
        inputFmt: _ctr.inputFormatController!,
        datatype: _ctr.dataTypeController,
        outputDir: outputDir,
        prefix: _ctr.outputController.text,
        isMap: _isMap,
      ).run();
      ref.read(fileOutputProvider.notifier).refresh();
      _setSuccess();
    } catch (e) {
      _showError(e.toString());
    }
  }

  Future<void> _shareOutput(
      Directory outputDir, List<XFile> newOutputFiles) async {
    try {
      IOServices io = IOServices();
      ArchiveRunner archive = ArchiveRunner(
        outputDir: outputDir,
        outputFiles: newOutputFiles,
      );
      XFile outputPath = await archive.write();

      if (mounted) {
        await io.shareFile(context, outputPath);
      }
    } catch (e) {
      _showError(e.toString());
    }
  }

  void _setRunning() {
    setState(() {
      _ctr.isRunning = true;
    });
  }

  void _setNewRun() {
    setState(() {
      _ctr.reset();
      _ctr.isSuccess = false;
      ref.invalidate(fileInputProvider);
      ref.invalidate(fileOutputProvider);
    });
  }

  void _setSuccess() {
    setState(() {
      _ctr.isRunning = false;
      _ctr.isSuccess = true;
      ScaffoldMessenger.of(context).showSnackBar(
        showSharedSnackBar(
          context,
          'ID extraction successful! 🎉 \n'
          'Output Path: ${showOutputDir(_ctr.outputDir.text)}',
        ),
      );
    });
  }

  void _showError(String error) {
    setState(() {
      _ctr.isRunning = false;
      ScaffoldMessenger.of(context).showSnackBar(
        showSharedSnackBar(context, error),
      );
    });
  }
}
