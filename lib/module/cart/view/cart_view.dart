import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/shared/widget/app_bar/custom_app_bar.dart';
import '../controller/cart_controller.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  Widget build(context, CartController controller) {
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
                "Keranjang Saya",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Column(
                children: controller.cartList
                    .map(
                      (item) => CartItem(
                        imgUrl: item['imgUrl'],
                        title: item['title'],
                        price: item['price'],
                        diskon: item['diskon'],
                        extra: item['extra'],
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomFullButton(text: "Buat Pesanan"),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CartView> createState() => CartController();
}
