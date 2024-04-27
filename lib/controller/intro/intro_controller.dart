import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class IntroController extends GetxController {
  RxInt current = 0.obs;
  final CarouselController pageController = CarouselController();
}
