import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/alertexitapp.dart';
import 'package:ecommerce/core/function/valid_input.dart';
import 'package:ecommerce/core/shared/compontents.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
     Get.put(signUpControllerImp());
    return Scaffold(
      backgroundColor: AppColor.green,
      body:GetBuilder<signUpControllerImp>(builder: (controller) => WillPopScope(
            onWillPop: alertExitApp,
            child: Form(
              key: controller.formState,
              child: ListView(
                padding: const EdgeInsets.only(top: 80),
                children: [
                  Text(
                    "10".tr,
                    style: const TextStyle(
                        letterSpacing: 1.5,
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign:TextAlign.center ,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Text(
                    "40".tr,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign:TextAlign.center ,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10
                    ),
                    child: defaultFormField(
                        valid: (val){
                          return validInput(val!, 5, 100, 'username');
                        },
                        icon: const Icon(Icons.person_2_outlined),
                        hint: '23'.tr,
                        controller:controller.userName,
                        type: TextInputType.name,
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
                          return validInput(val!, 5, 100, 'email');
                        },
                        icon: const Icon(Icons.email_outlined),
                        hint: '12'.tr,
                        controller:controller.email,
                        type: TextInputType.emailAddress,
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
                          return validInput(val!, 5, 22, 'phone');
                        },
                        icon: const Icon(Icons.phone_android_outlined),
                        hint: '22'.tr,
                        controller:controller.phone,
                        type: TextInputType.number,
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
                        hint: '13'.tr,
                        controller:controller.password,
                        isPassword: true,
                        type: TextInputType.visiblePassword,
                        function:(){}
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 10
                    ),
                    child: defaultButton(
                        r: 30,
                        text: '17'.tr,
                        onPressed: (){
                          controller.signUp();
                        }
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          '25'.tr,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      defaultTextButton(
                          back: Colors.white,
                          text: '15'.tr,
                          function: (){
                            controller.goToLogin();
                          }
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
