import 'package:flutter/material.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class PersonalLoan extends StatefulWidget {
  const PersonalLoan({Key? key}) : super(key: key);

  @override
  State<PersonalLoan> createState() => _PersonalLoanState();
}

class _PersonalLoanState extends State<PersonalLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Personal Loan"),
      body: Scaffold(
        body: loans("Personal", "assets/image/personal.png"),
      ),
    );
  }
}
