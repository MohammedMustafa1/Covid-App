import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_mvvm/utils/utils.dart';
import 'package:getx_and_mvvm/view_models/controller/login/login_view_model.dart';

class InputEmailWidget extends StatelessWidget {
  InputEmailWidget({super.key});

  final loginVM = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.emailController.value,
      focusNode: loginVM.emailFocusNode.value,
      validator: (value){
        if(value!.isEmpty){
          Utils.snackBar('Email', 'Enter Email');
        }
      },
      onFieldSubmitted: (value){
        Utils.fieldFocusChange(context, loginVM.emailFocusNode.value, loginVM.passwordFocusNode.value);
      },
      decoration: InputDecoration(
        hintText: 'email_hint'.tr,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
