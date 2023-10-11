
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_mvvm/data/response/status.dart';
import 'package:getx_and_mvvm/res/components/general_exception_widget.dart';
import 'package:getx_and_mvvm/res/components/internet_exception_widget.dart';
import 'package:getx_and_mvvm/res/routes/routes_name.dart';
import 'package:getx_and_mvvm/view/home/widgets/user_list_widget.dart';
import 'package:getx_and_mvvm/view_models/controller/home/home_view_models.dart';
import 'package:getx_and_mvvm/view_models/controller/user_preference/user_preference_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final homeController = Get.put(HomeController()) ;
  UserPreference userPreference = UserPreference();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('main screen'),
        actions: [
          IconButton(
              onPressed: (){ userPreference.removeUser().then( (value){ Get.toNamed(RouteName.loginView); } ); },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: Obx((){
        switch(homeController.rxRequestStatus.value){
          case Status.LOADING:
            return const Center(child: CircularProgressIndicator());
          case Status.ERROR:
            if(homeController.error.value == 'No Internet'){
              return InternetExceptionWidget(onPress: () { homeController.refreshApi(); },);
            }else{
              return GeneralExceptionWidget(onPress: (){ homeController.refreshApi(); },);
            }
          case Status.COMPLETED:
            return UserListWidget();
        }
      }),
    );
  }
}
