import 'package:ecommerce/core/constant/route.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class onBoradingController extends GetxController{
  next();
  onPageChanged( int index);
  goToLogin();
}

class onBoradingControllerImp extends onBoradingController{
  int currentPage = 0;
  Services services = Get.find();
  late PageController pageController;
  @override
  next() {
    currentPage++;

    if(currentPage > onBoradingList.length - 1){
      services.sharedPreferences.setString('onBorading', '1');
      Get.offAllNamed(appRoutes.login);
    }else{
      pageController.animateToPage(currentPage, duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);

    }
  }
  @override
  goToLogin() {
    Get.offAllNamed(appRoutes.login);
    services.sharedPreferences.setString('onBorading', '1');

  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }
   @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

}