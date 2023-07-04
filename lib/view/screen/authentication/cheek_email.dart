import 'package:ecommerce/controller/auth/cheek_email_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/valid_input.dart';
import 'package:ecommerce/core/shared/compontents.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class cheekEmailSignUp extends StatelessWidget {
  const cheekEmailSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    cheekEmailControolerImp controller = Get.put(cheekEmailControolerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(
          "27".tr,
          style: const TextStyle(
            color: AppColor.green,
            fontSize: 22,
          ),
        ),
      ),
      body: Form(
        key: controller.formState,
        child: ListView(
          padding: const EdgeInsets.only(top: 35),
          children: [
             Text(
              "28".tr,
              style:  const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
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

            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10
              ),
              child: defaultButton(
                  r: 30,
                  text: '27'.tr,
                  onPressed: (){
                    controller.goToVerifyCode();
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
