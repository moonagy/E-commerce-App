import 'package:ecommerce/view/screen/browse_page.dart';
import 'package:ecommerce/view/screen/home_page.dart';
import 'package:ecommerce/view/screen/orderhistory_page.dart';
import 'package:ecommerce/view/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;

  List<Widget> listPage = [
    const HomePage(),
    const browsePage(),
    const orderHistory(),
    const Profile(),
  ];

  List  titlebottomappbar = [
    "home" ,
    "Browse" ,
    "Order " ,
    "Profile"
  ] ;
  List bottomappbar = [
    {"title": "home", "icon": Icons.home},
    {"title": "Browse", "icon": Icons.search},
    {"title": "Order ", "icon": Icons.menu_book},
    {"title": "Profile", "icon": Icons.person}
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}