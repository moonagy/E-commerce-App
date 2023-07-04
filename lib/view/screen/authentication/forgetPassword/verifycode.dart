import 'package:ecommerce/controller/auth/verifycode_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
class verifyCode extends StatelessWidget {
  const  verifyCode({super.key});
  @override
  Widget build(BuildContext context) {
    verifyCodeControolerImp controller = Get.put(verifyCodeControolerImp());
    return Scaffold(
      backgroundColor: AppColor.green,

      appBar: AppBar(
        backgroundColor: AppColor.green,
        centerTitle: true,
        title:  const Text(
              'Verification Code',
          style: TextStyle(
            color:Colors.white,
            fontSize: 22,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
     body: ListView(
        padding: const EdgeInsets.only(top: 35),
        children: [
          const Text(
            "Cheek Code",
            style:  TextStyle(
              color: Colors.white,
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
            //runs when every textfield is filled
            onSubmit: (String verificationCode){
              controller.goToResetPassword();
                  }
                  // end onSubmit
          ),

        ],
      ),

    );
  }
}
