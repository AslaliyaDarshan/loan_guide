import 'package:flutter/material.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class EducationLoan extends StatefulWidget {
  const EducationLoan({Key? key}) : super(key: key);

  @override
  State<EducationLoan> createState() => _EducationLoanState();
}

class _EducationLoanState extends State<EducationLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Education Loan"),
      body: loans("Education", "assets/image/education.png"),
    );
  }
}
