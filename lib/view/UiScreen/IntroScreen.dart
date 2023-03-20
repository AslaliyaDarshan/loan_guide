import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/image/splash.png",
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              height(mHeight * 0.01),
              Container(
                height: mHeight / 4.5,
                width: mWidth,
                color: Colors.white.withOpacity(0.5),
              ),
              const Spacer(),
              confirmButton(() {
                Get.toNamed("/MainScreen");
              }, mHeight * 0.04, mHeight, mWidth, "Started")
            ],
          ),
        ],
      ),
    );
  }
}
