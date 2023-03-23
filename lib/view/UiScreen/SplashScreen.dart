import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constants/ConstantsClass.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;

  @override
  void initState() {
    getConnectivity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          height(8.h),
          Lottie.asset("assets/lottie/splash.json", height: 70.h, width: 100.w),
          const Spacer(),
          confirmButton(() {
            if (isDeviceConnected == false) {
              dialog();
            } else {
              Get.offAllNamed("/IntroScreen");
            }
          }, 5.h, "Get Started"),
        ],
      ),
    );
  }

  getConnectivity() {
    subscription = Connectivity().onConnectivityChanged.listen(
      (ConnectivityResult result) async {
        isDeviceConnected = (await InternetConnectionChecker().hasConnection);
        if (isDeviceConnected && isAlertSet == false) {
          dialog();
          setState(() {
            isAlertSet = true;
          });
        } else {
          // openAds();
        }
      },
    );
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  dialog() => Get.defaultDialog(
        barrierDismissible: false,
        backgroundColor: const Color(0xFFffffff),
        title: "No Internet",
        titleStyle: TextStyle(color: backgroundColor),
        actions: [
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(const StadiumBorder()),
              backgroundColor: MaterialStateProperty.all(
                const Color(0xFFFFFFFF),
              ),
            ),
            onPressed: () async {
              Get.back();
              setState(() {
                isAlertSet = false;
              });
              isDeviceConnected =
                  await InternetConnectionChecker().hasConnection;
              if (!isDeviceConnected) {
                dialog();
                setState(() {
                  isAlertSet = true;
                });
              } else {}
            },
            child: Text(
              "Retry",
              style: TextStyle(
                color: backgroundColor,
              ),
            ),
          ),
        ],
        content: SizedBox(
          height: 30.h,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 70,
                    width: 70,
                    child: Image.asset('assets/image/internet.webp'),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        "Check Your Data Connection \n Connect Internet & Try Again...",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: backgroundColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
