import 'package:flutter/material.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class CreditCardLoan extends StatefulWidget {
  const CreditCardLoan({Key? key}) : super(key: key);

  @override
  State<CreditCardLoan> createState() => _CreditCardLoanState();
}

class _CreditCardLoanState extends State<CreditCardLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("CreditCard Loan"),
      body: Scaffold(body: loans("CreditCard", "assets/image/creditCard.png")),
    );
  }
}
