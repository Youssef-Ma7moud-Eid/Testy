import 'package:flutter/material.dart';
import 'package:test/Features/records/presentation/views/widgets/display_record_icons.dart';

class UPloadSection extends StatefulWidget {
  const UPloadSection({super.key});

  @override
  _UPloadSectionState createState() => _UPloadSectionState();
}

class _UPloadSectionState extends State<UPloadSection> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      height: 255,
      alignment: Alignment.center,
      child: DisplayRecordIcons(),
    );
  }
}
