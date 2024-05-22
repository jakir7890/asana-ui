import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  final String image;
  final String title;
  final Function()? onTap;
  const LoginButton({super.key, required this.image, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: Get.height/15,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Get.theme.primaryColor.withOpacity(0.10)
          ),

        ),
        child: Row(children: [
          Image.asset(image, width: Get.width/22,),
          Expanded(child: Text("Continue With ${title}", textAlign: TextAlign.center,style: TextStyle(color: Get.theme.colorScheme.secondary),))
        ],),
      ),
    );
  }
}
