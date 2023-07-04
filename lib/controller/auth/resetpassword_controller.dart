import 'package:ecommerce/core/constant/route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class resetPasswordController extends GetxController{

  resetPassword();
  goToSuccessResetPassword();

}
class resetPasswordControllerImp extends resetPasswordController{
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController rePassword;

  @override
  resetPassword() {
    var formData = formState.currentState;
    if(formData!.validate()){
      print(' valid');
    }else{
      print('not valid');
    }
  }

  @override
  goToSuccessResetPassword() {
    Get.offNamed(appRoutes.successResetPassword);
  }
  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.dispose();
  }

}