import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:segui/providers/io.dart';
import 'package:segui/screens/shared/buttons.dart';
import 'package:segui/screens/shared/forms.dart';
import 'package:segui/screens/shared/info.dart';
import 'package:segui/screens/shared/io.dart';
import 'package:segui/services/controllers.dart';
import 'package:segui/services/io.dart';
import 'package:segui/services/tasks/alignment.dart';
import 'package:segui/services/types.dart';

const SupportedTask task = SupportedTask.alignmentFiltering;

const Map<FilteringOptions, InputDecoration> filteringOptionsInput = {
  FilteringOptions.minimalTaxa: InputDecoration(
    labelText: 'Percentage value',
    hintText: 'E.g., 0.5, .2, 1.0, etc.',
  ),
  FilteringOptions.minimalLength: InputDecoration(
    labelText: 'Minimal length',
    hintText: 'E.g., 800, 1200, etc.',
  ),
  FilteringOptions.parsimonyInf: InputDecoration(
    labelText: 'Minimal counts',
    hintText: 'E.g., 1, 20, etc.',
  ),
  FilteringOptions.percentParsimonyInf: InputDecoration(
    labelText: 'Percentage value',
    hintText: 'E.g., 0.5, .2, 1.0, etc.',
  ),
};

class AlignmentFilteringPage extends ConsumerStatefulWidget {
  const AlignmentFilteringPage({super.key});

  @override
  AlignmentFilteringPageState createState() => AlignmentFilteringPageState();
}

class AlignmentFilteringPageState extends ConsumerState<AlignmentFilteringPage>
    with AutomaticKeepAliveClientMixin {
  final IOController _ctr = IOController.empty();
  final TextEditingController _valueController = TextEditingController();
  final TextEditingController _prefixController = TextEditingController();
  String? _outputPartitionFmtController;
  FilteringOptions _filteringOptionsController = FilteringOptions.minimalTaxa;
  bool _isConcatenated = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    _ctr.dispose();
    _valueController.dispose();
    _prefixController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SharedInfoForm(
          description: 'Filter alignment by minimal alignment length, '
              'data matrix completeness, '
              'count of parsimony informative sites, '
              'and percentage of parsimony informative sites. ',
          isShowingInfo: _ctr.isShowingInfo,
          onClosed: () {
            setState(() {
              _ctr.isShowingInfo = false;
            });
          },
          onExpanded: () {
            setState(() {
              _ctr.isShowingInfo = true;
            });
          },
        ),
        const CardTitle(title: 'Input'),
        SharedSequenceInputForm(
          ctr: _ctr,
          xTypeGroup: sequenceTypeGroup,
          allowMultiple: true,
          task: task,
        ),
        const SizedBox(height: 16),
        const CardTitle(title: 'Filtering parameters'),
        FormCard(
          children: [
            DropdownButtonFormField(
              value: _filteringOptionsController,
              decoration: const InputDecoration(
                labelText: 'Select method',
              ),
              isExpanded: true,
              items: filteringOptions.entries
                  .map((e) => DropdownMenuItem(
                        value: e.key,
                        child: Text(e.value),
                      ))
                  .toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _filteringOptionsController = value;
                  });
                }
              },
            ),
            TextField(
              controller: _valueController,
              decoration: filteringOptionsInput[_filteringOptionsController],
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _isValid;
                });
              },
            ),
          ],
        ),
        const SizedBox(height: 16),
        const CardTitle(title: 'Output'),
        FormCard(
          children: [
            SharedOutputDirField(
              ctr: _ctr.outputDir,
            ),
            SwitchForm(
              label: 'Concatenate output',
              value: _isConcatenated,
              onPressed: (value) {
                setState(() {
                  _isConcatenated = value;
                });
              },
            ),
            Visibility(
              visible: _isConcatenated,
              child: SharedTextField(
                controller: _prefixController,
                label: 'Output prefix',
                hint: 'E.g., concatenated',
              ),
            ),
            Visibility(
              visible: _isConcatenated,
              child: SharedDropdownField(
                value: _ctr.outputFormatController,
                label: 'Output format',
                items: outputFormat,
                onChanged: (String? value) {
                  setState(() {
                    if (value != null) {
                      _ctr.outputFormatController = value;
                    }
                  });
                },
              ),
            ),
            Visibility(
              visible: _isConcatenated,
              child: SharedDropdownField(
                value: _outputPartitionFmtController,
                label: 'Partition format',
                items: partitionFormat,
                onChanged: (String? value) {
                  setState(() {
                    if (value != null) {
                      _outputPartitionFmtController = value;
                    }
                  });
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Center(
          child: ref.watch(fileInputProvider).when(
              data: (value) {
                return ExecutionButton(
                  label: 'Filter',
                  isRunning: _ctr.isRunning,
                  isSuccess: _ctr.isSuccess,
                  controller: _ctr,
                  onNewRun: _setNewRun,
                  onExecuted: value.isEmpty || !_isValid
                      ? null
                      : () async {
                          _setRunning();
                          await _execute(value);
                        },
                  onShared: ref.read(fileOutputProvider).when(
                        data: (value) {
                          return () async {
                            _setRunning();
                            await _shareOutput(
                              value.directory!,
                              value.newFiles,
                            );
                          };
                        },
                        loading: () => null,
                        error: (e, _) => null,
                      ),
                );
              },
              loading: () => null,
              error: (e, _) => null),
        ),
      ],
    );
  }

  bool get _isValid {
    bool filteringOptionsValid = _valueController.text.isNotEmpty;
    if (_isConcatenated) {
      filteringOptionsValid = filteringOptionsValid &&
          _prefixController.text.isNotEmpty &&
          _outputPartitionFmtController != null;
    }
    return _ctr.isValid && filteringOptionsValid;
  }

  Future<void> _execute(List<SegulInputFile> inputFiles) async {
    return await ref.read(fileOutputProvider).when(
        data: (value) async {
          if (value.directory == null) {
            return _showError('Output directory is not selected.');
          } else {
            await _filter(inputFiles, value.directory!);
          }
        },
        loading: () => null,
        error: (e, _) => _showError(e.toString()));
  }

  Future<void> _filter(
      List<SegulInputFile> inputFiles, Directory outputDir) async {
    try {
      _setRunning();
      await FilteringRunner(
        inputFiles: inputFiles,
        inputFormat: _ctr.inputFormatController!,
        datatype: _ctr.dataTypeController,
        outputDir: outputDir,
        isConcatenated: _isConcatenated,
        filteringOptions: _filteringOptionsController,
        paramValue: _valueController.text,
        outputPrefix: _prefixController.text,
        outputFormat: _ctr.outputFormatController!,
        partitionFormat: _outputPartitionFmtController,
      ).run();
      _setSuccess(outputDir);
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

  void _showError(String error) {
    setState(() {
      _ctr.isRunning = false;
      ScaffoldMessenger.of(context).showSnackBar(
        showSharedSnackBar(context, error),
      );
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

  void _setRunning() {
    setState(() {
      _ctr.isRunning = true;
    });
  }

  Future<void> _setSuccess(Directory directory) async {
    ref.read(fileOutputProvider.notifier).refresh(isRecursive: false);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        showSharedSnackBar(
            context,
            'Alignment filtering successful! 🎉 \n'
            'Output path: ${showOutputDir(directory)}'),
      );
    }
    setState(() {
      _ctr.isRunning = false;
      _ctr.isSuccess = true;
    });
  }
}