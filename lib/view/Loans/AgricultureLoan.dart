import 'package:flutter/material.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class AgricultureLoan extends StatefulWidget {
  const AgricultureLoan({Key? key}) : super(key: key);

  @override
  State<AgricultureLoan> createState() => _AgricultureLoanState();
}

class _AgricultureLoanState extends State<AgricultureLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar("Agriculture Loan"),
      body: loans("Agriculture", "assets/image/agriculture.png"),
    );
  }
}
