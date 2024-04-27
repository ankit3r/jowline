import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroFormate extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String discription;
  const IntroFormate({
    super.key,
    required this.imageUrl,
    required this.discription,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: (Get.height - 120) / 1.65,
            width: double.infinity,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 32),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),
          ),
          Text(
            discription,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
