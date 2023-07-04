import 'package:ecommerce/controller/onborading_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/shared/compontents.dart';
import 'package:ecommerce/view/widget/onborading/custombutton.dart';
import 'package:ecommerce/view/widget/onborading/dotcontroller.dart';
import 'package:ecommerce/view/widget/onborading/slideronborading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onBoradingScreen extends StatelessWidget {
  const onBoradingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    onBoradingControllerImp controller =  Get.put(onBoradingControllerImp());
    return  SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Expanded(child: Container(
                    color: AppColor.green,
                  )),
                  Expanded(child: Container(
                    color: Colors.white,
                  )),
                ],
              ),
              Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: sliderOnBorading(),
                  ),
                  Expanded(
                    flex: 1,
                    child:Column(
                      children: [
                        dotController(),
                        const Spacer(),

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                          child: customButton(),
                        ),
                        const SizedBox(height: 8,),

                        const Spacer(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
