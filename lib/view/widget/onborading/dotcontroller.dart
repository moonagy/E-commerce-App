import 'package:ecommerce/controller/onborading_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dotController extends StatelessWidget {
   dotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder <onBoradingControllerImp>(builder: (controller) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(onBoradingList.length, (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 900),
          height: 6,
          width: controller.currentPage == index ? 20 : 5,
          margin: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            color: AppColor.green,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        ),
      ],
    ),
    );
  }
}
