import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/widget/custom_button.dart';
import 'package:flutter_boilerplate/feature/select_gender/view/select_gender_view.dart';
import 'package:flutter_boilerplate/helper/route_helper.dart';
import 'package:flutter_boilerplate/util/styles.dart';
import 'package:get/get.dart';

class SelectGoalView extends StatefulWidget {
  const SelectGoalView({super.key});

  @override
  State<SelectGoalView> createState() => _SelectGoalViewState();
}

class _SelectGoalViewState extends State<SelectGoalView> {

List<String> goals = [
    "Weight Loss",
    'Better Sleep Quality',
    'Body Relaxation',
    'Improve Health',
    'Relieve Stress',
    'Posture Correction'
  ];
List my_imoji = [
    "🏋️‍♀️",
    '😴',
    '☺ ',
    '🍏',
    '🎏',
    '🙆‍♂️'
  ];

  Map<String, bool> selectedGoals = {
    'Weight Loss': false,
    'Better Sleep Quality': true,
    'Body Relaxation': false,
    'Improve Health': true,
    'Relieve Stress': true,
    'Posture Correction': false,
  };



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
       
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Get.theme.colorScheme.secondary,
            )),
        title: StepProgressIndicator(currentStep: 3, totalSteps: 14),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 20),
            RichText(
                text: TextSpan(
                    text: "What's Your Yoga",
                    children: [
                      TextSpan(
                          text: " Goal?",
                          style: TextStyle(
                              fontSize: 28,
                              color: Get.theme.primaryColor,
                              fontWeight: FontWeight.bold)),
                              
                    ],
                    style: textSemiBold.copyWith(color: Get.theme.colorScheme.secondary, fontSize: 28))),
            Text(
              "Tell us what you aim to acheive with Asana.",
              style: TextStyle(color: Get.theme.colorScheme.onSecondary),
            ),
            SizedBox(height: 30,),
            Expanded(
              child: ListView.builder(
                itemCount: goals.length,
                itemBuilder: (context, index) {
                  String imoji = my_imoji[index];
                  String goal = goals[index];
                  return Card(
                    elevation: 0,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: selectedGoals[goal]! ? Get.theme.colorScheme.onSecondary : Get.theme.scaffoldBackgroundColor,
                        width: 2.0,
                      ),
                    ),
                    child: ListTile(
                      leading: Text(imoji, style: TextStyle(fontSize: 20),),
                      trailing: Icon(
                        selectedGoals[goal]!
                            ? Icons.check
                            : null,
                        color: selectedGoals[goal]! ? Get.theme.colorScheme.onSecondary : Get.theme.scaffoldBackgroundColor,
                      ),
                      title: Text(goal, style: TextStyle(color: Get.theme.colorScheme.secondary, fontSize: 20),),
                      onTap: () {
                        setState(() {
                          selectedGoals[goal] = !selectedGoals[goal]!;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
           ],
        ),
      ),

      bottomNavigationBar: SelectGoalNavBar(),
    ));
  }
}

class SelectGoalNavBar extends StatelessWidget {
  const SelectGoalNavBar({
    super.key,
  });

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
                  child: CustomButton(onTap: () {Get.toNamed(RouteHelper.bodyShapeSelect);},
                    buttonColor: Get.theme.primaryColor, text:  "Continue", textColor: Colors.white,borderRadius: 50,),
                ),
    
                // CustomButton (onTap: () { }, text: "Continue")
              ],
            ));
  }
}