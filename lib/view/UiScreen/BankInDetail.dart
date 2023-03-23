import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BankInDetail extends StatefulWidget {
  const BankInDetail({Key? key}) : super(key: key);

  @override
  State<BankInDetail> createState() => _BankInDetailState();
}

class _BankInDetailState extends State<BankInDetail> {
  var data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar(data[0]["bank"]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 24.h,
            width: 100.w,
            color: Colors.white.withOpacity(0.5),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              /* Container(
                height: 25.h,
                width: 100.w,
                margin: const EdgeInsets.all(2),
                padding: EdgeInsets.only(top: 4.h, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: const Offset(0, 5),
                        spreadRadius: 9,
                        blurRadius: 20)
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      data[0]["bank"],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                      ),
                    ),
                    height(1.h),
                    text(
                        " * Please dial from registered mobile number in bank and you will receive an sms.",
                        16.5.sp),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, 14.5.h),
                child: Container(
                  height: 12.h,
                  width: 100.w,
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(0, 5),
                          spreadRadius: 2,
                          blurRadius: 20)
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text("Bank Customer Care", 20.5.sp),
                          text("   ${data[1]["care"]}", 18.5.sp)
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Clipboard.setData(ClipboardData(
                                  text: data[1]["care"].toString()))
                              .then(
                            (value) => Get.snackbar(
                              "Copy",
                              "Bank Number  ${data[1]["care"]}",
                              colorText: Colors.white,
                              barBlur: 25,
                              backgroundColor: const Color(0xFF2C8362),
                              margin: const EdgeInsets.only(bottom: 50),
                              animationDuration: const Duration(seconds: 2),
                              overlayBlur: 1,
                              snackPosition: SnackPosition.BOTTOM,
                              icon: Icon(
                                Icons.add_alert,
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.call,
                          color: Colors.blue,
                          size: 60,
                        ),
                      )
                    ],
                  ),
                ),
              ),*/
              Container(
                height: 30.h,
                width: 100.w,
                padding: EdgeInsets.only(top: 4.h, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Text(
                      data[0]["bank"],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                      ),
                    ),
                    height(2.h),
                    text(
                        " * Please dial from registered mobile number in bank and you will receive an sms.",
                        17.sp),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, 14.5.h),
                child: Container(
                  height: 12.h,
                  width: 100.w,
                  margin: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(0, 5),
                          spreadRadius: 2,
                          blurRadius: 20)
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          text("Bank Customer Care", 20.sp),
                          text("   ${data[1]["care"]}", 17.sp)
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Clipboard.setData(ClipboardData(
                                  text: data[1]["care"].toString()))
                              .then(
                            (value) => Get.snackbar(
                              "Copy",
                              "Bank Number  ${data[1]["care"]}",
                              colorText: Colors.white,
                              barBlur: 25,
                              backgroundColor: const Color(0xFF2C8362),
                              margin: const EdgeInsets.only(bottom: 50),
                              animationDuration: const Duration(seconds: 2),
                              overlayBlur: 1,
                              snackPosition: SnackPosition.BOTTOM,
                              icon: Icon(
                                Icons.add_alert,
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.call,
                          color: Colors.blue,
                          size: 60,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 23.h,
            width: 100.w,
            color: Colors.white.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
