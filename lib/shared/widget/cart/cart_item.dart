// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';

class CartItem extends StatefulWidget {
  final String imgUrl;
  final String title;
  final String price;
  final String diskon;
  final String extra;
  const CartItem({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.price,
    required this.diskon,
    required this.extra,
  }) : super(key: key);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool isChecked = false;
  int qty = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (qty > 1) {
                            qty--;
                          }
                        });
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Icon(
                          Icons.remove,
                          color: primaryColor,
                          size: 14,
                          weight: 10,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(2),
                        color: primaryColor,
                      ),
                      child: Center(
                        child: Text(
                          qty.toString(),
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: whiteColor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          qty++;
                        });
                      },
                      child: Container(
                        height: 20,
                        width: 20,
                        padding: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Icon(
                          Icons.add,
                          color: primaryColor,
                          size: 14,
                          weight: 10,
                        ),
                      ),
                    )
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
