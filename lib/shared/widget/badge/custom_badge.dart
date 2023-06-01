import 'package:flutter/material.dart';
import 'package:zen_test/shared/theme/theme_config.dart';

class CustomBadge extends StatelessWidget {
  final String text;
  const CustomBadge({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 4,
        bottom: 10,
      ),
      height: 30,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      decoration: const BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w600,
          color: whiteColor,
        ),
      ),
    );
  }
}
