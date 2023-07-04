import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class forgrtPasswordControoler extends GetxController{
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  cheekEmail();
  goToVerifyCode();

}
class forgrtPasswordControolerImp extends forgrtPasswordControoler{
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
    Get.offNamed(appRoutes.verifyCode);
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