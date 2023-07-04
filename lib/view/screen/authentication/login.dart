import 'package:ecommerce/controller/auth/login_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/alertexitapp.dart';
import 'package:ecommerce/core/function/valid_input.dart';
import 'package:ecommerce/core/shared/compontents.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(loginControllerImp());
    return Scaffold(
      backgroundColor: AppColor.green,
      body:GetBuilder <loginControllerImp> (builder: (controller) =>  WillPopScope(
        onWillPop:alertExitApp,
        child:Form(
          key: controller.formState,
          child: ListView(
            padding: const EdgeInsets.only(top: 150),
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
                "39".tr,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                ),
                textAlign:TextAlign.center ,
              ),
              const SizedBox(height: 10),
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
              const SizedBox(
                height: 15,
              ),
              GetBuilder<loginControllerImp>(
                  builder: (controller) =>
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 10
                        ),
                        child: defaultFormField(

                            icon:  const Icon(Icons.visibility,),
                            onTap: (){
                              controller.isShow();
                            },
                            valid: (val){
                              return validInput(val!, 5, 100, 'password');

                            },
                            // icon: const Icon(Icons.remove_red_eye_outlined),
                            hint: '13'.tr,
                            controller:controller.password,
                            isPassword: controller.isShowPassword,
                            type: TextInputType.visiblePassword,
                            function:(){}
                        ),
                      )
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0
                ),
                child: defaultTextButton(
                    baseline: TextBaseline.ideographic,
                    back: Colors.white,
                    text: '14'.tr,
                    function: (){
                      controller.goToVerifyCode();
                    }
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
                    text: '15'.tr,
                    onPressed: (){
                      controller.login();
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
                      '16'.tr,
                    style: const TextStyle(
                      color: Colors.white
                    ),
                  ),
                  defaultTextButton(
                      back:Colors.white,
                      text: '17'.tr,
                      function: (){
                        controller.goToSignUp();
                      }
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
