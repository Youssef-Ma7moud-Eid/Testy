import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test/Core/utilities/app_router.dart';
import 'package:test/Features/records/presentation/views/widgets/custom_app_bar_record_view.dart';
import 'package:test/Features/records/presentation/views/widgets/record_item_body.dart';

class RecordItemView extends StatelessWidget {
  const RecordItemView({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarRecordView(
        title: title,
        onTap: () {
          GoRouter.of(context).push(AppRouter.knewrecordview, extra: title);
        },
      ),
      body: RecordItemBody(),
    );
  }
}
