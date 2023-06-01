import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/shared/widget/badge/custom_badge.dart';
import 'package:zen_test/shared/widget/card/explore_menu_card.dart';
import 'package:zen_test/shared/widget/form/custom_search_form.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroudColor.withOpacity(0.3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 20,
              bottom: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSearchForm(text: "Mau Seafood Apa?"),
                const SizedBox(
                  height: 20.0,
                ),
                Builder(builder: (context) {
                  List images = [
                    "assets/images/cardbg.png",
                    "assets/images/cardbg.png",
                    "assets/images/cardbg.png",
                  ];

                  return Column(
                    children: [
                      CarouselSlider(
                        carouselController: controller.carouselController,
                        options: CarouselOptions(
                          height: 160.0,
                          autoPlay: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            controller.currentIndex = index;
                            controller.setState(() {});
                          },
                        ),
                        items: images.map((imageUrl) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                height: 120,
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 25,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: primaryColor,
                                  image: DecorationImage(
                                    alignment: Alignment.centerRight,
                                    image: AssetImage(
                                      imageUrl,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "Cobain\nSeafood Terbaik\nMumpung Promo",
                                  style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                      Row(
                        children: images.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => controller.carouselController
                                .animateToPage(entry.key),
                            child: Container(
                              width: controller.currentIndex == entry.key
                                  ? 24.0
                                  : 12.0,
                              height: 12.0,
                              margin: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 2.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : primaryColor)
                                    .withOpacity(
                                  controller.currentIndex == entry.key
                                      ? 0.9
                                      : 0.4,
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  );
                }),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Paling banyak dicari",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Wrap(
                  children: controller.mostSearch
                      .map((item) => CustomBadge(text: item))
                      .toList(),
                ),
                //
                const Divider(
                  color: dicColor,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Eksplor menu kami",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Center(
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 15,
                    children: controller.exploreMenu.map((item) {
                      return ExploreMenuCard(
                        title: item['title'],
                        imgUrl: item['imgUrl'],
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
