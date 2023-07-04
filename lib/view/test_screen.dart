import 'package:ecommerce/controller/test_data_controller.dart';
import 'package:ecommerce/core/class/handling_data_view.dart';
import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class testScreen extends StatelessWidget {
//   const testScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Get.put(TestController());
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('title'),
//       ),
//       body: GetBuilder<TestController>(builder: (controller){
//         return handlingDataView(
//         statusRequest: controller.statusRequest,
//         widget:ListView.builder(
//             itemCount: controller.data.length,
//             itemBuilder: (context , index){
//               return Text('${controller.data}');
//             }
//         )
//     );
//     },
//     ));
//   }
// }
