import 'package:flutter/material.dart';

Color backgroundColor = const Color(0xFF0d3326);

Widget height(double height) {
  return SizedBox(
    height: height,
  );
}

Widget width(double width) {
  return SizedBox(
    width: width,
  );
}

confirmButton(void Function() onTap, double pDblBtmPadding, double pDblHeight,
    double pDblWidth, String pStrText) {
  return Padding(
    padding: EdgeInsets.only(left: 20, right: 20, bottom: pDblBtmPadding),
    child: InkWell(
      borderRadius: BorderRadius.circular(35),
      onTap: onTap,
      child: Container(
        height: pDblHeight * 0.075,
        width: pDblWidth,
        alignment: Alignment.center,
        // margin: EdgeInsets.only(left: 20, right: 20, bottom: pDblBtmPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.8),
              spreadRadius: 1,
              blurRadius: 15,
            ),
          ],
        ),
        child: text(pStrText, pDblWidth * 0.085),
      ),
    ),
  );
}

text(String pStrText, double pDblFontSize,
    {Color? pClrColor, FontWeight? pFontWeight}) {
  return Text(
    pStrText,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: pClrColor ?? const Color(0xff144d39),
      fontSize: pDblFontSize,
      fontWeight: pFontWeight ?? FontWeight.w700,
      fontFamily: "sri",
      letterSpacing: 2,
    ),
  );
}
