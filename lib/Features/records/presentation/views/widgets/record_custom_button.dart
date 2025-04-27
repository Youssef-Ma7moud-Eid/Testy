import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test/Core/utilities/styles.dart';

class RecordCustomButton extends StatelessWidget {
  const RecordCustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: SizedBox(
              height: 120,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 7),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0XFF03C5B9),
                          Color.fromARGB(255, 12, 128, 120),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      color: Colors.white,
                      FontAwesomeIcons.check,
                      size: 42,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Your Record saved',
                    style: Styles.newrecordtitle,
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 39, 207, 196),
              Color(0XFF46ACA6),
              Color(0XFF03C5B9),
            ],
          ),
        ),
        child: Text(
          'Save',
          style: Styles.recordappbar.copyWith(fontSize: 23),
        ),
      ),
    );
  }
}
