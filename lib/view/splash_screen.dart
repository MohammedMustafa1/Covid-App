import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx_and_mvvm/res/assets/image_assets.dart';
// import 'package:getx_and_mvvm/res/components/general_exception_widget.dart';
// import 'package:getx_and_mvvm/res/components/internet_exception_widget.dart';
// import 'package:getx_and_mvvm/utils/utils.dart';
import 'package:getx_and_mvvm/view_models/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashScreen = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreen.islogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
        body: Center(child: Text('welcome_back'.tr, textAlign: TextAlign.center,),),
        // appBar: AppBar(title: Text('email_hint'.tr),),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){
        //     Utils.toastMessageCenter('Mustafa');
        //     Utils.toastMessage('Mustafa');
        //   },
        // ),
        // body: GeneralExceptionWidget(onPress: (){}),
        //InternetExceptionWidget(onPress: (){}),
        // Image(image: AssetImage(ImageAssets.splashScreen),),

    );
  }
}
