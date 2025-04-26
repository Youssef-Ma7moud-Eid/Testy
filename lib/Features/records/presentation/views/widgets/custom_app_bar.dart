import 'package:flutter/material.dart';
import 'package:test/Core/utilities/styles.dart';

class CustomAppBarRecord extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
   
  const CustomAppBarRecord({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
       style: Styles.recordappbar.copyWith(fontSize: 25),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(95);
}
