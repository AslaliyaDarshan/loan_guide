import 'package:flutter/material.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class HomeLoan extends StatefulWidget {
  const HomeLoan({Key? key}) : super(key: key);

  @override
  State<HomeLoan> createState() => _HomeLoanState();
}

class _HomeLoanState extends State<HomeLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Home Loan"),
      body: Scaffold(body: loans("Home", "assets/image/home.png")),
    );
  }
}
