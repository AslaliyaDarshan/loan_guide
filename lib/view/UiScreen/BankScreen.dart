import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/controller/HomeController.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'BankInDetail.dart';

class BankScreen extends StatefulWidget {
  const BankScreen({Key? key}) : super(key: key);

  @override
  State<BankScreen> createState() => _BankScreenState();
}

class _BankScreenState extends State<BankScreen> {
  HomeController cnt = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar("Bank Information"),
      body: Column(
        children: [
          Container(
              height: 23.h, width: 100.w, color: Colors.white.withOpacity(0.5)),
          Flexible(
            flex: 1,
            child: ListView.builder(
              itemCount: cnt.bank.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(const BankInDetail(), arguments: [
                      {"bank": cnt.bank[index]},
                      {"care": cnt.bankNumber[index]}
                    ]);
                  },
                  borderRadius: BorderRadius.circular(35),
                  child: Card(
                    elevation: 20,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 13),
                    color: Colors.transparent,
                    child: Container(
                      height: 8.h,
                      width: 100.w,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          text("${index + 1}", 18.sp,
                              pClrColor: Colors.white.withOpacity(0.9)),
                          text(cnt.bank[index], 18.sp,
                              pClrColor: Colors.white.withOpacity(0.9)),
                          const Icon(Icons.arrow_forward_ios,
                              color: Colors.white, size: 30),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
