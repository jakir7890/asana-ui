import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeCheckBox extends StatelessWidget {
  CustomeCheckBox({super.key, required this.value, required this.onChanged});
  final bool value;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      borderRadius: BorderRadius.circular(2),
      child: AnimatedContainer(
        padding: EdgeInsets.all(1),
        height: 16,
        width: 16,
        duration: Duration(milliseconds: 200),
        decoration: BoxDecoration(
            color: value ? Get.theme.primaryColor : null,
            borderRadius: BorderRadius.circular(
              2,
            ),
            border:
            value ? null : Border.all(color:Get.theme.primaryColor)),
        child: value
            ? Icon(
          Icons.done,
          color: Get.theme.scaffoldBackgroundColor,
          size: 12,
        )
            : null,
      ),
    );
  }
}