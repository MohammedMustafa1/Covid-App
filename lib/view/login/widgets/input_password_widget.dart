import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_and_mvvm/utils/utils.dart';
import 'package:getx_and_mvvm/view_models/controller/login/login_view_model.dart';

class InputPasswordWidget extends StatelessWidget {
  InputPasswordWidget({super.key});

  final loginVM = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: loginVM.passwordController.value,
      focusNode: loginVM.passwordFocusNode.value,
      validator: (value){
        if(value!.isEmpty){
          Utils.snackBar('Password', 'Enter Password');
        }
      },
      onFieldSubmitted: (value){
        // Utils.fieldFocusChange(context, loginVM.emailFocusNode.value, loginVM.passwordFocusNode.value);
      },
      obscureText: true,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        hintText: 'password_hint'.tr,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
