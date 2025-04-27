import 'package:flutter/material.dart';
import 'package:test/Core/utilities/styles.dart';

class AddNoteSection extends StatelessWidget {
  const AddNoteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      height: 250,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Add notes',
              style: Styles.newrecordtitle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              maxLines: 7,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Add Note',
                hintStyle: Styles.newrecordtitle.copyWith(fontSize: 18,fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
