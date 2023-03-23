import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/Calculator/EMICalculator.dart';
import 'package:loan_guide/view/Calculator/FDCalculator.dart';
import 'package:loan_guide/view/Calculator/GSTCalculator.dart';
import 'package:loan_guide/view/Calculator/SIPCalculator.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      appBar: appBar("All Types Calculator"),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            height(1.h),
            Container(
              height: 22.h,
              width: 100.w,
              color: Colors.white.withOpacity(0.5),
            ),
            height(3.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custom(1, "assets/image/sip.png"),
                custom(2, "assets/image/gst.png"),
              ],
            ),
            height(3.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                custom(3, "assets/image/emi.png"),
                custom(4, "assets/image/fd.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  custom(int i, String pStrUrl) {
    return InkWell(
      onTap: () {
        setState(
          () {
            index = i;
          },
        );
        if (index == 1) {
          Get.to(const SIPCalculator());
        } else if (index == 2) {
          Get.to(const GstCalculator());
        } else if (index == 3) {
          Get.to(const EMICalculator());
        } else if (index == 4) {
          Get.to(const FDCalculator());
        }
      },
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: 23.5.h,
        width: 23.5.h,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: index == i ? Border.all(color: Colors.white, width: 3) : null,
          borderRadius: BorderRadius.circular(30),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            pStrUrl,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
