---
sidebar_position: 1
---

# Introduction

**Thank you for using SEGUL!** 🙏🏻

We have developed **SEGUL (Sequence and Genomics Utilities)** to address the need for a high-performance and accessible phylogenomic tool. This program is designed to be fast, memory-efficient, cross-platform, and user-friendly. It is particularly well-suited for large-scale phylogenomic projects, especially those involving thousands of loci and hundreds of samples. Additionally, SEGUL is capable of handling small Sanger sequences effectively.

## Citation

> Heru Handika, Jacob Esselstyn. SEGUL: An ultrafast, memory-efficient alignment manipulation and summary tool for phylogenomics. _Authorea_. May 04, 2022. DOI: [10.22541/au.165167823.30911834/v1](https://www.authorea.com/doi/full/10.22541/au.165167823.30911834/v1).

## Platform Support

### Desktop

| Platform                          | GUI | CLI |
| --------------------------------- | --- | --- |
| Linux                             | ✅  | ✅  |
| MacOS                             | ✅  | ✅  |
| Windows                           | ✅  | ✅  |
| Windows Subsystem for Linux (WSL) | ❌  | ✅  |

### Mobile

| Platform | GUI | CLI |
| -------- | --- | --- |
| iOS      | ✅  | ❌  |
| iPadOS   | ✅  | ❌  |
| Android  | ✅  | ❌  |

## Quick Start ⏱️

### Command line (CLI) vs GUI

If your answer is yes to any of the following questions, you should use the CLI version of the app. Otherwise, either GUI or CLI will serve your need.

1. Are you planning to run the app on non-GUI environment, such as a High-Performance Computing (HPC) cluster?
2. Do you run SEGUL as part of a pipeline?
3. Do you you need the utmost efficiency?

Learn more about the differences between the CLI and GUI version [here](./cli_gui.md).

### Installation

Follow the installation instruction for your operating system. The fastest installation route for CLI is using the pre-compiled binaries [here](./installation/install_binary). Get the most up to date link for GUI installation [here](./installation/install_gui).

### Usage

| Feature                        | Quick Link                                                           |
| ------------------------------ | -------------------------------------------------------------------- |
| Alignment concatenation        | [CLI](./cli-usage/concat) / [GUI](./gui-usage/align-concat)          |
| Alignment conversion           | [CLI](./cli-usage/convert) / [GUI](./gui-usage/align-convert)        |
| Alignment filtering            | [CLI](./cli-usage/filter) / [GUI](./gui-usage/align-filter)          |
| Alignment splitting            | [CLI](./cli-usage/split) / [GUI](./gui-usage/align-split)            |
| Alignment partition conversion | [CLI](./cli-usage/partition) / [GUI](./gui-usage/align-partition)    |
| Alignment summary statistics   | [CLI](./cli-usage/summary) / [GUI](./gui-usage/align-summary)        |
| Genomic summary statistics     | [CLI](./cli-usage/genomic) / [GUI](./gui-usage/genomic)              |
| Sequence extraction            | [CLI](./cli-usage/extract) / [GUI](./gui-usage/sequence-extract)     |
| Sequence ID extraction         | [CLI](./cli-usage/id) / [GUI](./gui-usage/sequence-id)               |
| Sequence ID mapping            | [CLI](./cli-usage/map.md) / [GUI](./gui-usage/sequence-id-map)       |
| Sequence ID renaming           | [CLI](./cli-usage/rename) / [GUI](./gui-usage/sequence-rename)       |
| Sequence removal               | [CLI](./cli-usage/remove) / [GUI](./gui-usage/sequence-remove)       |
| Sequence translation           | [CLI](./cli-usage/translate) / [GUI](./gui-usage/sequence-translate) |
| Log file                       | [CLI](./cli-usage/log) / [GUI](./gui-usage/log)                      |

#### GUI Usage

1. Open the app.
2. Use the navigation bar to select the feature you want to use. For example, if you want to concatenate alignments, click the "Alignments" button.
3. Use the dropdown menu to select the task. For alignment concatenation, select "Concatenate alignments".
4. Add the input files by clicking the "Add file" button. On desktop platforms, you can also input a directory by clicking the "Add directory" button. The app will look for matching files in the directory.
5. All the input files will be displayed in the input tab bar. You can remove the file by clicking the "Remove" button. Removing the file will only remove it from input list and not from the file system.
6. Add the output directory by clicking the "Add output directory" button. On mobile platforms, the directory will be the default directory for the app.
7. For some tasks, you also need to add the parameters. For example, if you want to filter alignments, you need to add the filtering parameters.
8. Click the "Run" button to start the task.
9. Once it's done, the app will display the output in the output tab bar. You can also tab the file to open it in the app file viewer. Current version only support plain text and comma-separated (CSV) data.
10. You can also share the output. There are two share options. The quick share will create a zip file containing the output and share it using the system share sheet. You can also share individual files by clicking the share button on the file output viewer.

:::note
The GUI version is still in beta. If you encounter any issues, please report them to the [issue tracker](https://github.com/hhandika/segui/issues).
:::

#### CLI Usage

`segul` command is structured as follows:

```bash
segul <command> <subcommand> --option1 value1 --option2 value2
```

For example, to concatenate alignments:

```bash
segul align concat --input alignments/*.nexus --output aln-concat
```

See the [command usage](./cli-usage/command_options.md) section for more detailed usage.

:::warning
The commands below expect SEGUL version 0.19.0+. If you are using lower version, the subcommand become the command and dir input option required input format.

For example:

```bash
segul alignment concat -d <input-directory>
```

In the version lower than 0.19.0, the command above will be:

```bash
segul concat -d <input-directory> -f <input-format>
```

:::

| Feature                        | Commands                                                           |
| ------------------------------ | ------------------------------------------------------------------ |
| Alignment concatenation        | `segul align concat -d <input-directory>`                          |
| Alignment conversion           | `segul align convert -d <input-directory>`                         |
| Alignment filtering            | `segul align filter -d <input-directory> <filtering-options>`      |
| Alignment splitting            | `segul align split -d <input-directory>`                           |
| Alignment partition conversion | `segul partition convert -d <input-directory>`                     |
| Alignment summary statistics   | `segul align summary -d <input-directory>`                         |
| Contig summary statistics      | `segul contig summary -d <input-directory>`                        |
| Read summary statistics        | `segul read summary -d <input-directory>`                          |
| Sequence extraction            | `segul sequence extract -d <input-directory> <extraction-options>` |
| Sequence ID extraction         | `segul sequence id -d <input-directory>`                           |
| Sequence ID mapping            | `segul sequence id --map -d <input-directory>`                     |
| Sequence ID renaming           | `segul sequence rename -d <input-directory>`                       |
| Sequence removal               | `segul sequence remove -d <input-directory>`                       |
| Sequence translation           | `segul sequence translate -d <input-directory>`                    |
| Main help                      | `segul --help`                                                     |
| Command help                   | `segul <command> --help`                                           |
| Subcommand help                | `segul <command> <subcommand> --help`                              |

## Additional Resources

- [API Documentation](https://docs.rs/segul/0.18.1/segul/)
- [GUI Source Code](https://github.com/hhandika/segui)
- [CLI & API Source Code](https://github.com/hhandika/segul)
