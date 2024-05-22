import 'package:flutter_boilerplate/feature/body_shape_select/view/body_shape_view.dart';
import 'package:flutter_boilerplate/feature/login_selection_page/view/login_selection_view.dart';
import 'package:flutter_boilerplate/feature/onboarding/view/onboarding.dart';
import 'package:flutter_boilerplate/feature/personalized_indicator/view/personalized_indicator.dart';
import 'package:flutter_boilerplate/feature/select_age/view/select_age.dart';
import 'package:flutter_boilerplate/feature/select_gender/view/select_gender_view.dart';
import 'package:flutter_boilerplate/feature/select_goal/view/select_goal_view.dart';
import 'package:flutter_boilerplate/feature/sign_up/view/signup_view.dart';
import 'package:get/get.dart';


class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String loginSelection = '/loginSelection';
  static const String signUp = '/sign-up';
  static const String seletGender = '/select-gender';
  static const String selectAge = '/select-Age';
  static const String selectGoal = '/select-Goal';
  static const String bodyShapeSelect = '/bodyShape-Select';
  static const String personalizedIndicator = '/personal-indicator';
  

  static getInitialRoute() => initial;
  static getSplashRoute() => splash;
  static getonboardingRoute() => onboarding;
  static getloginSelectionRoute() => loginSelection;
  static getSignUpRoute() => signUp;
  static getseletGenderRoute() => seletGender;
  static getseletAgeRoute() => selectAge;
  static getselectGoalRoute() => selectGoal;
  static getbodyShapeSelectRoute() => bodyShapeSelect;
  static getpersonalizedIndicatorRoute() => personalizedIndicator;
  

  static List<GetPage> routes = [
    GetPage(name: onboarding, page: () =>const Onboarding()),
    GetPage(name: loginSelection, page: () =>const LoginSelectionView()),
    GetPage(name: signUp, page: () =>const SignupView()),
    GetPage(name: seletGender, page: () =>const SelectGenderView()),
    GetPage(name: selectAge, page: () =>const SelectAgeView()),
    GetPage(name: selectGoal, page: () =>const SelectGoalView()),
    GetPage(name: bodyShapeSelect, page: () =>const BodyShapeView()),
    GetPage(name: personalizedIndicator, page: () =>const PersonalizedIndicatorView()),
  
  ];
}