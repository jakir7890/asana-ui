import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/widget/custom_button.dart';
import 'package:get/get.dart';

class CommonBotomNavBar extends StatelessWidget {

  final Function()? onTap;
  const CommonBotomNavBar({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
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
               
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.only(right: 10),
                      child: CustomButton (onTap: () { },
                        buttonColor: Theme.of(context).primaryColor.withOpacity(0.1), text: "Skip", textColor: Get.theme.primaryColor,borderRadius: 50,),
                    ),
                  ),
    
              
    
    
                Expanded(
                  child: CustomButton(onTap: onTap,
                    buttonColor: Get.theme.primaryColor, text:  "Continue", textColor: Colors.white,borderRadius: 50,),
                ),
    
                // CustomButton (onTap: () { }, text: "Continue")
              ],
            ));
  }
}