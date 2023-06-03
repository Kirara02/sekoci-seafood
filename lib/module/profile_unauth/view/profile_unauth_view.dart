import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/shared/widget/app_bar/custom_app_bar.dart';
import '../controller/profile_unauth_controller.dart';

class ProfileUnauthView extends StatefulWidget {
  const ProfileUnauthView({Key? key}) : super(key: key);

  Widget build(context, ProfileUnauthController controller) {
    controller.view = this;

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(
          horizontal: 77,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/alert.png'),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "OOPS!",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Anda harus melakukan Login untuk akses ini",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomButton(
                text: "Login",
                width: double.infinity,
                onTap: () => Get.to(const LoginView()),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                "Atau",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              CustomButton(
                text: "Register",
                filled: false,
                width: double.infinity,
                onTap: () => Get.to(const RegisterView()),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileUnauthView> createState() => ProfileUnauthController();
}
