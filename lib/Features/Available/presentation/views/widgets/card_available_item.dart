import 'package:flutter/material.dart';
import 'package:test/Core/utilities/styles.dart';
import 'package:test/Features/Available/presentation/views/widgets/buttom_chat.dart';

class CardAvailableItem extends StatelessWidget {
  const CardAvailableItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.symmetric(
          horizontal: width * 0.03, vertical: height * 0.004),
      color: const Color(0XFFFCFCFC),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.03, vertical: height * 0.017),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 75,
            ),
            SizedBox(
              width: width * 0.05,
            ),
            SizedBox(
              width: width * 0.44,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr.Omar Ahmed',
                    style: Styles.textStyletitle,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    '7529 E.Zhraa Almaadi 125 st.',
                    maxLines: 1,
                    style: Styles.textStylesubtitle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              children: [
                ButtomChat(
                  title: 'Chat',
                  color: Color(0XFF074799),
                ),
               
              ],
            ),
          ],
        ),
      ),
    );
  }
}
