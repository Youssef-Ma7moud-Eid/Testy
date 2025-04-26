import 'package:flutter/material.dart';
import 'package:test/Core/utilities/drop_down_class.dart';
import 'package:test/Core/utilities/styles.dart';

class RecordDetailItem extends StatefulWidget {
  const RecordDetailItem({
    super.key,
    required this.detail,
    required this.image,
  });

  final String detail;
  final String image;

  @override
  State<RecordDetailItem> createState() => _RecordDetailItemState();
}

class _RecordDetailItemState extends State<RecordDetailItem> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.17,
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
                  Container(
                    height: height * 0.15,
                    width: width * 0.38,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.05),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      width: width * 0.4,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.detail,
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
                onDelete: () {},
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
