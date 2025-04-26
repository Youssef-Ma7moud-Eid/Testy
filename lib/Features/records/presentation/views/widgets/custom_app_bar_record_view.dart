import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test/Core/utilities/constant.dart';
import 'package:test/Core/utilities/styles.dart';

class CustomAppBarRecordView extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final void Function()? onTap;
  const CustomAppBarRecordView({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: BackButton(
        style: ButtonStyle(),
        color: Colors.white,
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 17),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: recordaddiconcolor,
              borderRadius: BorderRadius.circular(15)),
          child: Opacity(
            opacity: 0.7,
            child: GestureDetector(
              onTap: onTap,
              child: Icon(
                FontAwesomeIcons.plus,
                size: 18,
              ),
            ),
          ),
        ),
      ],
      centerTitle: true,
      toolbarHeight: 95,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 39, 207, 196),
              Color(0XFF46ACA6),
              Color(0XFF03C5B9),
            ],
          ),
        ),
      ),
      title: Text(
        title,
        style: Styles.recordappbar,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(95);
}
