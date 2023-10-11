

import 'package:get/get.dart';

class FavouriteController extends GetxController{

  RxList<String> fruitList = ['Apple','Banana','Carrot','Dragon fruit','Egg Plant','Fig','Grapes','Huito Fruit','Icaco'].obs;
  RxList tempFruitList = [].obs;  // is empty so by default it is dynamic

  addToFavourite(String value){
    tempFruitList.add(value);
  }

  removeFromFavourite(String value){
    tempFruitList.remove(value);
  }

}