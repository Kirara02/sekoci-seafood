import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/shared/widget/form/custom_search_form.dart';
import '../controller/menus_controller.dart';

class MenusView extends StatefulWidget {
  const MenusView({Key? key}) : super(key: key);

  Widget build(context, MenusController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroudColor.withOpacity(0.3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20,
            ),
            child: Column(
              children: [
                CustomSearchForm(text: "Cari Menu Disini"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<MenusView> createState() => MenusController();
}
