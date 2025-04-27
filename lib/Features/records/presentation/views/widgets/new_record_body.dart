import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:test/Core/utilities/styles.dart';
import 'package:test/Features/records/presentation/views/widgets/add_note_section.dart';
import 'package:test/Features/records/presentation/views/widgets/record_custom_button.dart';
import 'package:test/Features/records/presentation/views/widgets/upload_section.dart';
import 'package:intl/intl.dart';

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

class AddDateSection extends StatelessWidget {
  const AddDateSection({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String date = DateFormat('d/m/y').format(now);
    return Container(
      color: Colors.white60,
      height: 120,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Add date',
                style: Styles.newrecordtitle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  IconlyLight.calendar,
                  size: 25,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  date,
                  style: Styles.recordcarddetail.copyWith(fontSize: 19),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
