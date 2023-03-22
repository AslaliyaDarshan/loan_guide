import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/UiScreen/MainScreen.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({Key? key}) : super(key: key);

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Lottie.asset("assets/lottie/cong.json", height: 45.h),
          text(
            "Congratulation your document is verified and your $loanName is Successfully Submitted.",
            22.5.sp,
            pClrColor: Colors.white.withOpacity(0.9),
          ),
          confirmButton(() {
            Get.off(const MainScreen());
          }, 3.h, "Submit")
        ],
      ),
    );
  }
}
