import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/feature/personalized_indicator/widget/percent_circular.dart';
import 'package:flutter_boilerplate/util/styles.dart';
import 'package:get/get.dart';



class PersonalizedIndicatorView extends StatelessWidget {
  const PersonalizedIndicatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 16), child: Center(
        child: Column(
          children: [
               SizedBox(height: Get.height/30,),
              Text("Create Personalized\nYoga Plan For You", style: textSemiBold.copyWith(color: Get.theme.colorScheme.secondary, fontSize: 28),),
              Text("Please wait...", style: textSemiBold.copyWith(color: Get.theme.colorScheme.onSecondary, fontSize: 16),),
               SizedBox(height: Get.height/6,),
              PercentCircular(),SizedBox(height: 70,),
              Text("This Will just take a moment. Get ready to transform your yoga journey !", style: textSemiBold.copyWith(color: Get.theme.colorScheme.onSecondary, fontSize: 16),textAlign: TextAlign.center,),

          ],
        ),
      ),),
    ));
  }
}

