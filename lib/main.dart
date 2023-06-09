import 'package:zen_test/state_util.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zen_test/core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sekoci Seafood",
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        appBarTheme: AppBarTheme(
          backgroundColor: whiteColor,
        ),
      ),
      home: const SplashScreenView(),
    );
  }
}
