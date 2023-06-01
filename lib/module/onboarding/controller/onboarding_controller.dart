import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zen_test/state_util.dart';
import '../view/onboarding_view.dart';

class OnboardingController extends State<OnboardingView>
    implements MvcController {
  static late OnboardingController instance;
  late OnboardingView view;

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
  CarouselController carouselController = CarouselController();

  List titles = [
    'Makan Seafood\nSegar Di Rumah',
    'Kami Hanya Proses\nDari Pesanan',
    'Pesan Antar Bisa\nDari Manapun'
  ];

  List<String> subtitles = [
    "Jangan Risau, Kamu Bisa Menikmati dari Rumah",
    "Kami Siap antar dimana pun kamu berada",
    "Kami siap mengantarkan Seafood Segar kesukaan mu dimana pun kamu berada"
  ];
}
