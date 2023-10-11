

import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'message':'What is your name',
      'name': 'Mohammed Mustafa',
      'internet_exception' : "We're unable ro show result \n Please check your data \n connection.",
      'general_exception':"We're unable to process your request \n Please try again.",
      'welcome_back':"Welcome \n Back",
      'login':"Login",
      'password_hint':'Password',
      'email_hint' : 'Enter Email',
    },
    'ur_PK':{
      'message':'آپ کا نام کیا ہے',
      'name': 'محمد مصطفی',
      'email_hint' : 'ای میل درج کریں۔',
    },
  };

}