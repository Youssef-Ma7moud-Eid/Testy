import 'package:flutter/material.dart';
import 'package:test/Core/utilities/custom_app_bar.dart';
import 'package:test/Features/records/data/models/record_model.dart';
import 'package:test/Features/records/presentation/views/widgets/new_record_body.dart';

class NewRecordView extends StatelessWidget {
  const NewRecordView({super.key, this.record});
  final RecordModel? record;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarRecord(
        title: record == null ? 'New Record' : 'Edit Record',
      ),
      body: NewRecordBody(
        record: record,
      ),
    );
  }
}
