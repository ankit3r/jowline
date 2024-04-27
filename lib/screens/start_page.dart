import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jawline/controller/splash_controller.dart';

class StartPage extends StatelessWidget {
  final SplashController controller = Get.put(SplashController());
  StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    controller.splashTime();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: Get.height,
            child: Image.asset(
              'assets/images/f1.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.6), // Adjust opacity as needed
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20, // Adjust bottom position as needed
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 53,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.6,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            "jawline".toUpperCase(),
                          ),
                        ],
                        totalRepeatCount: 1,
                      ),
                    ),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 32,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            "Exercises".toUpperCase(),
                          ),
                        ],
                        totalRepeatCount: 1,
                      ),
                    ),
                    // Text(
                    //   "jawline".toUpperCase(),
                    //   textAlign: TextAlign.center,
                    //   style: const TextStyle(
                    //     fontSize: 53,
                    //     color: Colors
                    //         .white, // Change text color to white for better visibility
                    //     fontWeight: FontWeight.w600,
                    //     height: 0.6,
                    //   ),
                    // ),
                    // Text(
                    //   "\tExercises".toUpperCase(),
                    //   textAlign: TextAlign.center,
                    //   style: const TextStyle(
                    //     fontSize: 33,
                    //     color: Colors
                    //         .white, // Change text color to white for better visibility
                    //     fontWeight: FontWeight.w400,
                    //   ),
                    // ),
                    const SizedBox(height: 8),
                    LinearProgressIndicator(
                      color: Colors.orange.shade800,
                      minHeight: 7,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
