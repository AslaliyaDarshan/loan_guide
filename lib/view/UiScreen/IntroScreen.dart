import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/image/splash.png",
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              height(3.h),
              Container(
                height: 22.h,
                width: 100.w,
                color: Colors.white.withOpacity(0.5),
              ),
              const Spacer(),
              confirmButton(() {
                Get.toNamed("/MainScreen");
              }, 3.h, "Started")
            ],
          ),
        ],
      ),
    );
  }
}
