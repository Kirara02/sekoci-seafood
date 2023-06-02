import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/shared/theme/theme_config.dart';
import '../controller/onboarding_controller.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  Widget build(context, OnboardingController controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CarouselSlider(
                    items: [
                      Image.asset(
                        "assets/images/onboarding1.png",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/images/onboarding2.png",
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        "assets/images/onboarding3.png",
                        fit: BoxFit.cover,
                      )
                    ],
                    options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.6,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        controller.setState(() {
                          controller.currentIndex = index;
                        });
                      },
                    ),
                    carouselController: controller.carouselController,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.95,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipPath(
                          clipper: OvalTopBorderClipper(),
                          child: Container(
                            height: 40,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 300,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          decoration: const BoxDecoration(
                            color: whiteColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 40,
                                ),
                                child: Text(
                                  controller.titles[controller.currentIndex],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 80),
                                child: Text(
                                  controller.subtitles[controller.currentIndex],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 11.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () => controller.carouselController
                                        .animateToPage(0),
                                    child: Container(
                                      width: controller.currentIndex == 0
                                          ? 24
                                          : 12,
                                      height: 12,
                                      margin: const EdgeInsets.only(right: 6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: controller.currentIndex == 0
                                            ? secondaryColor
                                            : greyColor,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => controller.carouselController
                                        .animateToPage(1),
                                    child: Container(
                                      width: controller.currentIndex == 1
                                          ? 24
                                          : 12,
                                      height: 12,
                                      margin: const EdgeInsets.only(right: 6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: controller.currentIndex == 1
                                            ? secondaryColor
                                            : greyColor,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => controller.carouselController
                                        .animateToPage(2),
                                    child: Container(
                                      width: controller.currentIndex == 2
                                          ? 24
                                          : 12,
                                      height: 12,
                                      margin: const EdgeInsets.only(right: 6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: controller.currentIndex == 2
                                            ? secondaryColor
                                            : greyColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              InkWell(
                                onTap: () {
                                  if (controller.currentIndex == 2) {
                                    Get.offAll(const LoginView());
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 20,
                                    right: 40,
                                    left: 40,
                                  ),
                                  child: Container(
                                    height: 50,
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                    decoration: BoxDecoration(
                                      color: controller.currentIndex == 2
                                          ? primaryColor
                                          : greyColor2,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Ayo Mulai",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: whiteColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<OnboardingView> createState() => OnboardingController();
}
