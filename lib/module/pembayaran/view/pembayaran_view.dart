import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/shared/widget/button/custom_full_button.dart';
import 'package:zen_test/shared/widget/card/bank_card.dart';
import 'package:zen_test/shared/widget/card/ewallet_card.dart';
import '../controller/pembayaran_controller.dart';

class PembayaranView extends StatefulWidget {
  const PembayaranView({Key? key}) : super(key: key);

  Widget build(context, PembayaranController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 60,
            ),
            const SizedBox(
              width: 5.0,
            ),
            Image.asset(
              "assets/images/sekoci_text.png",
              width: 150,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge(
              label: const Text(
                "4",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Image.asset(
                "assets/icons/cart.png",
                width: 22,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: blackColor,
                      size: 18,
                    ),
                  ),
                  const Text(
                    "Pilih Pembayaran",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Divider(
                color: primaryColor,
                height: 0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                "E-Wallet",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              EwalletCard(imgUrl: 'assets/images/midtrans.png'),
              const Divider(
                color: primaryColor,
                height: 20,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                "Transfer Rekening Bank",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: controller.bankList
                    .map((item) => BankCard(imgUrl: item))
                    .toList(),
              ),
              const Divider(
                color: primaryColor,
                height: 20,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                "Lainnya",
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: primaryColor,
                ),
                child: Center(
                  child: Text(
                    "Cash on Delivery",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold,
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: primaryColor,
                height: 20,
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'Potongan Harga: '),
                          TextSpan(
                            text: 'Rp 0',
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'Biaya Pengiriman: '),
                          TextSpan(
                            text: 'Rp 10.000',
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(text: 'Total Harga: '),
                          TextSpan(
                            text: 'Rp 240.000',
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomFullButton(
                text: "Buat Pesanan",
                onTap: () => Get.to(const DetailPesananView()),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<PembayaranView> createState() => PembayaranController();
}
