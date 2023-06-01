import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/state_util.dart';
import '../view/splash_screen_view.dart';

class SplashScreenController extends State<SplashScreenView>
    implements MvcController {
  static late SplashScreenController instance;
  late SplashScreenView view;

  @override
  void initState() {
    instance = this;
    super.initState();

    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAll(
        const OnboardingView(),
      ),
    );
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
