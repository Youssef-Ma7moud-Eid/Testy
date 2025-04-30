import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import 'package:test/Core/utilities/styles.dart';

class AddDateSection extends StatelessWidget {
  const AddDateSection({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String date =  DateFormat('dd-MM-yyyy').format(now);
    return Container(
      color: Colors.white60,
      height: 120,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Add date',
                style: Styles.newrecordtitle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(
                  IconlyLight.calendar,
                  size: 25,
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  date,
                  style: Styles.recordcarddetail.copyWith(fontSize: 19),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
