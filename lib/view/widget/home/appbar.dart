import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/function/valid_input.dart';
import 'package:ecommerce/core/shared/compontents.dart';
import 'package:flutter/material.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(padding:const EdgeInsets.all(22),
      color: AppColor.green,
      height:170 ,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Groceries',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                ),
              ),
              Row(
                children: [
                  Icon(Icons.favorite,color: Colors.white,size:35),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(Icons.shopping_cart ,color: Colors.white,size:35),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          defaultFormField(
            valid:(val){
              return validInput(val!, 5, 100, 'Search');
            } ,
            controller: TextEditingController(),
            type:TextInputType.text,
            function:(){},
            hint: 'Search Product',
            preicon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
