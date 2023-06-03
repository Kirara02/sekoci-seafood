// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:zen_test/shared/theme/theme_config.dart';

class FavoriteCard extends StatefulWidget {
  final String imgUrl;
  final String title;
  final String price;
  final String diskon;
  final String extra;
  const FavoriteCard({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.price,
    required this.diskon,
    required this.extra,
  }) : super(key: key);

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: 100,
      ),
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, -2),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: isChecked,
            side: BorderSide(
              width: 0.5,
              color: blackColor2,
            ),
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          const SizedBox(
            width: 10.0,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              widget.imgUrl,
              width: 60,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      widget.price,
                      style: TextStyle(
                        fontSize: 10.0,
                        decoration: widget.diskon != ""
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        fontWeight: widget.diskon != ""
                            ? FontWeight.w400
                            : FontWeight.bold,
                        color: primaryColor,
                        decorationThickness: 2,
                      ),
                    ),
                    const SizedBox(
                      width: 7.0,
                    ),
                    Text(
                      widget.diskon,
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    )
                  ],
                ),
                Text(
                  widget.extra,
                  style: TextStyle(
                    fontSize: 10.0,
                    color: primaryColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 97,
                      height: 20,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(32)),
                      child: Center(
                        child: Text(
                          "Lihat Pesanan",
                          style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                            color: whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
