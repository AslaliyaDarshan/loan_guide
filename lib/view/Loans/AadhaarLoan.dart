import 'package:flutter/material.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class AadhaarLoan extends StatefulWidget {
  const AadhaarLoan({Key? key}) : super(key: key);

  @override
  State<AadhaarLoan> createState() => _AadhaarLoanState();
}

class _AadhaarLoanState extends State<AadhaarLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar("AadhaarCard Loan"),
      body: loans("AadhaarCard", "assets/image/aadhaar.png"),
    );
  }
}
