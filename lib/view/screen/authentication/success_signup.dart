import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/route.dart';
import 'package:ecommerce/core/shared/compontents.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class successSignUp extends StatelessWidget {
  const successSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('32'.tr),
      ),
      body: Column(
        children: [
          const Center(child: Icon(Icons.check_circle,color: AppColor.blue,size: 200,)),
         const SizedBox(
           height: 10,
         ),
          Text(
            '37'.tr,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            '38'.tr,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        const Spacer(),
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
