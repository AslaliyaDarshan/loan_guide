import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/QuestionScreen/FinalScreen.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class SeventhQuestion extends StatefulWidget {
  const SeventhQuestion({Key? key}) : super(key: key);

  @override
  State<SeventhQuestion> createState() => _SeventhQuestionState();
}

class _SeventhQuestionState extends State<SeventhQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: questions(() {
        Get.to(const FinalScreen());
      }, "Credit Card"),
    );
  }
}
