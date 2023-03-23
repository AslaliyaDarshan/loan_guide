import 'package:flutter/material.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class BikeLoan extends StatefulWidget {
  const BikeLoan({Key? key}) : super(key: key);

  @override
  State<BikeLoan> createState() => _BikeLoanState();
}

class _BikeLoanState extends State<BikeLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: appBar("Bike Loan"),
      body: loans("Bike", "assets/image/bike.png"),
    );
  }
}
