import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/shared/widget/app_bar/custom_app_bar.dart';
import 'package:zen_test/shared/widget/card/favorite_card.dart';
import '../controller/favorite_controller.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({Key? key}) : super(key: key);

  Widget build(context, FavoriteController controller) {
    controller.view = this;

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Favorit",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Column(
                children: controller.favoriteList
                    .map(
                      (item) => FavoriteCard(
                        imgUrl: item['imgUrl'],
                        title: item['title'],
                        price: item['price'],
                        diskon: item['diskon'],
                        extra: item['extra'],
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FavoriteView> createState() => FavoriteController();
}
