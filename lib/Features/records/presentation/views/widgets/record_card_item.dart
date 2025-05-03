import 'package:flutter/material.dart';
import 'package:test/Core/utilities/styles.dart';

class RecordCardItem extends StatelessWidget {
  const RecordCardItem({super.key, required this.title, required this.image});
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.165,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(image),
          colorFilter: ColorFilter.mode(
            Color.fromRGBO(0, 0, 0, 0.3),
            BlendMode.darken,
          ),
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 19, vertical: 12),
      child: Text(
        title,
        style: Styles.recordtext.copyWith(color: Colors.white),
      ),
    );
  }
}
