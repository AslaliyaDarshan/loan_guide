import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/QuestionScreen/SixthQuestion.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class FifthQuestion extends StatefulWidget {
  const FifthQuestion({Key? key}) : super(key: key);

  @override
  State<FifthQuestion> createState() => _FifthQuestionState();
}

class _FifthQuestionState extends State<FifthQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: questions(() {
        Get.to(const SixthQuestion());
      }, "Pan Card"),
    );
  }
}
