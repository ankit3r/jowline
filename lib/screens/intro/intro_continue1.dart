import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jawline/widgets/custom_button.dart';
import 'package:jawline/widgets/text_style_formate.dart';

class IntroContinue1 extends StatelessWidget {
  const IntroContinue1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 10, top: 8),
              alignment: Alignment.centerLeft,
              child: IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 22),
            CustomeText.headerText2("How do joeline exercises work?"),
            const SizedBox(height: 22),
            SizedBox(
              height: Get.height * 0.4,
              width: double.infinity,
              child: Image.asset(
                'assets/images/f1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            CustomeText.headerText3("1. Muscle"),
            Padding(
              padding: const EdgeInsets.all(5),
              child: CustomeText.paragraph1(
                "Jawline exercises target muscles around the chin and neck area.",
                textHeight: 1.1,
              ),
            ),
            const Spacer(),
            CustomeButton.btn1(
              onPressed: () {
                // Get.to(const IntroContinue1());
              },
              chile: CustomeText.headerText3(
                "Continue",
                textColor: Colors.white,
              ),
            ),
            const SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
