import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingContent extends StatelessWidget {
  final String image; final String title; final String subtitle;
const OnboardingContent({ Key? key,required this.image,required this.title,required this.subtitle,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          fit: BoxFit.fill,
          image,
        ),
       const SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style:  TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Get.theme.colorScheme.secondary),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                color:Get.theme.colorScheme.onSecondary,
                fontSize: 12),
          ),
        ),

      ],
    );
  }
}
