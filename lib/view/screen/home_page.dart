import 'package:ecommerce/controller/home/home_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/alertexitapp.dart';
import 'package:ecommerce/core/shared/compontents.dart';
import 'package:ecommerce/view/widget/home/appbar.dart';
import 'package:ecommerce/view/widget/home/grid_card.dart';
import 'package:ecommerce/view/widget/home/list_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return  SafeArea(
      child: Scaffold(
        body: WillPopScope(
          onWillPop: alertExitApp,
          child: ListView(
            children:  [
              Column(
                children: [
                  const appBar(),
                  const SizedBox(
                    height: 25,
                  ),
                  const listHome(),
                  const SizedBox(
                    height: 25,
                  ),
                  const gridCard(),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'New Product ',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        defaultButton(
                            textColor: Colors.white,
                            back: AppColor.green,
                            wid: 120,
                            r: 15,
                            isUpper:true ,
                            text:'See All' ,
                            onPressed: (){}
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const listHome(),
                   const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Popular Product ',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        defaultButton(
                            textColor: Colors.white,
                            back: AppColor.green,
                            wid: 120,
                            r: 15,
                            isUpper:true ,
                            text:'See All' ,
                            onPressed: (){}
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const listHome(),
                  const SizedBox(
                    height: 25,
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
