import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/Core/utilities/drop_down_class.dart';
import 'package:test/Core/utilities/styles.dart';
import 'package:test/Features/records/data/models/record_model.dart';
import 'package:test/Features/records/presentation/manager/manage_record/manage_record_cubit.dart';

class RecordDetailItem extends StatefulWidget {
  const RecordDetailItem({
    super.key,
    required this.record,
  });

  final RecordModel record;

  @override
  State<RecordDetailItem> createState() => _RecordDetailItemState();
}

class _RecordDetailItemState extends State<RecordDetailItem> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.22,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              child: Row(
                children: [
                  widget.record.image != null
                      ? Container(
                          height: height * 0.2,
                          width: width * 0.38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage(widget.record.image!.path),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                  SizedBox(width: width * 0.05),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      width: width * 0.4,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.record.note ?? ' ',
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.recordcarddetail,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 360,
            top: 15,
            child: Opacity(
              opacity: 0.8,
              child: RecordPopupMenu(
                onEdit: () {},
                onDelete: () {
                  BlocProvider.of<ManageRecordCubit>(context)
                      .deleteRecords(widget.record);
                },
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 8,
            child: Opacity(
              opacity: 0.8,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '22-1-2025',
                  style: Styles.recordcarddetail.copyWith(fontSize: 11),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
