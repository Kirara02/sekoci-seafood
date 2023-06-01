import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';

class CustomSearchForm extends StatelessWidget {
  final String text;
  final TextEditingController? controller;
  const CustomSearchForm({
    Key? key,
    required this.text,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.search,
          color: greyColor3,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 11),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: greyColor3,
          ), // Ubah warna border di sini
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: greyColor3,
          ), // Ubah warna border di sini
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: greyColor3,
          ), // Ubah warna border di sini
        ),
        hintText: text,
      ),
    );
  }
}
