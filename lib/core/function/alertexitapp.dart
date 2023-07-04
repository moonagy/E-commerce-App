import 'dart:io';
import 'package:ecommerce/core/shared/compontents.dart';
import 'package:get/get.dart';
Future<bool> alertExitApp(){
  Get.defaultDialog(
    title: 'تنبيه',
    middleText: "هل ترويد الخروج من التطبيق ",
    actions: [
      defaultButton(
          text: 'نعم',
          onPressed:(){
            exit(0);
          }
      ),
      defaultButton(
          text:'لا' ,
          onPressed: (){
            Get.back();
          },
      ),
    ],
  );
  return Future.value(true);
}