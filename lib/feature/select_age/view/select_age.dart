import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/widget/custom_button.dart';
import 'package:flutter_boilerplate/feature/select_age/widget/cupertion_picker.dart';
import 'package:flutter_boilerplate/helper/route_helper.dart';
import 'package:flutter_boilerplate/util/styles.dart';
import 'package:get/get.dart';

class SelectAgeView extends StatelessWidget {
  const SelectAgeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Get.theme.colorScheme.secondary,
            )),
        title: StepProgressIndicator(currentStep: 10, totalSteps: 14),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            RichText(
                text: TextSpan(
                    text: "How",
                    children: [
                      TextSpan(
                          text: " Old",
                          style: TextStyle(
                              fontSize: 28,
                              color: Get.theme.primaryColor,
                              fontWeight: FontWeight.bold)),
                              TextSpan(text: " You Are?")
                    ],
                    style: textSemiBold.copyWith(color: Get.theme.colorScheme.secondary, fontSize: 28))),
            Text(
              "Share your age with us",
              style: TextStyle(color: Get.theme.colorScheme.onSecondary),
            ),
            SizedBox(height: 30,),
            MyPicker()
           ],
        ),
      ),

      bottomNavigationBar: Container(
              padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade50,
                      strokeAlign: BorderSide.strokeAlignOutside
                  )
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 
                    Expanded(
                      child: Padding(
                        padding:  EdgeInsets.only(right: 10),
                        child: CustomButton (onTap: () { },
                          buttonColor: Theme.of(context).primaryColor.withOpacity(0.1), text: "Skip", textColor: Get.theme.primaryColor,borderRadius: 50,),
                      ),
                    ),
                    Expanded(
                    child: CustomButton(onTap: () {Get.toNamed(RouteHelper.selectGoal);},
                      buttonColor: Get.theme.primaryColor, text:  "Continue", textColor: Colors.white,borderRadius: 50,),
                  ),

                  // CustomButton (onTap: () { }, text: "Continue")
                ],
              )),
    ));
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

