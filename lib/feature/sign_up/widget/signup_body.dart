import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/widget/custom_button.dart';
import 'package:flutter_boilerplate/feature/login_selection_page/widget/login_button.dart';
import 'package:get/get.dart';

import '../../../common/widget/custom_textfield.dart';
import '../controller/sign_up_controller.dart';
import 'custome_checkbox.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(

                children: <Widget>[
                  Text("Join Asana Today 👤", style: TextStyle(color: Get.theme.colorScheme.secondary,fontSize: 28),),
                  Text('Start your Personalized wellness experience', style: TextStyle(color: Get.theme.colorScheme.onSecondary),),
                  SizedBox(height: 20,),

                  CustomTextFiled(prefixIcon: Icon(Icons.email_outlined,
                    color: Get.theme.colorScheme.onSecondary,),
                      helperTex: "Email",
                      borderRadius: 15,
                      helperTexSize: 14,
                      hintTex: 'Email',
                      hintsColor: Get.theme.colorScheme.onSecondary,
                      fillColor: Get.theme.primaryColor.withOpacity(0.06), borderColor:Get.theme.scaffoldBackgroundColor),
                  SizedBox(height: 20,),

                  CustomTextFiled(
                    borderRadius: 15,
                      obscureText: true,
                      prefixIcon: Icon(Icons.lock_outline_rounded,color: Get.theme.colorScheme.onSecondary),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.visibility_off,color: Get.theme.colorScheme.onSecondary,size: 20),
                      ),

                      helperTex: "Password",
                      helperTexSize: 14,
                      hintTex: 'Password',
                      hintsColor: Get.theme.colorScheme.onSecondary,
                      fillColor: Get.theme.primaryColor.withOpacity(0.06), borderColor: Get.theme.scaffoldBackgroundColor),
                  SizedBox(height: 20,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomeCheckBox(
                        value: controller.isCheck,
                        onChanged: (value) => controller.toggleCheck(value),
                      ),
                      SizedBox(width: 8,),
                      RichText(
                          text: TextSpan(
                              text: "I agree to Asana",
                              children: [
                                TextSpan(

                                    text: " Terms & Conditions",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Get.theme.primaryColor.withOpacity(0.5),
                                        ))
                              ],
                              style: TextStyle(fontSize: 16,color: Get.theme.colorScheme.secondary,)))
                    ],
                  ),
                  SizedBox(height: 30),
                 
                  RichText(
                      text: TextSpan(
                          text: "Already have an account?",
                          children: [
                            TextSpan(

                                text: " Log In",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Get.theme.primaryColor.withOpacity(0.5),
                                ))
                          ],
                          style: TextStyle(fontSize: 16,color: Get.theme.colorScheme.secondary,))),
                  SizedBox(height: 20),
                  Text("or", style: TextStyle(color: Get.theme.colorScheme.secondary),),
                  SizedBox(height: 20),
                  LoginButton(image: 'assets/icon/google.png', title: "Google"),
                  SizedBox(height: 20),
                  LoginButton(image: 'assets/icon/apple.png', title: "Apple"),
                  SizedBox(height: 20),

                ],
              ),
            ),
          );
        }
    );
  }
}
