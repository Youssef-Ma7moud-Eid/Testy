import 'package:flutter/material.dart';
import 'package:test/Features/records/presentation/views/widgets/record_detail_item.dart';

class RecordItemBody extends StatelessWidget {
  const RecordItemBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15),
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return  RecordDetailItem(detail:list[index]['title']!, image: list[index]['image']!,);
        },
      ),
    );
  }
}

List<Map<String, String>> list = [
  {'image': 'assets/item1.png', 'title':   'djhefjfcjdjgdjegfkjegfnnnccccccccccnjnnnnnnndjdjdjdjdjjfkjwefgwukejfgwjkefgjkwefwkjefgwekjcvjdv'},
  {'image': 'assets/item2.png', 'title':   'djhefjfcjdjgdjegfkjegfnnnccccccccccnjnnnnnnndjdjdjdjdjjfkjwefgwukejfgwjkefgjkwefwkjefgwekjcvjdv'},
  {'image': 'assets/item3.png', 'title':   'djhefjfcjdjgdjegfkjegfnnnccccccccccnjnnnnnnndjdjdjdjdjjfkjwefgwukejfgwjkefgjkwefwkjefgwekjcvjdv'},
  {'image': 'assets/item4.png', 'title':   'djhefjfcjdjgdjegfkjegfnnnccccccccccnjnnnnnnndjdjdjdjdjjfkjwefgwukejfgwjkefgjkwefwkjefgwekjcvjdv'},
  {'image': 'assets/item1.png', 'title':   'djhefjfcjdjgdjegfkjegfnnnccccccccccnjnnnnnnndjdjdjdjdjjfkjwefgwukejfgwjkefgjkwefwkjefgwekjcvjdv'},
  {'image': 'assets/item2.png', 'title':   'djhefjfcjdjgdjegfkjegfnnnccccccccccnjnnnnnnndjdjdjdjdjjfkjwefgwukejfgwjkefgjkwefwkjefgwekjcvjdv'},
  {'image': 'assets/item3.png', 'title':   'djhefjfcjdjgdjegfkjegfnnnccccccccccnjnnnnnnndjdjdjdjdjjfkjwefgwukejfgwjkefgjkwefwkjefgwekjcvjdv'},
  {'image': 'assets/item4.png', 'title':   'djhefjfcjdjgdjegfkjegfnnnccccccccccnjnnnnnnndjdjdjdjdjjfkjwefgwukejfgwjkefgjkwefwkjefgwekjcvjdv'},
];
