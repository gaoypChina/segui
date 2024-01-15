// ignore: unused_import
import 'dart:isolate';

import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:segui/screens/shared/controllers.dart';
import 'package:segui/services/io.dart';
import 'package:segui/services/types.dart';

class SharedSequenceInputForm extends StatefulWidget {
  const SharedSequenceInputForm({
    super.key,
    required this.ctr,
    required this.xTypeGroup,
    this.isDatatypeEnabled = true,
  });

  final IOController ctr;
  final List<XTypeGroup> xTypeGroup;
  final bool isDatatypeEnabled;

  @override
  State<SharedSequenceInputForm> createState() =>
      _SharedSequenceInputFormState();
}

class _SharedSequenceInputFormState extends State<SharedSequenceInputForm> {
  @override
  Widget build(BuildContext context) {
    return FormCard(
      children: [
        InputSelectorForm(
          ctr: widget.ctr,
          xTypeGroup: widget.xTypeGroup,
          onFilePressed: (value) {
            setState(() {
              widget.ctr.files = value;
            });
          },
        ),
        SharedDropdownField(
          value: widget.ctr.inputFormatController,
          label: 'Format',
          items: inputFormat,
          onChanged: (String? value) {
            setState(() {
              widget.ctr.inputFormatController = value;
            });
          },
        ),
        SharedDropdownField(
          value: widget.ctr.dataTypeController,
          label: 'Data Type',
          items: dataType,
          enabled: widget.isDatatypeEnabled,
          onChanged: (String? value) {
            setState(() {
              if (value != null) {
                widget.ctr.dataTypeController = value;
              }
            });
          },
        ),
      ],
    );
  }
}

class SharedInfoForm extends StatelessWidget {
  const SharedInfoForm({
    super.key,
    required this.text,
    required this.onClosed,
    required this.onExpanded,
    required this.isShowingInfo,
  });

  final VoidCallback onExpanded;
  final VoidCallback onClosed;
  final String? text;
  final bool isShowingInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: Column(
          children: [
            Visibility(
              visible: isShowingInfo,
              child: CommonCard(
                backgroundColor: Theme.of(context).colorScheme.tertiary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.info_outline_rounded),
                    const SizedBox(height: 4),
                    Text(
                      text ?? '',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 2),
            Center(
              child: IconButton(
                tooltip: isShowingInfo ? 'Hide info' : 'Show info',
                icon: Icon(
                  isShowingInfo
                      ? Icons.expand_less_outlined
                      : Icons.expand_more_outlined,
                ),
                onPressed: () {
                  if (isShowingInfo) {
                    onClosed();
                  } else {
                    onExpanded();
                  }
                },
              ),
            )
          ],
        ));
  }
}

class FormView extends StatelessWidget {
  const FormView({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return AppPageView(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: children,
      ),
    ));
  }
}

class AppPageView extends StatelessWidget {
  const AppPageView({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: Padding(
          padding: const EdgeInsets.all(8),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: child,
          )),
    );
  }
}

class CardTitle extends StatelessWidget {
  const CardTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}

class FormCard extends StatelessWidget {
  const FormCard({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: children,
      ),
    );
  }
}

class CommonCard extends StatelessWidget {
  const CommonCard({
    super.key,
    required this.child,
    required this.backgroundColor,
  });
  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color.lerp(
            backgroundColor, Theme.of(context).colorScheme.surface, 0.9),
      ),
      child: child,
    );
  }
}

class SharedTextField extends StatelessWidget {
  const SharedTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
  });

  final String label;
  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffix: controller.text.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  controller.clear();
                },
              )
            : null,
      ),
      onSubmitted: (value) {
        controller.text = value;
      },
    );
  }
}

class SharedDropdownField extends StatelessWidget {
  const SharedDropdownField({
    super.key,
    required this.value,
    required this.label,
    required this.items,
    required this.onChanged,
    this.enabled = true,
  });

  final String? value;
  final String label;
  final List<String> items;
  final void Function(String?) onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String?>(
      isExpanded: true,
      value: value,
      decoration: InputDecoration(
        labelText: label,
      ),
      items: items
          .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(
                  item,
                  overflow: TextOverflow.clip,
                ),
              ))
          .toList(),
      onChanged: enabled ? onChanged : null,
    );
  }
}

class InputSelectorForm extends StatelessWidget {
  const InputSelectorForm({
    super.key,
    required this.ctr,
    required this.xTypeGroup,
    required this.onFilePressed,
  });

  final IOController ctr;
  final List<XTypeGroup> xTypeGroup;
  final void Function(List<String>) onFilePressed;

  @override
  Widget build(BuildContext context) {
    return SharedMultiFilePicker(
      label: 'Select input files',
      paths: ctr.files,
      xTypeGroup: xTypeGroup,
      onPressed: onFilePressed,
    );
  }
}

class SharedOutputDirField extends StatelessWidget {
  const SharedOutputDirField({
    super.key,
    required this.ctr,
    required this.onChanged,
  });

  final TextEditingController ctr;
  final void Function() onChanged;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? SharedTextField(
            label: 'Directory name',
            hint: 'Enter output directory name',
            controller: ctr,
          )
        : SelectDirField(
            label: 'Select output directory',
            dirPath: ctr,
            onChanged: onChanged,
          );
  }
}

class SelectDirField extends StatelessWidget {
  const SelectDirField({
    super.key,
    required this.label,
    required this.dirPath,
    required this.onChanged,
  });

  final String label;
  final TextEditingController dirPath;
  final void Function() onChanged;

  @override
  Widget build(BuildContext context) {
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
              onChanged();
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

class SharedMultiFilePicker extends StatefulWidget {
  const SharedMultiFilePicker({
    super.key,
    required this.label,
    required this.paths,
    required this.xTypeGroup,
    required this.onPressed,
  });

  final String label;
  final List<String> paths;
  final List<XTypeGroup> xTypeGroup;
  final Function(List<String>) onPressed;

  @override
  State<SharedMultiFilePicker> createState() => _SharedFilePickerState();
}

class _SharedFilePickerState extends State<SharedMultiFilePicker> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            widget.paths.isEmpty
                ? '${widget.label}: '
                : '${widget.paths.length} files selected',
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 10),
        _isLoading
            ? const SizedBox(
                height: 10,
                width: 10,
                child: CircularProgressIndicator(),
              )
            : IconButton(
                icon: widget.paths.isEmpty
                    ? const Icon(Icons.folder)
                    : const Icon(Icons.folder_open),
                onPressed: () async {
                  setState(() {
                    _isLoading = true;
                  });
                  try {
                    final paths = await _selectFiles();
                    if (paths.isNotEmpty) {
                      widget.onPressed(paths);
                    }
                  } catch (e) {
                    if (mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        showSharedSnackBar(context, e.toString()),
                      );
                    }
                  }
                  setState(() {
                    _isLoading = false;
                  });
                },
              ),
      ],
    );
  }

  Future<List<String>> _selectFiles() async {
    List<XFile> result = await IOServices().selectMultiFiles(widget.xTypeGroup);
    if (result.isNotEmpty) {
      return result.map((e) => e.path).toList();
    } else {
      return [];
    }
  }
}

class SharedSingleFilePicker extends StatelessWidget {
  const SharedSingleFilePicker(
      {super.key,
      required this.label,
      required this.path,
      required this.xTypeGroup,
      required this.onPressed,
      s});

  final String label;
  final String? path;
  final List<XTypeGroup> xTypeGroup;
  final Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            path == null ? '$label: ' : path!,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          icon: path == null
              ? const Icon(Icons.folder)
              : const Icon(Icons.folder_open),
          onPressed: () async {
            final path = await _selectFile();
            if (path != null) {
              onPressed(path);
            }
          },
        ),
      ],
    );
  }

  Future<String?> _selectFile() async {
    final result = await IOServices().selectFile(xTypeGroup);
    if (result != null) {
      return result.path;
    }
    return null;
  }
}

SnackBar showSharedSnackBar(BuildContext context, String text) {
  return SnackBar(
    content: Text(text),
    duration: const Duration(seconds: 10),
  );
}

class SwitchForm extends StatelessWidget {
  const SwitchForm({
    super.key,
    required this.label,
    required this.value,
    required this.onPressed,
  });

  final String label;
  final bool value;
  final void Function(bool) onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Switch(
          value: value,
          onChanged: onPressed,
        ),
      ],
    );
  }
}
