import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'SecondQuestion.dart';

class FirstQuestion extends StatefulWidget {
  const FirstQuestion({Key? key}) : super(key: key);

  @override
  State<FirstQuestion> createState() => _FirstQuestionState();
}

class _FirstQuestionState extends State<FirstQuestion> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar("Status"),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            height(3.5.h),
            Container(
              height: 25.h,
              width: double.infinity,
              color: Colors.white.withOpacity(0.7),
            ),
            height(4.h),
            button(1, "assets/image/emp.png"),
            height(5.h),
            button(2, "assets/image/self.png"),
            height(5.h),
            button(3, "assets/image/start.png"),
            height(5.h),
            button(4, "assets/image/std.png"),
            height(5.h),
            button(5, "assets/image/un.png"),
            height(5.h),
            button(6, "assets/image/enter.png"),
          ],
        ),
      ),
    );
  }

  button(int i, String pStrUrl) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        setState(
          () {
            index = i;
          },
        );
        Timer(
          const Duration(milliseconds: 500),
          () => Get.to(
            const SecondQuestion(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: index == i
              ? Border.all(
                  color: Colors.white,
                  width: 3,
                )
              : null,
        ),
        child: Image.asset(pStrUrl),
      ),
    );
  }
}
