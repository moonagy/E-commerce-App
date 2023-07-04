import 'package:ecommerce/core/class/statusrequest.dart';
import 'package:ecommerce/core/constant/imageassets.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

class handlingDataView extends StatelessWidget {
  final StatusRequest statusRequest ;
  final Widget widget ;
  const handlingDataView({super.key, required this.statusRequest, required this.widget});
  @override
  Widget build(BuildContext context) {
    return
      statusRequest == StatusRequest.loading ?
       Center(
        child: Lottie.asset(imageAssets.loading),
      ) :
      statusRequest == StatusRequest.offLineFailure ?
       Center(
        child:Lottie.asset(imageAssets.offline) ,
      )
          :
      statusRequest == StatusRequest.serverFailure ?
       Center(
        child: Lottie.asset(imageAssets.server),
      ) :
      statusRequest == StatusRequest.failure ?
       Center(
        child: Lottie.asset(imageAssets.noData),
      ): widget ;
  }
}
