import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/widget/custom_button.dart';
import 'package:flutter_boilerplate/feature/onboarding/controller/onboarding_controller.dart';
import 'package:flutter_boilerplate/helper/route_helper.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OnboardingBottomNavBar extends StatelessWidget {
  const OnboardingBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingController>(
        builder: (controller) {
          return Container(
              padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade50,
                      strokeAlign: BorderSide.strokeAlignOutside
                  )
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if(controller.isLastPage)...[
                    Expanded(
                      child: Padding(
                        padding:  EdgeInsets.only(right: 10),
                        child: CustomButton (onTap: () {Get.toNamed(RouteHelper.loginSelection); },
                          buttonColor: Theme.of(context).primaryColor.withOpacity(0.1), text: "Skip", textColor: Get.theme.primaryColor,borderRadius: 50,),
                      ),
                    ),

                  ],


                  Expanded(
                    child: CustomButton (onTap: () => controller.nextPage(),
                      buttonColor: Get.theme.primaryColor, text: controller.isLastPage? "Continue":"Get Started", textColor: Colors.white,borderRadius: 50,),
                  ),

                  // CustomButton (onTap: () { }, text: "Continue")
                ],
              ));
        }
    );
  }
}
