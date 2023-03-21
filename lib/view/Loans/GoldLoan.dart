import 'package:flutter/material.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class GoldLoan extends StatefulWidget {
  const GoldLoan({Key? key}) : super(key: key);

  @override
  State<GoldLoan> createState() => _GoldLoanState();
}

class _GoldLoanState extends State<GoldLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Gold Loan"),
      body: Scaffold(body: loans("Gold", "assets/image/gold.png")),
    );
  }
}
