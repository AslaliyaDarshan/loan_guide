import 'package:flutter/material.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var mHeight = MediaQuery.of(context).size.height;
    var mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            height(40),
            box(mHeight * 0.23, mHeight * 0.2),
            height(40),
            box(mHeight * 0.22, mHeight * 0.19),
            height(40),
            box(mHeight * 0.19, mHeight * 0.19),
            height(40),
            box(mHeight * 0.19, mHeight * 0.22),
            height(40),
            box(mHeight * 0.2, mHeight * 0.23),
            height(20),
          ],
        ),
      ),
    );
  }

  box(
    double pDblHeight,
    double pDblHeight1,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: pDblHeight,
          width: pDblHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: Colors.white60, spreadRadius: 2, blurRadius: 15)
            ],
          ),
        ),
        Container(
          height: pDblHeight1,
          width: pDblHeight1,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: Colors.white60, spreadRadius: 2, blurRadius: 15)
            ],
          ),
        ),
      ],
    );
  }
}
