import 'package:flutter/material.dart';
import 'package:test/Features/records/presentation/views/widgets/add_data_section.dart';
import 'package:test/Features/records/presentation/views/widgets/add_note_section.dart';
import 'package:test/Features/records/presentation/views/widgets/record_custom_button.dart';
import 'package:test/Features/records/presentation/views/widgets/upload_section.dart';

class NewRecordBody extends StatelessWidget {
  const NewRecordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UPloadSection(),
        SizedBox(
          height: 18,
        ),
        AddNoteSection(),
        SizedBox(
          height: 18,
        ),
        AddDateSection(),
        SizedBox(
          height: 25,
        ),
        RecordCustomButton(),
      ],
    );
  }
}

