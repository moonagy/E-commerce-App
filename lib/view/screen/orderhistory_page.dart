import 'package:ecommerce/core/constant/color.dart';
import 'package:ecommerce/core/constant/imageassets.dart';
import 'package:flutter/material.dart';

class orderHistory extends StatelessWidget {
  const orderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.green,
        title: const Text(
          'Order History ',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.favorite,color: Colors.white,size: 35,)),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.shopping_cart,color: Colors.white,size: 35,)),
        ],
      ),
      body:  ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                     const Text(
                      'Transactions',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 45,
                      color: Colors.green[50],
                      child: const Center(
                        child:  Text(
                          'Januari 2020',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: AppColor.green
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                ListView.separated(
                  shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder:(context , index )  => Card(
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        color: Colors.green[50],
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 100,
                                   height: 100,
                                   decoration:  BoxDecoration(
                                     image: const DecorationImage(
                                      image :AssetImage(
                                          imageAssets.listImageone,
                                      ),
                                       fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                   ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                               const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                      'Coca Cola',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold
                                    ),

                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children:[
                                        TextSpan(
                                          text: '\$ 25',
                                          style: TextStyle(
                                            color: AppColor.green,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        TextSpan(
                                          text: '  '
                                        ),
                                        TextSpan(
                                          text: '\$ 25 Off',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 18,
                                            decoration: TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ]
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppColor.green,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: const Center(
                                  child: Text(
                                    'Delivered',
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ) ,
                    separatorBuilder:(context , index) => const SizedBox() ,
                    itemCount:14
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
