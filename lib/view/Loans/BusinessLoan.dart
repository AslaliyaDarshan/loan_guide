import 'package:flutter/material.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class BusinessLoan extends StatefulWidget {
  const BusinessLoan({Key? key}) : super(key: key);

  @override
  State<BusinessLoan> createState() => _BusinessLoanState();
}

class _BusinessLoanState extends State<BusinessLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false,
      appBar: appBar("Business Loan"),
      body: loans("Business", "assets/image/business.png"),
    );
  }
}
