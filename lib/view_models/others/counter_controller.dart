
import 'package:get/get.dart';

class CounterController extends GetxController{

  //final counter = 1.obs;
  RxInt counter = 1.obs;

  incrementCounter(){
    counter.value++;
    print(counter.value);
  }

}