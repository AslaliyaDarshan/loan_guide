import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/QuestionScreen/FourthQuestion.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ThirdQuestion extends StatefulWidget {
  const ThirdQuestion({Key? key}) : super(key: key);

  @override
  State<ThirdQuestion> createState() => _ThirdQuestionState();
}

class _ThirdQuestionState extends State<ThirdQuestion> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Payment Method"),
      backgroundColor: backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 22.h,
            width: 100.w,
            color: Colors.white.withOpacity(0.5),
          ),
          Container(
            height: 10.h,
            width: 100.w,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: text(
                "In witch method do you went to take The Loan Amount?", 19.sp,
                pClrColor: const Color(0xff217052)),
          ),
          height(4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              custom(1, "assets/image/bank.png"),
              custom(2, "assets/image/cash.png"),
            ],
          ),
          height(4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              custom(3, "assets/image/online.png"),
              custom(4, "assets/image/cheque.png"),
            ],
          ),
        ],
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
        Timer(
          const Duration(milliseconds: 500),
          () => Get.to(
            const FourthScreen(),
          ),
        );
      },
      borderRadius: BorderRadius.circular(30),
      child: Container(
        height: 22.h,
        width: 22.h,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: index == i ? Border.all(color: Colors.white, width: 3) : null,
          borderRadius: BorderRadius.circular(30),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(pStrUrl)),
      ),
    );
  }
}
