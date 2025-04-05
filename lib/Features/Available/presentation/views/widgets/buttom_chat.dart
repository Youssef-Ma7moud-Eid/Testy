import 'package:flutter/material.dart';
import 'package:test/Core/utilities/styles.dart';

class ButtomChat extends StatelessWidget {
  const ButtomChat({super.key, required this.title, required this.color});
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
         minimumSize: const Size(40, 37),
        backgroundColor: Color.fromARGB(255, 209, 222, 240),
        foregroundColor:color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      
      ),
      child:  Text(
         title,
        style: Styles.textStylebuttom.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}
