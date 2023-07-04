import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class cheekEmailControoler extends GetxController{

  cheekEmail();
  goToVerifyCode();

}
class cheekEmailControolerImp extends cheekEmailControoler{
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController email;

  @override
  cheekEmail() {
    var formData = formState.currentState;
    if(formData!.validate()){
      print(' valid');
    }else{
      print('not valid');
    }
  }

  @override
  goToVerifyCode() {
    Get.offNamed(appRoutes.verifyCodeSignUp);
  }
  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

}