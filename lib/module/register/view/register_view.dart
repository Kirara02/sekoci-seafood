import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/shared/theme/theme_config.dart';
import 'package:zen_test/shared/widget/button/custom_button.dart';
import 'package:zen_test/shared/widget/form/custom_input_form.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/sekoci_logo.png',
                  width: 150,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Registrasi Sekoci Seafood ',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Delivery Order',
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                CustomInputForm(
                  title: "Nama",
                  hint: 'Masukan Nama Lengkap',
                  controller: controller.namaController,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                CustomInputForm(
                  title: "Email",
                  hint: 'Masukan Email',
                  controller: controller.emailController,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                CustomInputForm(
                  title: "Nomor HP",
                  hint: 'Masukan Nomor HP',
                  controller: controller.nomorController,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                CustomInputForm(
                  title: "Password",
                  hint: 'Masukan Password',
                  controller: controller.passwordController,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                CustomInputForm(
                  title: "Ulangi Password",
                  hint: 'Ulangi Password',
                  controller: controller.ulangiController,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(text: 'Sudah Punya Akun? Login '),
                      TextSpan(
                        text: 'Disini!',
                        style: const TextStyle(
                          color: primaryColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.to(const LoginView()),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      text: "Login",
                      filled: false,
                      onTap: () => Get.to(const LoginView()),
                    ),
                    CustomButton(
                      text: "Registrasi",
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
