

import 'package:get/get.dart';
import 'package:getx_and_mvvm/res/routes/routes_name.dart';
import 'package:getx_and_mvvm/view/home/home_view.dart';
import 'package:getx_and_mvvm/view/login/login_view.dart';
import 'package:getx_and_mvvm/view/splash_screen.dart';

class AppRoutes{

  static appRoutes() => [

    GetPage(
        name: RouteName.splashScreen,
        page: ()=> SplashScreen(),
        transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 250),
    ),

    GetPage(
      name: RouteName.loginView,
      page: ()=> LoginView(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 250),
    ),

    GetPage(
      name: RouteName.homeView,
      page: ()=> HomeView(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 250),
    ),

  ];

}