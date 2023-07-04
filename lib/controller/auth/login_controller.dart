import 'dart:convert';

import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/route.dart';
import 'package:ecommerce/core/function/handling_data_controller.dart';
import 'package:ecommerce/data/datasource/remote/auth/login_data.dart';
import 'package:ecommerce/linkapi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http ;
import 'package:shared_preferences/shared_preferences.dart';

abstract class loginController extends GetxController{

  goToSignUp();
  goToVerifyCode();
   login() ;

}
  class  loginControllerImp extends loginController{
  // LoginData loginData = LoginData(Get.find());
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isShowPassword = true ;
  StatusRequest? statusRequest ;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  isShow(){
    // isShowPassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off) ;
     if (isShowPassword == true) {
       isShowPassword = false;
        Icon(Icons.visibility);
     } else {
       isShowPassword = true;
        Icon(Icons.visibility_off) ;
     }
    update();
  }
  @override
  login() {
    formState.currentState!.validate();
    Get.offNamed(appRoutes.Home);
  }
  @override
  goToSignUp() {
    Get.offNamed(appRoutes.signup);
  }
  @override
  goToVerifyCode() {
    Get.toNamed(appRoutes.forgetPassword);
  }
  @override
  void onInit() {
    email = TextEditingController() ;
    password =  TextEditingController() ;
    super.onInit();
  }


}

