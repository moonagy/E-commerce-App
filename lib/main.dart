import 'package:ecommerce/binding/initialbinding.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/localiztion/changelocal.dart';
import 'package:ecommerce/core/localiztion/translation.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(

      locale: controller.language,
       translations: Translation(),
      debugShowCheckedModeBanner: false,
      theme: controller.appTheme,
      getPages:routes,
      initialBinding: InitialBindings(),
    );
  }
}
