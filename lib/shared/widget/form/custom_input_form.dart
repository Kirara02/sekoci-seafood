import 'package:flutter/material.dart';

class CustomInputForm extends StatelessWidget {
  final String title;
  final String hint;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomInputForm({
    Key? key,
    required this.title,
    required this.hint,
    this.obscureText = false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: hint,
          ),
        ),
        ],
    );
  }
}
