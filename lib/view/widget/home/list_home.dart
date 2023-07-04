import 'package:ecommerce/core/shared/compontents.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/constant/imageassets.dart';
import 'package:get/get.dart';

class listHome extends StatelessWidget {
  const listHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(padding: const EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,
        children:[
          SizedBox(
            width:302,
            child: Stack(children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image:  const DecorationImage(
                      image: AssetImage(imageAssets.listImageone),
                      fit: BoxFit.cover,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      '41'.tr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: defaultButton(
                          back: Colors.transparent,
                          text: 'Start Shopping',
                          textColor: Colors.white,
                          onPressed: (){}
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            width:302,
            child: Stack(children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image:  const DecorationImage(
                      image: AssetImage(imageAssets.listImageone),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      '41'.tr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: defaultButton(
                          back: Colors.transparent,
                          text: 'Start Shopping',
                          textColor: Colors.white,
                          onPressed: (){}
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            width:302,
            child: Stack(children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image:  const DecorationImage(
                      image: AssetImage(imageAssets.listImageone),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      '41'.tr,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)
                      ),
                      child: defaultButton(
                          back: Colors.transparent,
                          text: 'Start Shopping',
                          textColor: Colors.white,
                          onPressed: (){}
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),

        ],
      ),
    );
  }
}
