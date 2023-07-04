import 'dart:ui';

import 'package:ecommerce/core/constant/themedata.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalController extends GetxController{
  Locale? language;
  Services services = Get.find();
   ThemeData appTheme = themeEnglish ;
  changeLange (String langCode){
    Locale locale = Locale(langCode);
    appTheme = langCode == 'ar' ? themeArabic : themeEnglish ;
    Get.changeTheme(appTheme);
    services.sharedPreferences.setString("lang", langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = services.sharedPreferences.getString("lang");
    if(sharedPrefLang == "ar"){
      language = const Locale("ar");
      appTheme = themeArabic ;
    }else if(sharedPrefLang == "en"){
      language = const Locale("en");
      appTheme = themeEnglish ;
    }else{
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}