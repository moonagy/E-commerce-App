import 'package:ecommerce/controller/home/home_controller.dart';
import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/alertexitapp.dart';
import 'package:ecommerce/core/shared/compontents.dart';
import 'package:ecommerce/view/widget/home/grid_card.dart';
import 'package:ecommerce/view/widget/home/list_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return  Scaffold(
      appBar:  AppBar(
          backgroundColor: AppColor.green,
          toolbarHeight: 100,
          title: const Text(
            'E-commerce',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.8,
                color: Colors.white
            ),
          ),
          actions: [
            IconButton(
              onPressed: (){},
              icon:const Icon(
                Icons.favorite,
                color: Colors.white,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: (){},
              icon:const Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
          bottom: PreferredSize(
              preferredSize:const Size(80, 40),
              child:  Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                  left: 16,
                  right: 16
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search,color: AppColor.green),
                      hintText: 'Search Product',
                        border: InputBorder.none
                    ),
                  ),
                ),
              ) )
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: ListView(
          children:  [
            Column(
              children: [
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
    );
  }
}
