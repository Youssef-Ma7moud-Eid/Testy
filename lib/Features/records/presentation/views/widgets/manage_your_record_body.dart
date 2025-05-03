import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test/Core/utilities/app_router.dart';
import 'package:test/Features/records/presentation/manager/manage_record/manage_record_cubit.dart';
import 'package:test/Features/records/presentation/views/widgets/record_card_item.dart';

class ManageYourRecordBody extends StatelessWidget {
  const ManageYourRecordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () async {
            await BlocProvider.of<ManageRecordCubit>(context).loadingRecords();
            GoRouter.of(context)
                .push(AppRouter.krecorditemview, extra: list[index]['name']!);
          },
          child: RecordCardItem(
            title: list[index]['name']!,
            image: list[index]['image']!,
          ),
        );
      },
    );
  }
}

List<Map<String, String>> list = [
  {'image': 'assets/image1.jpg', 'name': 'Scan'},
  {'image': 'assets/image2.jpg', 'name': 'Lab Result'},
  {'image': 'assets/image3.jpg', 'name': 'Prescription'},
  {'image': 'assets/image4.jpg', 'name': 'Documents'},
 
];
