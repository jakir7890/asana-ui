import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/util/styles.dart';
import 'package:get/get.dart';

class PercentCircular extends StatelessWidget {
  const PercentCircular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SizedBox(
          height: 250,
          width: 250,
          child: CircularProgressIndicator(
            
            value: 0.75, 
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(Get.theme.primaryColor),
            strokeCap: StrokeCap.round,
            strokeWidth: 16,
          ),
        ),

        Text(
          '75%',
          style: textBold.copyWith(color: Get.theme.colorScheme.secondary, fontSize: 60),textAlign: TextAlign.center,
        ),
        
      ],
    );
  }
}