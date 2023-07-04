import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/function/handling_data_controller.dart';
import 'package:ecommerce/data/datasource/remote/test_data.dart';
import 'package:get/get.dart';

// class TestController extends GetxController{
//   TestData testData = TestData(Get.find());
//
//   List data = [];
//
//   late StatusRequest statusRequest ;
//  Future getData()async{
//
//     statusRequest = StatusRequest.loading;
//     var response  = await testData.getData();
//     print( "-----$response");
//     statusRequest = handlingData(response);
//     if(StatusRequest.success == statusRequest){
//       if(response['status'] == "success"){
//         // data.addAll(response['data']);
//         print("-=-=-=-=-=-$response");
//       }else{
//         statusRequest = StatusRequest.failure ;
//       }
//     }
//     update();
//   }
//
//   @override
//   void onInit() {
// getData();
// super.onInit();
//   }
// }