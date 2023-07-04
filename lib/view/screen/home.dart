import 'package:ecommerce/controller/home/home_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/alertexitapp.dart';
import 'package:ecommerce/view/widget/home/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => WillPopScope(
          onWillPop: alertExitApp,
          child: Scaffold(
            floatingActionButton: FloatingActionButton(
                backgroundColor: AppColor.green,
                onPressed: () {},
                child: const Icon(Icons.shopping_basket_outlined)),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: const CustomBottomAppBarHome(),
            body: controller.listPage.elementAt(controller.currentpage),
          ),
        ));
  }
}
