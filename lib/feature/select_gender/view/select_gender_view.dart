import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/widget/common_nav_bar.dart';
import 'package:flutter_boilerplate/common/widget/custom_appbar.dart';
import 'package:flutter_boilerplate/helper/route_helper.dart';
import 'package:flutter_boilerplate/util/styles.dart';
import 'package:get/get.dart';

class SelectGenderView extends StatelessWidget {
  const SelectGenderView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            RichText(
                text: TextSpan(
                    text: "Select Your",
                    children: [
                      TextSpan(
                          text: " Gender",
                          style: TextStyle(
                              fontSize: 28,
                              color: Get.theme.primaryColor,
                              fontWeight: FontWeight.bold))
                    ],
                    style: textSemiBold.copyWith(color: Get.theme.colorScheme.secondary, fontSize: 28))),
            Text(
              "Let's start by understanding you",
              style: TextStyle(color: Get.theme.colorScheme.onSecondary),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GenderCard(
                  imagePath: 'assets/image/man.png',
                  label: 'Man',
                ),
                GenderCard(
                  imagePath: 'assets/image/woman.png',
                  label: 'Woman',
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: CommonBotomNavBar(onTap: () => Get.toNamed(RouteHelper.selectAge),)));
  }
}

class GenderCard extends StatelessWidget {
  final String imagePath;
  final String label;

  const GenderCard({
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle gender selection here
      },
      child: Column(
        children: [
          Container(
            width: Get.width / 2,
            height: Get.width / 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: Get.theme.colorScheme.secondary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class StepProgressIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;

  const StepProgressIndicator({
    Key? key,
    required this.currentStep,
    required this.totalSteps,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: LinearProgressIndicator(
            borderRadius: BorderRadius.circular(10),
            minHeight: 10,
            value: currentStep / totalSteps.toDouble(),
            backgroundColor: Colors.grey[200],
            valueColor: AlwaysStoppedAnimation<Color>(Get.theme.primaryColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            '$currentStep/$totalSteps',
            style: TextStyle(color: Get.theme.colorScheme.secondary),
          ),
        ),
      ],
    );
  }
}
