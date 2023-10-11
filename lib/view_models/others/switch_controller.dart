
import 'package:get/get.dart';

class SwitchController extends GetxController{
  RxBool notification = false.obs;
  setSwitch(value){
    notification.value = value;
  }
}