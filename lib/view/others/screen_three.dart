import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_mvvm/view_models/others/favourite_controller.dart';
import 'package:getx_and_mvvm/view_models/others/image_picker_controller.dart';
//import 'package:image_picker/image_picker.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {

  FavouriteController favouriteController = Get.put(FavouriteController());
  ImagePickerController imagePickerController = Get.put(ImagePickerController());
  // List<String> fruitList = ['Apple','Banana','Carrot','Dragon fruit','Egg Plant','Fig','Grapes','Huito Fruit','Icaco'];
  // List<String> tempFruitList = [];

  @override
  Widget build(BuildContext context) {
    print('All built');
    return Scaffold(
      appBar: AppBar(title: const Text('Screen Three'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);//the get method delets the controllers so need to use navigator method
                // Get.back();
                // Get.back();
                // Get.back();
              },
              child: const Text('GO Back to start'),
            ),

          ),
          Obx(() => Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: imagePickerController.imagePath.isNotEmpty?
                  FileImage(File(imagePickerController.imagePath.toString())):
                  null,
                ),
              ),
              TextButton(onPressed: (){
                imagePickerController.getImage();
              }, child: const Text('Pick Image')),
            ],
          )),
          Expanded(
            child: ListView.builder(
                itemCount: favouriteController.fruitList.length,
                itemBuilder: (context,index){
              return Card(
                child: ListTile(
                  onTap: (){
                    if(favouriteController.tempFruitList.contains(favouriteController.fruitList[index].toString())){
                      //favouriteController.tempFruitList.remove(favouriteController.fruitList[index].toString());
                      favouriteController.removeFromFavourite(favouriteController.fruitList[index].toString());
                    }else{
                      //favouriteController.tempFruitList.add(favouriteController.fruitList[index].toString());
                      favouriteController.addToFavourite(favouriteController.fruitList[index].toString());
                    }
                    //setState(() {});
                  },
                  title: Text(favouriteController.fruitList[index].toString()),
                  trailing: Obx(()=> Icon(Icons.favorite,
                      color: favouriteController.tempFruitList.contains( favouriteController.fruitList[index].toString() )
                          ? Colors.red : Colors.transparent,
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
