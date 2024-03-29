import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getx_and_mvvm/res/components/round_button.dart';
// import 'package:getx_and_mvvm/utils/utils.dart';
import 'package:getx_and_mvvm/view/login/widgets/input_email_widget.dart';
import 'package:getx_and_mvvm/view/login/widgets/input_password_widget.dart';
import 'package:getx_and_mvvm/view/login/widgets/login_button_widget.dart';
import 'package:getx_and_mvvm/view_models/controller/login/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final loginVM = Get.put(LoginViewModel());
  final _formkey = GlobalKey<FormState>();

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   Get.delete<LoginViewModel>();
  //   super.dispose();
  // }
  //see the above disposal is directly done in the List View model in the controller part in view models

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('login'.tr),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: _formkey,
              child: Column(
              children: [
                InputEmailWidget(),
                const SizedBox(height: 40,),
                InputPasswordWidget(),
              ],
            ),),
            const SizedBox(height: 40,),
            LoginButtonWidget(formkey: _formkey,),
          ],
        ),
      ),
    );
  }
}
