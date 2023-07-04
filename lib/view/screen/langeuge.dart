import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/route.dart';
import 'package:ecommerce/core/localiztion/changelocal.dart';
import 'package:ecommerce/core/shared/compontents.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class languageScreen extends GetView<LocalController> {
  const languageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${"1".tr}:',
              style:const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
             const SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: defaultButton(
                       text: 'ar',
                onPressed: (){
                  controller.changeLange( "ar");
                  Get.toNamed(appRoutes.onBorading);
                  },
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: defaultButton(
                text: 'en',
                onPressed: (){
                controller.changeLange( "en");
                Get.toNamed(appRoutes.onBorading);

              },),
            ),
          ],
        ),
      ),
    );
  }
}
