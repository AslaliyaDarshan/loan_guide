import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/UiScreen/BankInDetail.dart';
import 'package:loan_guide/view/UiScreen/BankScreen.dart';
import 'package:loan_guide/view/UiScreen/CalculatorScreen.dart';
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
  bool star = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => exit(100),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor,
        body: Stack(
          alignment: Alignment.center,
          children: [
            SingleChildScrollView(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      custom(1, "assets/image/allLoan.png", "All Loan"),
                      custom(2, "assets/image/calsi.png", "Calculators"),
                    ],
                  ),
                  height(3.h),
                  custom(5, "assets/image/bnk.png", "Bank Details",
                      color: Colors.white),
                  height(3.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      custom(3, "assets/image/share.png", "Share"),
                      custom(4, "assets/image/rating.png", "Rating"),
                    ],
                  ),
                  height(10.h)
                ],
              ),
            ),
            star == true
                ? Lottie.asset("assets/lottie/star.json")
                : const SizedBox(),
          ],
        ),
      ),
    );
  }

  custom(int i, String pStrUrl, String pStrName, {Color? color}) {
    return InkWell(
      onTap: () {
        setState(
          () {
            index = i;
          },
        );
        if (index == 1) {
          Timer(
            const Duration(milliseconds: 400),
            () => Get.to(
              const MainScreen(),
            ),
          );
        } else if (index == 2) {
          Timer(
            const Duration(milliseconds: 400),
            () => Get.to(
              const CalculatorScreen(),
            ),
          );
        } else if (index == 5) {
          Timer(
            const Duration(milliseconds: 400),
            () => Get.to(
              const BankScreen(),
            ),
          );
        } else if (index == 4) {
          setState(() {
            star = true;
          });
          Timer(
            const Duration(seconds: 7),
            () => setState(() {
              star = false;
            }),
          );
        }
      },
      borderRadius: BorderRadius.circular(30),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 23.5.h,
            width: 23.5.h,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border:
                  index == i ? Border.all(color: Colors.white, width: 3) : null,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                pStrUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          text(pStrName, 20.sp, pClrColor: color)
        ],
      ),
    );
  }
}
