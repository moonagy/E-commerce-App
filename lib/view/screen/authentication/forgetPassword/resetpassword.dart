import 'package:ecommerce/controller/auth/resetpassword_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/valid_input.dart';
import 'package:ecommerce/core/shared/compontents.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class resetPassword extends StatelessWidget {
  const resetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    resetPasswordControllerImp controller = Get.put(resetPasswordControllerImp());
    return Scaffold(
      backgroundColor: AppColor.green,

      appBar: AppBar(
        backgroundColor: AppColor.green,

        centerTitle: true,
        title:  Text(
          '35'.tr,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Form(
        key: controller.formState,
        child: ListView(
          padding: const EdgeInsets.only(top: 80),
          children: [
              Text(
              '34'.tr,
              style: const TextStyle(
                color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
              textAlign:TextAlign.center ,
            ),
            const SizedBox(
              height: 35,
            ),

            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10
              ),
              child: defaultFormField(
                  valid: (val){
                    return validInput(val!, 5, 100, 'password');
                  },
                  icon: const Icon(Icons.remove_red_eye_outlined),
                  hint: '34'.tr,
                  controller:controller.password,
                  isPassword: true,
                  type: TextInputType.visiblePassword,
                  function:(){}
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10
              ),
              child: defaultFormField(
                  valid: (val){
                    return validInput(val!, 5, 100, 'password');
                  },
                  icon: const Icon(Icons.remove_red_eye_outlined),
                  hint: '34'.tr,
                  controller:controller.rePassword,
                  isPassword: true,
                  type: TextInputType.visiblePassword,
                  function:(){}
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10
              ),
              child: defaultButton(
                  r: 30,
                  text: '33'.tr,
                  onPressed: (){
                    controller.goToSuccessResetPassword();
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
