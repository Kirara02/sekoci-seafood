import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/shared/widget/app_bar/custom_app_bar.dart';
import 'package:zen_test/shared/widget/button/custom_full_button.dart';
import '../controller/detail_menu_controller.dart';

class DetailMenuView extends StatefulWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  final String description;
  final String price;
  final double rating;

  const DetailMenuView({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.rating,
  }) : super(key: key);

  Widget build(context, DetailMenuController controller) {
    controller.view = this;

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                      image: DecorationImage(
                        image: AssetImage(imgUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.only(
                        bottom: 30,
                        right: 23,
                        left: 23,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Lobster Goreng",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 3.0,
                          ),
                          Text(
                            subtitle,
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 30,
                                width: 126,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Center(
                                  child: Text(
                                    price,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 126,
                                decoration: BoxDecoration(
                                    color: whiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: primaryColor,
                                    )),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: primaryColor,
                                      ),
                                      const SizedBox(
                                        width: 2.0,
                                      ),
                                      Text(
                                        rating.toString(),
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                          color: primaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            "Deskripsi Produk",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            description,
                            style: const TextStyle(
                              fontSize: 12.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 20,
                top: 20,
                right: 20,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: whiteColor.withOpacity(0.9),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: blackColor2,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: whiteColor.withOpacity(0.9),
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: primaryColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: whiteColor.withOpacity(0.9),
                      ),
                      child: const Icon(
                        Icons.share,
                        color: blackColor2,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 12,
                right: 12,
                top: 210,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(0, 4),
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/diskon.png',
                                width: 18,
                                fit: BoxFit.cover,
                                color: primaryColor,
                              ),
                              const SizedBox(
                                width: 7.5,
                              ),
                              const Text(
                                "Diskon 20%",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const VerticalDivider(
                          color: primaryColor,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/like.png',
                              width: 18,
                              fit: BoxFit.cover,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              width: 7.5,
                            ),
                            const Text(
                              "Paling Populer",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          color: primaryColor,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/inventory.png',
                              width: 18,
                              fit: BoxFit.cover,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              width: 7.5,
                            ),
                            const Text(
                              "Gratis Ongkir",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
          height: 68,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 14,
          ),
          child: CustomFullButton(
            text: "Tambah ke Keranjang",
            onTap: () {},
          )),
    );
  }

  @override
  State<DetailMenuView> createState() => DetailMenuController();
}
