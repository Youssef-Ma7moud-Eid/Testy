import 'package:flutter/material.dart';
import 'package:test/Core/utilities/custom_app_bar.dart';
import 'package:test/Features/records/presentation/views/widgets/new_record_body.dart';

class NewRecordView extends StatelessWidget {
  const NewRecordView({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarRecord(
        title: 'New Record',
      ),
      body: NewRecordBody(),
    );
  }
}
