import 'dart:io';
import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:segui/providers/io.dart';
import 'package:segui/services/controllers.dart';
import 'package:segui/screens/shared/forms.dart';
import 'package:segui/services/io.dart';
import 'package:file_picker/file_picker.dart';

class SelectDirField extends ConsumerWidget {
  const SelectDirField({
    super.key,
    required this.label,
    required this.dirPath,
  });

  final String label;
  final TextEditingController dirPath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: Text(
            dirPath.text.isEmpty ? '$label: ' : dirPath.text,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 8),
        IconButton(
          icon: dirPath.text.isEmpty
              ? const Icon(Icons.folder)
              : const Icon(Icons.folder_open),
          onPressed: () async {
            final dir = await _selectDir();
            if (dir != null) {
              dirPath.text = dir.path;
              ref.read(fileOutputProvider.notifier).addFiles(dir);
            }
          },
        ),
      ],
    );
  }

  Future<Directory?> _selectDir() async {
    final result = await FilePicker.platform.getDirectoryPath();
    if (result != null) {
      if (kDebugMode) {
        print('Selected directory: $result');
      }
      return Directory(result);
    }
    return null;
  }
}

class InputSelectorForm extends StatelessWidget {
  const InputSelectorForm({
    super.key,
    required this.ctr,
    required this.allowMultiple,
    required this.xTypeGroup,
    required this.hasSecondaryPicker,
  });

  final IOController ctr;
  final bool allowMultiple;
  final XTypeGroup xTypeGroup;
  final bool hasSecondaryPicker;

  @override
  Widget build(BuildContext context) {
    return SharedFilePicker(
      label: 'Select input files',
      allowMultiple: allowMultiple,
      xTypeGroup: xTypeGroup,
      hasSecondaryPicker: hasSecondaryPicker,
    );
  }
}

class SharedFilePicker extends ConsumerStatefulWidget {
  const SharedFilePicker({
    super.key,
    required this.label,
    required this.allowMultiple,
    required this.xTypeGroup,
    required this.hasSecondaryPicker,
  });

  final String label;
  final bool allowMultiple;
  final XTypeGroup xTypeGroup;
  final bool hasSecondaryPicker;

  @override
  SharedMultiFilePickerState createState() => SharedMultiFilePickerState();
}

class SharedMultiFilePickerState extends ConsumerState<SharedFilePicker> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final type = matchTypeByXTypeGroup(widget.xTypeGroup);
    return ref.watch(fileInputProvider).when(
          data: (data) {
            final isAddNew = data.where((e) => e.type == type).toList().isEmpty;
            return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  data.isEmpty
                      ? Text(
                          '${widget.label}: ',
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                      : RichText(
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            const WidgetSpan(
                              alignment: PlaceholderAlignment.middle,
                              child: Icon(Icons.folder_open),
                            ),
                            const WidgetSpan(
                              child: SizedBox(width: 4),
                            ),
                            TextSpan(
                              text:
                                  '${IOServices().countFiles(data, type)} selected files',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ])),
                  const SizedBox(width: 8),
                  _isLoading
                      ? const SizedBox(
                          height: 8,
                          width: 8,
                          child: CircularProgressIndicator(),
                        )
                      : IconButton(
                          icon: isAddNew
                              ? const Icon(Icons.folder)
                              : const Icon(Icons.add_rounded),
                          onPressed: !isAddNew && !widget.allowMultiple
                              ? null
                              : () async {
                                  setState(() {
                                    _isLoading = true;
                                  });
                                  try {
                                    await _selectFiles(
                                        isAddNew && !widget.hasSecondaryPicker);
                                  } catch (e) {
                                    if (mounted) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        showSharedSnackBar(
                                            context, e.toString()),
                                      );
                                    }
                                  }
                                  setState(() {
                                    _isLoading = false;
                                  });
                                },
                        ),
                ]);
          },
          loading: () => const SizedBox.shrink(),
          error: (err, stack) => Text(err.toString()),
        );
  }

  Future<void> _selectFiles(bool isAddNew) async {
    List<SegulInputFile> result = await FileSelectionServices(ref)
        .selectFiles(widget.xTypeGroup, widget.allowMultiple);
    final notifier = ref.read(fileInputProvider.notifier);
    if (result.isNotEmpty) {
      isAddNew ? notifier.addFiles(result) : notifier.addMoreFiles(result);
    }
  }
}

class SharedOutputDirField extends StatelessWidget {
  const SharedOutputDirField({
    super.key,
    required this.ctr,
  });

  final TextEditingController ctr;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS || Platform.isAndroid
        ? SharedTextField(
            label: 'Directory name',
            hint: 'Enter output directory name',
            controller: ctr,
          )
        : SelectDirField(
            label: 'Select output directory',
            dirPath: ctr,
          );
  }
}
