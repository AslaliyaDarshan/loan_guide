import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/Loans/AadhaarLoan.dart';
import 'package:loan_guide/view/Loans/AgricultureLoan.dart';
import 'package:loan_guide/view/Loans/BikeLoan.dart';
import 'package:loan_guide/view/Loans/BusinessLoan.dart';
import 'package:loan_guide/view/Loans/CarLoan.dart';
import 'package:loan_guide/view/Loans/CreditCardLoan.dart';
import 'package:loan_guide/view/Loans/EducationLoan.dart';
import 'package:loan_guide/view/Loans/GoldLoan.dart';
import 'package:loan_guide/view/Loans/HomeLoan.dart';
import 'package:loan_guide/view/Loans/PersonalLoan.dart';
import 'package:loan_guide/view/UiScreen/StartScreen.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

String loanName = "";

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => back(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              height(20),
              box(
                  () {
                    Get.off(const PersonalLoan());
                    setState(() {
                      loanName = "Personal loan";
                    });
                  },
                  23.5.h,
                  "assets/image/personal.png",
                  () {
                    Get.off(const CreditCardLoan());
                    setState(() {
                      loanName = "CreditCard Loan";
                    });
                  },
                  20.5.h,
                  "assets/image/creditCard.png"),
              height(40),
              box(
                  () {
                    Get.off(const BusinessLoan());
                    setState(() {
                      loanName = "Business Loan";
                    });
                  },
                  22.5.h,
                  "assets/image/business.png",
                  () {
                    Get.off(const AadhaarLoan());
                    setState(() {
                      loanName = "Aadhaar Loan";
                    });
                  },
                  19.5.h,
                  "assets/image/aadhaar.png"),
              height(40),
              box(
                  () {
                    Get.off(const HomeLoan());
                    setState(() {
                      loanName = "Home Loan";
                    });
                  },
                  20.h,
                  "assets/image/home.png",
                  () {
                    Get.off(const GoldLoan());
                    setState(() {
                      loanName = "Gold Loan";
                    });
                  },
                  20.h,
                  "assets/image/gold.png"),
              height(40),
              box(
                  () {
                    Get.off(const BikeLoan());
                    setState(() {
                      loanName = "Bike Loan";
                    });
                  },
                  19.5.h,
                  "assets/image/bike.png",
                  () {
                    Get.off(const CarLoan());
                    setState(() {
                      loanName = "Car Loan";
                    });
                  },
                  22.5.h,
                  "assets/image/car.png"),
              height(40),
              box(
                  () {
                    Get.off(const AgricultureLoan());
                    setState(() {
                      loanName = "Agriculture Loan";
                    });
                  },
                  20.5.h,
                  "assets/image/agriculture.png",
                  () {
                    Get.off(const EducationLoan());
                    setState(() {
                      loanName = "Education Loan";
                    });
                  },
                  23.5.h,
                  "assets/image/education.png"),
              height(4.h),
              Container(
                height: 22.h,
                width: 100.w,
                color: Colors.white.withOpacity(0.5),
              ),
            ],
          ),
        ),
      ),
    );
  }

  box(void Function() onTap, double pDblHeight, String pStrUrl,
      void Function() onTap1, double pDblHeight1, String pStrUrl1) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Container(
            height: pDblHeight,
            width: pDblHeight,
            decoration: BoxDecoration(
              // color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 15)
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(pStrUrl),
            ),
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(20),
          splashColor: backgroundColor,
          onTap: onTap1,
          child: Container(
            height: pDblHeight1,
            width: pDblHeight1,
            decoration: BoxDecoration(
              // color: Colors.white.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 15)
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(pStrUrl1),
            ),
          ),
        ),
      ],
    );
  }

  back() {
    Get.offAll(const StartScreen());
  }
}
