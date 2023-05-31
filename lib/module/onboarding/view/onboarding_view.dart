import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import '../controller/onboarding_controller.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  Widget build(context, OnboardingController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Onboarding"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<OnboardingView> createState() => OnboardingController();
}