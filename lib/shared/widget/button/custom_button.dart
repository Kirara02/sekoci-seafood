import 'package:flutter/material.dart';
import 'package:zen_test/shared/theme/theme_config.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool filled;
  final VoidCallback? onTap;
  const CustomButton({
    Key? key,
    required this.text,
    this.filled = true,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 140,
        decoration: BoxDecoration(
          color: filled == false ? whiteColor : primaryColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: primaryColor,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: filled == false ? primaryColor : whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
