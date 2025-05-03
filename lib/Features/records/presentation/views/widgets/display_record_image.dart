import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DisplayRecordImage extends StatelessWidget {
  const DisplayRecordImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          // padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 50),
          height: 215,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 380,
          top: 8,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(
                FontAwesomeIcons.close,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
