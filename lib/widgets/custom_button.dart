import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeButton {
  static Widget btn1(
      {required void Function()? onPressed, required Widget chile}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        minimumSize: Size(Get.width - 80, 60),
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
      onPressed: onPressed,
      child: chile,
    );
  }
}
