import 'package:ecommerce/core/constant/route.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class appMiddleWare extends GetMiddleware{
  @override
  int? get priority => 1;
  Services services = Get.find();
  @override
  @override
  RouteSettings? redirect(String? route) {
    if(services.sharedPreferences.getString("onBorading") == "1"){
      return const RouteSettings(name: appRoutes.login) ;
    }
  }
}