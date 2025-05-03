import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:test/Features/records/presentation/views/widgets/display_record_icons.dart';

class UPloadSection extends StatelessWidget {
  final void Function(File? image, PlatformFile? file)? onPick;

  const UPloadSection({super.key, this.onPick});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      height: 255,
      alignment: Alignment.center,
      child: DisplayRecordIcons(
        onPick: onPick,
      ),
    );
  }
}
