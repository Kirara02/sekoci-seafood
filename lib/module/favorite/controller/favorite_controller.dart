import 'package:zen_test/core.dart';
import 'package:flutter/material.dart';
import '../view/favorite_view.dart';

class FavoriteController extends State<FavoriteView> implements MvcController {
  static late FavoriteController instance;
  late FavoriteView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List favoriteList = [
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
