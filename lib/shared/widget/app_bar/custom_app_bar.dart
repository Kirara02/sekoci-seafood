// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/module/cart/view/cart_view.dart';
import 'package:zen_test/state_util.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 2,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo.png",
            width: 60,
          ),
          const SizedBox(
            width: 5.0,
          ),
          Image.asset(
            "assets/images/sekoci_text.png",
            width: 150,
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () => Get.to(const CartView()),
          icon: Badge(
            label: const Text(
              "4",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: Image.asset(
              "assets/icons/cart.png",
              width: 22,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
