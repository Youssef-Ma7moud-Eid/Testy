import 'package:flutter/material.dart';
import 'package:test/Features/records/presentation/views/widgets/custom_app_bar.dart';
import 'package:test/Features/records/presentation/views/widgets/manage_your_record_body.dart';

class ManageYourRecordView extends StatelessWidget {
  const ManageYourRecordView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: CustomAppBarRecord(title: 'Mange Your Records'),
     body: Padding(
       padding: const EdgeInsets.only(top: 22),
       child: ManageYourRecordBody(),
     ),
    );
    
  }
}