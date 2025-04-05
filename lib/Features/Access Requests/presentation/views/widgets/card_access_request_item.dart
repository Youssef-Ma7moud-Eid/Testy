import 'package:flutter/material.dart';
import 'package:test/Core/utilities/styles.dart';
import 'package:test/Features/Access%20Requests/presentation/views/widgets/buttom_item.dart';

class CardAccessRequestItem extends StatelessWidget {
  const CardAccessRequestItem({super.key, required this.image});
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
              width: width * 0.41,
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
                    'has sent you a request to access your records',
                    maxLines: 2,
                    style: Styles.textStylesubtitle,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              children: [
                ButtomItem(
                  title: 'Allow',
                  color: Colors.teal,
                ),
                ButtomItem(
                  title: 'Deny',
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
