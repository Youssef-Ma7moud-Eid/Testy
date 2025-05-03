import 'package:flutter/material.dart';
import 'package:test/Core/utilities/styles.dart';

class AddNoteSection extends StatefulWidget {
  const AddNoteSection({super.key, this.onChanges});
  final void Function(String?)? onChanges;
  @override
  State<AddNoteSection> createState() => _AddNoteSectionState();
}

class _AddNoteSectionState extends State<AddNoteSection> {
  final TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    _controller.dispose(); // Clean up controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      height: 280,
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              'Add notes',
              style: Styles.newrecordtitle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextFormField(
              controller: _controller,
              validator: (data) {
                if (data == null || data.isEmpty) {
                  return 'Field is required';
                }
                return null;
              },
              onChanged: widget.onChanges,
              maxLines: 7,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Add Note',
                hintStyle: Styles.newrecordtitle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
