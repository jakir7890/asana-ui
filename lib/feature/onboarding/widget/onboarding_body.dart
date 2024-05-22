import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/feature/onboarding/controller/onboarding_controller.dart';
import 'package:flutter_boilerplate/feature/onboarding/widget/onboarding_content.dart';
import 'package:get/get.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
      builder: (controller) {
        return SafeArea(child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                  child: PageView.builder(
                    controller: controller.pageController,
                    onPageChanged: (value) => controller.setCurrentIndex(value),
                    itemCount: controller.onboardinData.length,
                    itemBuilder: (context, index) {
                      String image = controller.onboardinData[index]["image"]!;
                      String title = controller.onboardinData[index]["title"]!;
                      String subtitle = controller.onboardinData[index]["subtitle"]!;
                      return OnboardingContent(image: image, title: title, subtitle: subtitle); },)),
              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,children: List.generate(controller.onboardinData.length, (index) => dotIndicator(index: index,
                    currentIndex: controller.currentIndex,
                    context: context),),
                ), ),



            ],),
        ));
      }
    );
  }

  AnimatedContainer dotIndicator({required int index, required int currentIndex,required BuildContext context}) {
    return AnimatedContainer(
        margin: const EdgeInsets.all(5),
        height: 8,
        width: currentIndex == index ? 20 : 8,
        decoration: BoxDecoration(
            color: currentIndex == index
                ? Theme.of(context).primaryColor
                : Colors.grey,
            borderRadius: BorderRadius.circular(3)),
        duration: const Duration(milliseconds: 500));
  }

}


