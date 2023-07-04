import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/route.dart';
import 'package:ecommerce/core/shared/compontents.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class successResetPassword extends StatelessWidget {
  const successResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.green,
      appBar: AppBar(
        backgroundColor: AppColor.green,
        centerTitle: true,
        title: Text(
            '32'.tr,
          style: const TextStyle(
            color: Colors.white
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          const Center(child: Icon(Icons.check_circle,color:Colors.white,size: 200,)),
          const SizedBox(
            height: 10,
          ),
          Text(
            '37'.tr,
            style: const TextStyle(
              color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            '36'.tr,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10
            ),
            child: defaultButton(
                r: 30,
                text: '31'.tr,
                onPressed: (){
                  Get.offAllNamed(appRoutes.login);
                }
            ),
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}
