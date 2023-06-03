// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:zen_test/shared/theme/theme_config.dart';

class BankCard extends StatelessWidget {
  final String imgUrl;
  const BankCard({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: primaryColor,
          width: 3,
        ),
      ),
      child: Image.asset(
        imgUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
