// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';

class CustomIconButton extends StatelessWidget {
  final String iconUrl;
  final String text;
  final VoidCallback? onTap;
  final bool filled;
  const CustomIconButton({
    Key? key,
    required this.iconUrl,
    required this.text,
    this.onTap,
    this.filled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 135,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: filled ? primaryColor : whiteColor,
        border: Border.all(
          color: primaryColor,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconUrl,
            width: 14,
            color: filled ? whiteColor : primaryColor,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 6.0,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: filled ? whiteColor : primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
