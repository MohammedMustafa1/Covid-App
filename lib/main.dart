import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_mvvm/res/routes/routes.dart';
import 'package:getx_and_mvvm/view/others/Screen_one.dart';
import 'package:getx_and_mvvm/view/others/Screen_two.dart';
import 'package:getx_and_mvvm/view/others/home_screen.dart';
import 'package:getx_and_mvvm/res/getx_localization/languages.dart';
import 'package:getx_and_mvvm/view/others/screen_three.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),),
      //home: const SplashScreen(),
      getPages: AppRoutes.appRoutes(),
      // [
      //   GetPage(name: '/', page: ()=> SplashScreen()),
      //   GetPage(name: 'home', page: ()=> const HomeScreen()),
      //   GetPage(name: '/screenOne', page: ()=>ScreenOne()),
      //   GetPage(name: '/screenTwo', page: ()=> ScreenTwo()),
      //   GetPage(name:'/screenThree',page: ()=>ScreenThree()),
      // ],
      translations: Languages(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
    );
  }
}

