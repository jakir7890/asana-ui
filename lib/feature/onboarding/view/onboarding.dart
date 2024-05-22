import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/feature/onboarding/widget/onboarding_body.dart';
import 'package:flutter_boilerplate/feature/onboarding/widget/onboarding_bottom_nav_bar.dart';


class Onboarding extends StatelessWidget{
  const Onboarding({super.key});

@override
  Widget build(BuildContext context) {
    return const Scaffold (
      body: OnboardingBody(),
      bottomNavigationBar: OnboardingBottomNavBar(),
    );
  }
}

