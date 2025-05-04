

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:test/Core/utilities/styles.dart';
import 'package:test/Features/records/data/models/record_model.dart';
import 'package:test/Features/records/presentation/manager/manage_record/manage_record_cubit.dart';
import 'package:test/Features/records/presentation/manager/manage_record_image/manage_upload_image_cubit.dart';
import 'package:test/Features/records/presentation/views/widgets/add_data_section.dart';
import 'package:test/Features/records/presentation/views/widgets/add_note_section.dart';
import 'package:test/Features/records/presentation/views/widgets/display_record_image.dart';
import 'package:test/Features/records/presentation/views/widgets/upload_section.dart';
import 'dart:io';

class NewRecordBody extends StatefulWidget {
  const NewRecordBody({super.key, this.record});
  final RecordModel? record;
  @override
  State<NewRecordBody> createState() => _NewRecordBodyState();
}

class _NewRecordBodyState extends State<NewRecordBody> {
  GlobalKey<FormState> formState = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late RecordModel record;
  late bool isnew;

  @override
  void initState() {
    super.initState();
    record = widget.record ?? RecordModel();
    isnew = widget.record == null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formState,
      autovalidateMode: autovalidateMode,
      child: ListView(
        children: [
          BlocBuilder<ManageUploadImageCubit, ManageUploadImageState>(
            builder: (context, state) {
              if (state is SuccessProcessImage) {
                record.image = state.image as File?;
                return DisplayRecordImage(record: record);
              }  else {
                return UPloadSection(
                  onPick: (image, file) async {
                    final pickedImage = image ?? file;
                    record.image = pickedImage as File?;
                    await BlocProvider.of<ManageUploadImageCubit>(context)
                        .addimage(pickedImage);
                  },
                );
              }
            },
          ),
          const SizedBox(height: 18),
          AddNoteSection(
            initialNote: record.note,
            onChanges: (data) async {
              record.note = data;
            },
          ),
          const SizedBox(height: 18),
          AddDateSection(),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () async {
              if (formState.currentState!.validate()) {
                if (record.note == null || record.note!.trim().isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter a note'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }

                if (isnew) {
                  await BlocProvider.of<ManageRecordCubit>(context)
                      .addNewRecords(record);
                } else {
                  await BlocProvider.of<ManageRecordCubit>(context)
                      .updateRecords(record);
                }

                await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: SizedBox(
                      height: 120,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 7),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0XFF03C5B9),
                                  Color.fromARGB(255, 12, 128, 120),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Icon(
                              color: Colors.white,
                              FontAwesomeIcons.check,
                              size: 42,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'Your Record saved',
                            style: Styles.newrecordtitle,
                          ),
                        ],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                );

                GoRouter.of(context).pop();
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
            child: Container(
              alignment: Alignment.center,
              height: 55,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 39, 207, 196),
                    Color(0XFF46ACA6),
                    Color(0XFF03C5B9),
                  ],
                ),
              ),
              child: Text(
                'Save',
                style: Styles.recordappbar.copyWith(fontSize: 23),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
