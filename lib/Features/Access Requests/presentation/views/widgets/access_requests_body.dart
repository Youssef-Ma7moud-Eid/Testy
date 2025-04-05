import 'package:flutter/material.dart';

import 'package:test/Features/Access%20Requests/presentation/views/widgets/card_access_request_item.dart';

class AccessRequestsBody extends StatelessWidget {
  const AccessRequestsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return CardAccessRequestItem(image: list[index]);
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
