import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/helper/route_helper.dart';
import 'package:get/get.dart';

import '../../../common/widget/custom_button.dart';
import '../widget/signup_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Get.back(),
            child: Icon(Icons.arrow_back_outlined, color: Get.theme.colorScheme.secondary,)),
      ),
      body: SignUpBody(),
            bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
            child: CustomButton(borderRadius: 25,onTap: () {showDialog(
         context: context,
         builder: (BuildContext context) {
           Future.delayed(Duration(seconds: 1), () {
                 Get.toNamed(RouteHelper.seletGender);
                });
           return AlertDialog(
             content: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: <Widget>[
                   CircularProgressIndicator(
                     color: Get.theme.primaryColor
                   ),
                   SizedBox(height: 20), // Provides space between the indicator and text
                   Text("Sign Up", style: TextStyle(color: Get.theme.colorScheme.secondary, fontSize: 16),),
                 ],
               ),
             ),
           );
         },
       );}, text: "Sign Up")),));
       
  }
  
}

