import 'package:get/get.dart';

class SignUpController extends GetxController implements GetxService{
  bool isCheck = false;
  void toggleCheck(bool value) {

    isCheck = !isCheck;
    update();
  }
}