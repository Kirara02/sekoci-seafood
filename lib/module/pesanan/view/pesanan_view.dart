import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/shared/widget/button/custom_full_button.dart';
import 'package:zen_test/shared/widget/button/custom_icon_button.dart';
import 'package:zen_test/shared/widget/cart/cart_item.dart';
import '../controller/pesanan_controller.dart';

class PesananView extends StatefulWidget {
  const PesananView({Key? key}) : super(key: key);

  Widget build(context, PesananController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroudColor.withOpacity(0.3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Buat Pesanan",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Divider(
                  color: primaryColor,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Alamat Pengiriman",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: blackColor,
                  ),
                ),
                Text(
                  "Jl. Moch. Hatta Nomor 02, Cipedes, Tasikmalaya.",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomIconButton(
                      iconUrl: "assets/icons/note.png",
                      text: 'Tambah Catatan',
                      filled: false,
                    ),
                    CustomIconButton(
                      iconUrl: "assets/icons/pen.png",
                      text: 'Ganti Alamat',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 13.0,
                ),
                Column(
                  children: controller.pesananList
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
                CustomFullButton(
                  text: "Selanjutnya",
                  onTap: () => Get.to(const PembayaranView()),
                ),
                const SizedBox(
                  height: 80.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<PesananView> createState() => PesananController();
}
