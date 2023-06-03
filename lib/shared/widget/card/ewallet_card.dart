// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';

class EwalletCard extends StatelessWidget {
  final String imgUrl;
  const EwalletCard({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
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
