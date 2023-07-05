import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/view/widget/home/custom_browse.dart';
import 'package:flutter/material.dart';
// ignore:
class browsePage extends StatelessWidget {
  const browsePage({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: ListView(
        children: const [
          customBrowse() ,
        ],
      ),
    );
  }
}
