import 'package:flutter/material.dart';

class CustomeText {
  static Widget headerText1(String text, {Color? textColor}) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 44,
        fontWeight: FontWeight.w700,
        color: textColor ?? Colors.black,
      ),
    );
  }

  static Widget headerText2(String text, {Color? textColor}) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        color: textColor ?? Colors.black,
      ),
    );
  }

  static Widget headerText3(String text, {Color? textColor}) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: textColor ?? Colors.black,
      ),
    );
  }

  static Widget headerText4(String text, {Color? textColor}) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: textColor ?? Colors.black,
      ),
    );
  }

  static Widget paragraph1(
    String text, {
    Color? textColor,
    double? textHeight,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        height: textHeight,
        color: textColor ?? Colors.black87,
      ),
    );
  }

  static Widget paragraph2(
    String text, {
    Color? textColor,
    double? textHeight,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        height: textHeight,
        color: textColor ?? Colors.black87,
      ),
    );
  }

  static Widget paragraph3(
    String text, {
    Color? textColor,
    double? textHeight,
    TextAlign? textAlign,
  }) {
    return Text(
      text,
      textAlign: textAlign ?? TextAlign.center,
      style: TextStyle(
        fontSize: 16,
        height: textHeight,
        color: textColor ?? Colors.black87,
      ),
    );
  }
}
