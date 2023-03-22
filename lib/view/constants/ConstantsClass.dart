import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/QuestionScreen/FirstQuestion.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Color backgroundColor = const Color(0xFF0d3326);

Widget height(double height) {
  return SizedBox(
    height: height,
  );
}

Widget width(double width) {
  return SizedBox(
    width: width,
  );
}

confirmButton(
  void Function() onTap,
  double pDblBtmPadding,
  String pStrText, {
  double? pDblWidth,
  double? pDblFSize,
  Color? pClrTextColor,
}) {
  return Padding(
    padding: EdgeInsets.only(left: 20, right: 20, bottom: pDblBtmPadding),
    child: InkWell(
      borderRadius: BorderRadius.circular(35),
      onTap: onTap,
      child: Container(
        height: 7.5.h,
        width: pDblWidth ?? double.infinity,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: const Color(0xFF1F6E52),
          borderRadius: BorderRadius.circular(35),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 1,
              blurRadius: 15,
            ),
          ],
        ),
        child: Center(
          child: text(pStrText, pDblFSize ?? 23.sp, pClrColor: Colors.white),
        ),
      ),
    ),
  );
}

appBar(String pStrText) {
  return AppBar(
    leading: InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        Get.back();
      },
      child: Icon(
        Icons.arrow_back,
        color: const Color(0xFF0d3326),
        size: 26.sp,
      ),
    ),
    backgroundColor: const Color(0xFF2C8362),
    title: Text(
      pStrText,
      style: TextStyle(
        color: const Color(0xFF0d3326),
        fontSize: 21.sp,
        fontWeight: FontWeight.w700,
        fontFamily: "sri",
        letterSpacing: 2,
      ),
    ),
  );
}

text(String pStrText, double pDblFontSize,
    {Color? pClrColor, FontWeight? pFontWeight}) {
  return Text(
    pStrText,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: pClrColor ?? const Color(0xff144d39),
      fontSize: pDblFontSize,
      fontWeight: pFontWeight ?? FontWeight.w700,
      fontFamily: "sri",
      letterSpacing: 2,
    ),
  );
}

loans(String pStrLoanType, String pStrUrl) {
  return Container(
    height: 100.h,
    width: 100.w,
    color: backgroundColor,
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              height(1.h),
              Container(
                height: 22.h,
                width: 100.w,
                color: Colors.white.withOpacity(0.5),
              ),
              height(1.h),
              Image.asset(pStrUrl),
              height(2.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SelectableText(
                  """Gone are those days, when the process of getting a $pStrLoanType loan was lengthy and tedious. This is the era of hassle-free quick $pStrLoanType loans. Nowadays, the processing of a $pStrLoanType loan application has become faster once the applicant submits all necessary documents. Here is a step-by-step guide to understand $pStrLoanType loan process in India.


Step 1 : Application of $pStrLoanType loan

The process of availing a $pStrLoanType loan begins with the application form. You can apply online for a $pStrLoanType loan with help of various bank’s websites which also provide self-help tools like a $pStrLoanType loan eligibility calculator and a $pStrLoanType loan EMI calculator online.
To complete the $pStrLoanType loan process, you need to submit certain documents that act like identity proof, address proof, income proof and so on. You also need to provide details of your financial assets and liabilities. Following are few essential documents, you need to submit in order to complete the application process,

=>  Age proof

=>  Address proof

=>  Income proof

Property documents, in case the property to be purchased is finalised
Employment details, including a summary stating the working nature of your employer.
Nowadays, banks provide door-step services to their customers, where their representative will come and personally collect all the documents required to get a $pStrLoanType loan.
""",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 19.sp),
                ),
              ),
              height(1.h),
              Image.asset(pStrUrl),
              height(2.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SelectableText(
                  """
Step 2 : Paying processing fees

$pStrLoanType loan processing fees are the mandatory charges you need to pay to the bank to process your application. Every bank has its guidelines regarding processing fees. The $pStrLoanType loan processing fee is a one-time non-refundable charge that borrowers are required to pay to the $pStrLoanType loan lenders.

Step 3 : Discussion with your bank

After paying the processing fees, the bank or loan lenders check the authenticity of documents shared. This process generally takes two to three days; however, if the documentation is done correctly, this part of the $pStrLoanType loan process gets over quickly. Later on, the bank asks the applicant for a face-to-face interaction to discuss further details of the $pStrLoanType loan.
The discussion is generally meant to confirm the repaying capabilities of the applicant. However, you can clear your doubts regarding the $pStrLoanType loan during a conversation with the bank. Banks help their customers at each stage of the $pStrLoanType loan application process.

Step 4 : Approval of a loan

Every bank thoroughly verifies all the documents submitted by the applicant before sanctioning the loan. The approval of your $pStrLoanType loan application is dependent on the bank as well as the documents you have submitted. If all works well, your $pStrLoanType loan gets approved, and you receive a confirmation letter stating the amount to be sanctioned by the bank.

Step 5 : Processing of confirmation letter

After receiving the confirmation letter, you need to submit its signed copy which acts as your acceptance to the offer provided by the bank. Then, the bank processes the documents of the property to be purchased. Many banks often send their representative to inspect the premises of the property to be bought.

Step 6 : Disbursement of the loan

Once the inspection of the property is done, you need to sign the agreement of the $pStrLoanType loan provided by the bank. After that, you receive the loan amount via disbursement mode opted from your end.
""",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 19.sp),
                ),
              ),
              Container(
                height: 22.h,
                width: 100.w,
                color: Colors.white.withOpacity(0.5),
              ),
              height(15.h),
            ],
          ),
        ),
        confirmButton(() {
          Get.to(const FirstQuestion());
        }, 3.h, "Go To Document!", pDblWidth: 60.w, pDblFSize: 18.5.sp),
      ],
    ),
  );
}

questions(void Function() onTap, String pStrCard) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 80.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(25),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
              sigmaX: 2, sigmaY: 10, tileMode: TileMode.mirror),
          child: Column(
            children: [
              height(3.5.h),
              Container(
                height: 23.h,
                width: double.infinity,
                color: Colors.black.withOpacity(0.3),
              ),
              height(3.h),
              text("Do you have $pStrCard?", 24.sp),
              height(10.h),
              InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 7.5.h,
                  width: 85.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1F6E52),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: text("Yes, I have $pStrCard.", 18.sp,
                      pClrColor: Colors.white),
                ),
              ),
              height(3.h),
              InkWell(
                onTap: () {
                  Get.snackbar(
                    "Alert",
                    "You can proceed only if you have the $pStrCard...",
                    colorText: Colors.white,
                    barBlur: 25,
                    backgroundColor: const Color(0xFF2C8362),
                    margin: const EdgeInsets.only(bottom: 50),
                    animationDuration: const Duration(seconds: 2),
                    overlayBlur: 15,
                    snackPosition: SnackPosition.BOTTOM,
                    icon: Icon(
                      Icons.add_alert,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 7.5.h,
                  width: 85.w,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1F6E52),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: text("No, I have no $pStrCard.", 18.sp,
                      pClrColor: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
