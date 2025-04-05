import 'package:flutter/material.dart';
import 'package:test/Core/utilities/styles.dart';

class ButtomItem extends StatelessWidget {
  const ButtomItem({super.key, required this.title, required this.color});
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
         minimumSize: const Size(60, 33),
        backgroundColor: Colors.white,
        foregroundColor:color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side:  BorderSide(color: color, width: 1.0),
        ),
      
      ),
      child:  Text(
        title,
        style: Styles.textStylebuttom,
      ),
    );
  }
}
