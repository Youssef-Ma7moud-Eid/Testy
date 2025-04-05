import 'package:flutter/material.dart';
import 'package:test/Features/Available/presentation/views/widgets/card_available_item.dart';

class AvailableViewBody extends StatelessWidget {
  const AvailableViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return CardAvailableItem(image: list[index]);
      },
    );
  }
}

List<String> list = [
  'assets/img1.jpg',
  'assets/img2.jpg',
  'assets/img3.jpg',
  'assets/img4.jpg',
  'assets/img5.jpg',
  'assets/img6.jpg',
   'assets/img1.jpg',
  'assets/img2.jpg',
  'assets/img3.jpg',
  'assets/img4.jpg',
  'assets/img5.jpg',
  'assets/img6.jpg',
];
