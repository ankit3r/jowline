import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jawline/controller/intro/intro_controller.dart';
import 'package:jawline/screens/intro/intro_continue1.dart';
import 'package:jawline/widgets/custom_button.dart';
import 'package:jawline/widgets/intro_page_formate.dart';
import 'package:jawline/widgets/text_style_formate.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});
  final IntroController controller = Get.put(IntroController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          CarouselSlider(
            carouselController: controller.pageController,
            options: CarouselOptions(
              height: Get.height - 100,
              autoPlay: true,
              viewportFraction: 1.0,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              onPageChanged: (index, reason) =>
                  controller.current.value = index,
            ),
            items: [1, 2, 3].map(
              (i) {
                return Builder(
                  builder: (BuildContext context) {
                    return IntroFormate(
                      imageUrl: 'assets/images/f1.jpg',
                      title: "First Intro Title $i",
                      discription:
                          'This is the first way to into my app to you so you can use this app thank you. your ankit.',
                    );
                  },
                );
              },
            ).toList(),
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Row(
                    children: [1, 2, 3]
                        .asMap()
                        .entries
                        .map(
                          (e) => Obx(
                            () => Expanded(
                              child: Container(
                                height: 2,
                                color: controller.current.value == e.key
                                    ? Colors.black
                                    : Colors.black12,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  const Spacer(),
                  CustomeButton.btn1(
                    onPressed: () {
                      Get.to(const IntroContinue1());
                    },
                    chile: CustomeText.headerText3(
                      "Continue",
                      textColor: Colors.white,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
