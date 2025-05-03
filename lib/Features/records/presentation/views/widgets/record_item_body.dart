import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test/Core/utilities/app_router.dart';
import 'package:test/Core/utilities/is_empty_list.dart';
import 'package:test/Core/utilities/styles.dart';
import 'package:test/Features/records/data/models/record_model.dart';
import 'package:test/Features/records/presentation/manager/manage_record/manage_record_cubit.dart';
import 'package:test/Features/records/presentation/views/widgets/record_detail_item.dart';

class RecordItemBody extends StatelessWidget {
  const RecordItemBody({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: BlocBuilder<ManageRecordCubit, ManageRecordState>(
        builder: (context, state) {
          List<RecordModel> list =
              BlocProvider.of<ManageRecordCubit>(context).list;
          if (list.isEmpty) {
            return InEmptyList(
              title: title,
              onPressed: () {
                GoRouter.of(context)
                    .push(AppRouter.knewrecordview, extra: title);
              },
            );
          } else if (list.isNotEmpty) {
            List<RecordModel> lists = list;
            return ListView.builder(
              itemCount: lists.length,
              itemBuilder: (context, index) {
                return RecordDetailItem(
                  record: lists[index],
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: Styles.recordappbar.color,
              ),
            );
          }
        },
      ),
    );
  }
}
