import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class verifyCodeControoler extends GetxController{

  cheekCode();
  goToResetPassword();

}
class verifyCodeControolerImp extends verifyCodeControoler{
   late String verifyCode ;
  @override
  cheekCode() {
  }

  @override
  goToResetPassword() {
    Get.offNamed(appRoutes.resetPassword);
  }
  @override
  void onInit() {
    super.onInit();
  }

}