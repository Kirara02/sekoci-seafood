import 'package:flutter/material.dart';
import 'package:zen_test/state_util.dart';
import '../view/pesanan_view.dart';

class PesananController extends State<PesananView> implements MvcController {
  static late PesananController instance;
  late PesananView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List pesananList = [
    {
      'imgUrl': "assets/images/lobster_goreng.png",
      'title': "Lobster Goreng",
      'price': "Rp 100.000",
      'diskon': "Rp 80.000",
      'extra': "",
    },
    {
      'imgUrl': "assets/images/kepiting_rebus.png",
      'title': "Kepiting Rebus",
      'price': "Rp 70.000",
      'diskon': "",
      'extra': "",
    },
    {
      'imgUrl': "assets/images/lobster_goreng.png",
      'title': "Lobster Goreng",
      'price': "Rp 50.000",
      'diskon': "",
      'extra': "Extra 10%",
    },
    {
      'imgUrl': "assets/images/jus_jeruk.png",
      'title': "Jus Jeruk",
      'price': "Rp 10.000",
      'diskon': "",
      'extra': "",
    },
  ];
}
