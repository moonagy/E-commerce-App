import 'package:ecommerce/controller/onborading_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/constant.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class sliderOnBorading extends GetView<onBoradingControllerImp> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding * 2),
      child: PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onBoradingList.length,
        itemBuilder: (context, i)=>Column(
          children: [

            const SizedBox(height: kPadding * 4),
            Container(
              width: 300,
              height: 400,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
              ),
              child: Image.asset(onBoradingList[i].image!,
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: kPadding ),
            Container(alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                onBoradingList[i].body!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  height: 1.5,
                  wordSpacing: 2,
                  color:AppColor.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
