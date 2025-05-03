import 'package:flutter/material.dart';
import 'package:test/Features/records/presentation/views/widgets/custom_app_bar_record_view.dart';
import 'package:test/Features/records/presentation/views/widgets/upload_section.dart';

class EditRecordBody extends StatelessWidget {
  const EditRecordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarRecordView(
        title: 'Edit Records',
      ),
      body:UPloadSection() ,
    );
  }
}
