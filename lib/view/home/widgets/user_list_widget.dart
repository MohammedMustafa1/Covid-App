

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_mvvm/view_models/controller/home/home_view_models.dart';

class UserListWidget extends StatelessWidget {
   UserListWidget({super.key});

   final homeController = Get.put(HomeController()) ;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: homeController.userList.value.data!.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(homeController.userList.value.data![index].avatar.toString()),
              ),
              title: Text(homeController.userList.value.data![index].firstName.toString()),
              subtitle: Text(homeController.userList.value.data![index].email.toString()),
            ),
          );
        }
    );
  }
}
