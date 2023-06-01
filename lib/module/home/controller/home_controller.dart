import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zen_test/state_util.dart';
import '../view/home_view.dart';

class HomeController extends State<HomeView> implements MvcController {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  List mostSearch = [
    'Lobster Goreng',
    'Kerapu Bakar',
    'Jus Jeruk',
    'Cumi Tepung',
    'Kangkung',
    'Kepiting Rebus'
  ];

  List exploreMenu = [
    {
      "title": "Seafood",
      "imgUrl": "assets/images/seafood.png",
    },
    {
      "title": "Soup",
      "imgUrl": "assets/images/soup.png",
    },
    {
      "title": "Drink",
      "imgUrl": "assets/images/drink.png",
    },
    {
      "title": "Coffee",
      "imgUrl": "assets/images/coffee.png",
    },
    {
      "title": "Perasmanan",
      "imgUrl": "assets/images/perasmanan.png",
    },
    {
      "title": "Nasi Box",
      "imgUrl": "assets/images/nasi-box.png",
    },
  ];
}
