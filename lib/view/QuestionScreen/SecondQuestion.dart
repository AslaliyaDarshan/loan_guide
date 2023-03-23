import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/QuestionScreen/ThirdQuestion.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SecondQuestion extends StatefulWidget {
  const SecondQuestion({Key? key}) : super(key: key);

  @override
  State<SecondQuestion> createState() => _SecondQuestionState();
}

class _SecondQuestionState extends State<SecondQuestion> {
  List titles = [
    "₹ 10,000",
    "₹ 20,000",
    "₹ 30,000",
    "₹ 40,000",
    "₹ 50,000",
    "₹ 60,000",
    "₹ 70,000",
    "₹ 80,000",
    "₹ 90,000",
    "₹ 1,00,000",
    "₹ 2,00,000",
    "₹ 5,00,000",
    "₹ 7,00,000",
    "₹ 10,00,000",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar("Earning"),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 23.h,
              width: double.infinity,
              color: Colors.white.withOpacity(0.7),
            ),
            height(2.h),
            text("How Many Do You Earn Monthly ?", 22.sp,
                pClrColor: Colors.white.withOpacity(0.8)),
            height(4.h),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 40.h,
                viewportFraction: 0.75,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayCurve: Curves.decelerate,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
                scrollPhysics: const BouncingScrollPhysics(),
              ),
              itemCount: titles.length,
              itemBuilder: (context, index, realIndex) {
                return InkWell(
                  onTap: () {
                    Get.to(const ThirdQuestion());
                  },
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xFF2C8160),
                            borderRadius: BorderRadius.circular(20)),
                        child: Lottie.asset("assets/lottie/money.json"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          titles[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
