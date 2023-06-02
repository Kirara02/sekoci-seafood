// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';

class MenuCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  final String description;
  final String price;
  final double rating;
  final String? badge;
  final VoidCallback? onPressed;
  const MenuCard({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.price,
    required this.subtitle,
    required this.description,
    required this.rating,
    this.badge,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(
          DetailMenuView(
            imgUrl: imgUrl,
            title: title,
            subtitle: subtitle,
            description: description,
            price: price,
            rating: rating,
          ),
        );
      },
      child: Container(
        height: 200,
        width: 150,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: whiteColor,
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imgUrl,
                  width: 150,
                  height: 140,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        price,
                        style: const TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (badge != "")
              Container(
                width: 80,
                height: 20,
                decoration: BoxDecoration(
                  color: whiteColor.withOpacity(0.9),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4),
                  ),
                ),
                child: Center(
                  child: Text(
                    badge!,
                    style: const TextStyle(
                      fontSize: 8.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            Positioned(
              right: 10,
              top: 8,
              child: ClipOval(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    color: whiteColor,
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
