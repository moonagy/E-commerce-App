import 'package:ecommerce/controller/onborading_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customButton extends GetView<onBoradingControllerImp> {
  const customButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.green,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: MaterialButton(
        onPressed: (){
          controller.next();
        },
        child:  Text(
         '8'.tr,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
