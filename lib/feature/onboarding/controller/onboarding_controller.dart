import 'package:flutter/cupertino.dart';
import 'package:flutter_boilerplate/helper/route_helper.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController implements GetxService{
  PageController pageController = PageController();
int currentIndex = 0;
bool get isLastPage => (currentIndex+1)!=onboardinData.length;

void setCurrentIndex(int index){
  currentIndex = index;
  update();
}

void skipPage(){}
void nextPage(){
  if(isLastPage){
    pageController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);

  }else{
    Get.toNamed(RouteHelper.loginSelection);
  }


}


 List<Map<String, String>> onboardinData = [
  {
    "image": 'assets/image/onboarding_1.png',
    'title': 'Asana - Your Yoga Journey Start Here',
    'subtitle': 'Get ready to embark on a transformative yoga journey with Asana Discover a wide range of yoga. tailored to your yoga goals',
  },
  {
    "image": 'assets/image/onboarding_2.png',
    'title': 'Tailored Exercise Plan for Your Needs',
    'subtitle': "Asana personalizes yoga just for you . Whether you're beginner or a yoga enthusiast our app adopts to your needs",
  },
  {
    "image": 'assets/image/onboarding_3.png',
    'title': 'Stay Informed About Your Yoga Progress',
    'subtitle': "Stay Motivated and track your progress effortlessly. Start youe Yoga Journey today and acheive the results yor've always wanted",
  },

];
}