import 'package:flutter/material.dart';
import 'package:test/Core/utilities/constant.dart';
import 'package:test/Core/utilities/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
        FontAwesomeIcons.magnifyingGlass,
          size: 23,
          
            ),
         
          color: iconsearchcolor,
        ),
      ],
      centerTitle: true,
      toolbarHeight: 95,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 12, 128, 120),
              Color(0XFF03C5B9),
            ],
          ),
        ),
      ),
      title: Text(
        title,
        style: Styles.textStyleAppBar,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(95);
}
