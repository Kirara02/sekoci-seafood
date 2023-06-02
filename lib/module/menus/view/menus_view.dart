import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/shared/widget/card/menu_card.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSearchForm(text: "Cari Menu Disini"),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Menu Sekoci Seafood",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: controller.listMenu.map((item) {
                      return MenuCard(
                        imgUrl: item['imgUrl'],
                        title: item['title'],
                        subtitle: item['subtitle'],
                        description: item['description'],
                        price: item['price'],
                        rating: item['rating'],
                        badge: item['badge'],
                      );
                    }).toList(),
                  ),
                ),
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
