import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/widget/common_nav_bar.dart';
import 'package:flutter_boilerplate/common/widget/custom_appbar.dart';
import 'package:flutter_boilerplate/helper/route_helper.dart';
import 'package:flutter_boilerplate/util/styles.dart';
import 'package:get/get.dart';

class BodyShapeView extends StatelessWidget {
  const BodyShapeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            RichText(
                text: TextSpan(
                    text: "Your",
                    children: [
                      TextSpan(
                          text: " Current",
                          style: TextStyle(
                              fontSize: 28,
                              color: Get.theme.primaryColor,
                              fontWeight: FontWeight.bold)),
                              const TextSpan(text: " Body Shape")
                    ],
                    style: textSemiBold.copyWith(color: Get.theme.colorScheme.secondary, fontSize: 28))),
            Text(
              "Help us understanding your starting point",
              style: TextStyle(color: Get.theme.colorScheme.onSecondary),
            ),
            const SizedBox(height: 10,),
           Image.asset("assets/image/man_vector.png"),
           
          ],
        ),
      ),

      bottomNavigationBar:  CommonBotomNavBar( onTap: () => Get.toNamed(RouteHelper.personalizedIndicator),),
    ));
  }
}



