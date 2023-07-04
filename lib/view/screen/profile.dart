import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(child: Container(
                color: AppColor.green,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 60,
                    right: 16,
                    left: 16,
                    bottom: 16
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Profile',
                            style: TextStyle(
                              letterSpacing: 1.8,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 30,
                                  )
                              ),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                    size: 30,
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                       const Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           CircleAvatar(
                            radius: 50,
                            backgroundColor: Colors.white,
                             child: CircleAvatar(
                               backgroundColor: AppColor.green,
                               radius: 48,
                               child: Text(
                                 'M',
                                 style: TextStyle(
                                   color: Colors.white,
                                     fontSize:30,
                                   fontWeight: FontWeight.bold
                                 ),
                               ),
                             ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mohamed Nagy',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.white
                                ),
                              ),
                              Text(
                                '\+20 01067156379',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white70
                                ),
                              ),
                              Text(
                                'mn877007@gmail.com',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white70
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
              Expanded(child: Container(

              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Center(
              child: Card(
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  width: 350,
                  height: 350,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Edit Profile',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Language & Currency',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Feedback',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Refer a Friend',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Terms & Conditions',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(
                          color: AppColor.green
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
