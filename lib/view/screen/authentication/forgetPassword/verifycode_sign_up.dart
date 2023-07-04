import 'package:ecommerce/controller/auth/verifycode_sign_up_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
class verifyCodeSignUp extends StatelessWidget {
  const  verifyCodeSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    verifyCodeSignUpControolerImp controller = Get.put(verifyCodeSignUpControolerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  const Text(
          'Verification Code',
          style: TextStyle(
            color: AppColor.green,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 35),
        children: [
          const Text(
            "Cheek Code",
            style:  TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),
            textAlign:TextAlign.center ,
          ),
          const SizedBox(
            height: 35,
          ),
          OtpTextField(
              borderRadius: BorderRadius.circular(15),
              margin: const EdgeInsets.only(right: 15),
              numberOfFields: 5,
              borderColor:AppColor.green,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              onSubmit: (String verificationCode){
                controller.goToSuccessSignUp();
              }
            // end onSubmit
          ),

        ],
      ),

    );
  }
}
