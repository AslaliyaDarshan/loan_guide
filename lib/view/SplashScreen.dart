import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'constants/ConstantsClass.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          height(mHeight * 0.13),
          Lottie.asset("assets/lottie/all.json"),
          height(mHeight * 0.1),
          confirmButton(() {
            Get.toNamed("/IntroScreen");
          }, 0, mHeight, mWidth, "Get Started"),
        ],
      ),
    );
  }
}
