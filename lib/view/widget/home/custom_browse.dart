import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/constant/imageassets.dart';
class customBrowse extends StatelessWidget {
  const customBrowse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        const SizedBox(
          height: 16,
        ), // ard
        ListView.separated(
          itemBuilder: (context , index) => Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  color: Colors.red[50],
                  child: SizedBox(
                    width: 150,
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imageAssets.listImageone),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Apple',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: AppColor.green,
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Tradly',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\$8.99',
                                    style:  TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  TextSpan(
                                      text: ' \$3.99',
                                      style: TextStyle(
                                          fontSize: 18
                                      )
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.red[50],
                  child: SizedBox(
                    width: 150,
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imageAssets.listImageone),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Apple',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: AppColor.green,
                                  child: Text(
                                    'T',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Tradly',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Text.rich(
                              TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '\$8.99',
                                    style:  TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  TextSpan(
                                      text: ' \$3.99',
                                      style: TextStyle(
                                          fontSize: 18
                                      )
                                  ),
                                ],
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
          ),
          separatorBuilder: (BuildContext, int) => const SizedBox(),
          itemCount:12,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        ),
      ],
    );
  }
}
