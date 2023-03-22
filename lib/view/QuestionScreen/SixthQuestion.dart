import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loan_guide/view/QuestionScreen/SeventhQuestion.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class SixthQuestion extends StatefulWidget {
  const SixthQuestion({Key? key}) : super(key: key);

  @override
  State<SixthQuestion> createState() => _SixthQuestionState();
}

class _SixthQuestionState extends State<SixthQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: questions(() {
        Get.to(const SeventhQuestion());
      }, "Ration Card"),
    );
  }
}
