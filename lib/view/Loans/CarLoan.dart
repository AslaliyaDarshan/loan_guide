import 'package:flutter/material.dart';
import 'package:loan_guide/view/constants/ConstantsClass.dart';

class CarLoan extends StatefulWidget {
  const CarLoan({Key? key}) : super(key: key);

  @override
  State<CarLoan> createState() => _CarLoanState();
}

class _CarLoanState extends State<CarLoan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Car Loan"),
      body: Scaffold(body: loans("Car", "assets/image/car.png")),
    );
  }
}
