
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPicker extends StatefulWidget {
  @override
  _MyPickerState createState() => _MyPickerState();
}

class _MyPickerState extends State<MyPicker> {
  int selectedAge = 28;
  

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
    
    
    child: SizedBox(
      height: 550,
      width: 200,
      child: CupertinoPicker(
        
        selectionOverlay: Container(
          
          decoration: BoxDecoration(
            border: Border(
      top: BorderSide(color: Get.theme.colorScheme.onSecondary, width: 2),
      bottom: BorderSide(color: Get.theme.colorScheme.onSecondary, width: 2),
    ),
          ),
        ),
        itemExtent: 100,
        onSelectedItemChanged: (int index) { setState(() {
          selectedAge = index + 24; // Assuming the picker starts from 24
        });},
        children: List<Widget>.generate(100 - 28 + 1, (int index) {
        return Center(
          child: Text(
            '${index + 1} Years',
            style: TextStyle(fontSize: 28.0, color: Get.theme.primaryColor),
          ),
        );
      }),
      ),
    ));
}