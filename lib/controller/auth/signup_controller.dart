import 'dart:convert';

import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/route.dart';
import 'package:ecommerce/core/function/handling_data_controller.dart';
import 'package:ecommerce/data/datasource/remote/auth/signup_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

abstract class signUpController extends GetxController{
  signUp();
  goToLogin();

}
class  signUpControllerImp extends signUpController{
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late StatusRequest statusRequest ;
  // SignupData signupData = SignupData(Get.find());

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  List data = [];
  @override
  // signUp() async {
  //   if (formState.currentState!.validate()) {
  //     statusRequest = StatusRequest.loading;
  //     update() ;
  //     var response = await signupData.postdata(
  //         userName.text, password.text, email.text, phone.text);
  //     print("=============================== Controller $response ");
  //     statusRequest = handlingData(response);
  //     if (StatusRequest.success == statusRequest) {
  //       if (response['status'] == "success") {
  //         // data.addAll(response['data']);
  //         Get.offNamed(appRoutes.verifyCodeSignUp  ,arguments: {
  //           "email" : email.text
  //         });
  //       } else {
  //         Get.defaultDialog(title: "ُWarning" , middleText: "Phone Number Or Email Already Exists") ;
  //         statusRequest = StatusRequest.failure;
  //       }
  //     }
  //     update();
  //   } else {
  //   }
  // }
  @override
  goToLogin() {
    Get.offAllNamed(appRoutes.login);
  }
  @override
  void onInit() {
    email = TextEditingController() ;
    userName = TextEditingController() ;
    phone = TextEditingController() ;
    password =  TextEditingController() ;
    super.onInit();
  }

  @override
  signUp() {

  }
}

