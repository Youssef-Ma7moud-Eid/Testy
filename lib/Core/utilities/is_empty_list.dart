import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:test/Core/utilities/styles.dart';

class InEmptyList extends StatelessWidget {
  const InEmptyList({
    super.key,
    required this.title,
    this.onPressed,
    this.icon = IconlyBroken.plus,
    this.image,
  });
  final String title;
  final VoidCallback? onPressed;
  final IconData icon;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOutCubic,
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, 300 * (1 - value)),
          child: Opacity(
            opacity: value,
            child: child,
          ),
        );
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            image != null
                ? Image.asset(
                    image!,
                  )
                : CircleAvatar(
                    radius: 60,
                    backgroundColor: const Color(0xffF3F4F6),
                    child: IconButton(
                      onPressed: onPressed,
                      icon: Icon(
                        icon,
                        color: Styles.newrecordtitle.color,
                        size: 60,
                      ),
                    ),
                  ),
            SizedBox(
              height: 16,
            ),
            Text(
              title,
              style: Styles.textStyleAppBar.copyWith(
                color: const Color(0xff6B7280),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
