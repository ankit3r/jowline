import 'package:get/get.dart';
import 'package:jawline/screens/intro/intro_page.dart';

class SplashController extends GetxController {
  RxInt splashScreenWaitTime = 6.obs;

  void splashTime() {
    Future.delayed(
      Duration(seconds: splashScreenWaitTime.value),
      () async => Get.offAll(IntroPage()),
    );
  }
}
