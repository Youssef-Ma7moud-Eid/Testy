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

class NewRecordBody extends StatefulWidget {
  const NewRecordBody({super.key, this.record});
  final RecordModel? record;
  @override
  State<NewRecordBody> createState() => _NewRecordBodyState();
}

class _NewRecordBodyState extends State<NewRecordBody> {
  GlobalKey<FormState> formState = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    RecordModel record = RecordModel();
    dynamic imageOrFile;
    return Form(
      key: formState,
      autovalidateMode: autovalidateMode,
      child: ListView(
        children: [
          BlocBuilder<ManageUploadImageCubit, ManageUploadImageState>(
            builder: (context, state) {
              if (state is SuccessProcessImage) {
                return DisplayRecordImage(image: state.image);
              } else if (state is LoadingImage) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                );
              } else {
                return UPloadSection(
                  onPick: (image, file) async {
                    imageOrFile = image ?? file;
                    record.image = imageOrFile;

                    await BlocProvider.of<ManageUploadImageCubit>(context)
                        .addimage(imageOrFile);
                  },
                );
              }
            },
          ),
          SizedBox(
            height: 18,
          ),
          AddNoteSection(
            onChanges: (data) async {
              record.note = data;
            },
          ),
          SizedBox(
            height: 18,
          ),
          AddDateSection(),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () async {
              if (formState.currentState!.validate()) {
                await BlocProvider.of<ManageRecordCubit>(context)
                    .addNewRecords(record);

                await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: SizedBox(
                      height: 120,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 7),
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0XFF03C5B9),
                                  Color.fromARGB(255, 12, 128, 120),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(
                              color: Colors.white,
                              FontAwesomeIcons.check,
                              size: 42,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
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
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
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
