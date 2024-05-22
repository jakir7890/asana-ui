import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/widget/custom_button.dart';
import 'package:flutter_boilerplate/feature/login_selection_page/widget/login_button.dart';
import 'package:flutter_boilerplate/helper/route_helper.dart';
import 'package:get/get.dart';
class LoginSelectionView extends StatelessWidget {
  const LoginSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
        const SizedBox(height: 30,),
        Icon(Icons.ac_unit, color: Get.theme.primaryColor, size: Get.height/10,),
        const SizedBox(height: 20,),
        Text("Let's Get Started!", style: TextStyle(fontSize: 28, color: Get.theme.colorScheme.secondary),textAlign: TextAlign.center,),
        const SizedBox(height: 20,), Text("Let's dive in into your account", style: TextStyle(fontSize: 16, color: Get.theme.colorScheme.onSecondary),textAlign: TextAlign.center,), const SizedBox(height: 20,), LoginButton(onTap: () {},image: 'assets/icon/google.png',title: 'Google'),const SizedBox(height: 10,), LoginButton(onTap: () {},image: 'assets/icon/apple.png',title: 'Apple'),const SizedBox(height: 10,), LoginButton(onTap: () {},image: 'assets/icon/facebook.png',title: 'Facebook'),const SizedBox(height: 10,),
          LoginButton(onTap: () {},image: 'assets/icon/x.png',title: 'X'),
          const SizedBox(height: 20,),
          CustomButton(onTap: () {Get.toNamed(RouteHelper.signUp);}, text: "Sign Up", textColor: Get.theme.scaffoldBackgroundColor, borderRadius: 25,),const SizedBox(height: 20,),
          CustomButton(onTap: () {}, text: "Log In",buttonColor: Get.theme.primaryColor.withOpacity(0.08), textColor: Get.theme.colorScheme.onSecondary, borderRadius: 25,)



      ],),
    bottomNavigationBar: Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        
          Padding(
            padding:  const EdgeInsets.only(right: 30, bottom: 20),
            child: Text('Privacy Policy', textAlign: TextAlign.center, style: TextStyle(color: Get.theme.colorScheme.onSecondary, fontSize: 12),),
          ),   Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text('Terms of Service',textAlign: TextAlign.center, style: TextStyle(color: Get.theme.colorScheme.onSecondary, fontSize: 12),
                      ),
          ) ],
    ),));
  }
}
