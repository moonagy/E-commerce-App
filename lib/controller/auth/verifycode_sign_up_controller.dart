import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class verifyCodeSignUpControoler extends GetxController{

  cheekCode();
  goToSuccessSignUp();

}
class verifyCodeSignUpControolerImp extends verifyCodeSignUpControoler{
  late String verifyCode ;
  @override
  cheekCode() {
  }

  @override
  goToSuccessSignUp() {
    Get.offNamed(appRoutes.successSignUp);
  }
  @override
  void onInit() {
    super.onInit();
  }

}