import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/UiScreen/MainScreen.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            height(3.h),
            Container(
              height: 22.h,
              width: 100.w,
              color: Colors.white.withOpacity(0.5),
            ),
            height(3.h),
            InkWell(
              borderRadius: BorderRadius.circular(25),
              onTap: () {
                Get.to(const MainScreen());
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  "assets/image/strt.png",
                  fit: BoxFit.fill,
                  height: 25.h,
                  width: 25.h,
                ),
              ),
            ),
            height(2.h),
            Container(
              height: 25.h,
              width: 25.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Lottie.asset("assets/lottie/rating.json"),
            ),
            height(2.h),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                "assets/image/share.png",
                fit: BoxFit.cover,
                height: 25.h,
                width: 25.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
