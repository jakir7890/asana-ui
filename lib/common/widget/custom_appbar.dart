import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/feature/select_age/view/select_age.dart';
import 'package:get/get.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Get.theme.colorScheme.secondary,
          )),
      title: const StepProgressIndicator(currentStep: 4, totalSteps: 14),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(100);
}