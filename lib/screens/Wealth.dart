import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constent/constent.dart';

class Wealth extends StatefulWidget {
  const Wealth({Key? key});

  @override
  State<Wealth> createState() => _WealthState();
}

class _WealthState extends State<Wealth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: padding().contpading,
                child: Container(
                  height: Get.height * 0.45,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: colors().back,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/fdgdg.jpg"),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.purple),
                            height: 150,
                            width: Get.width - 16,
                          )
                        ],
                      ),
                      Container(
                        height: 180,
                        child: ListView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            physics: AlwaysScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 150,
                                      width: Get.width - 80,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.grey),
                                          color: colors().backbody,
                                          borderRadius: BorderRadius.circular(
                                              10)), // color of grid items
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.purpleAccent,
                              borderRadius: BorderRadius.circular(25)),
                          height: Get.height * .05,
                          width: Get.width - 50,
                          child: Center(
                              child: Text(
                            "INSTALL SHARE.MARKET",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: colors().text),
                          ))),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: padding().contpading,
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        color: colors().back,
                        borderRadius: BorderRadius.circular(25)),
                    height: 50,
                    width: Get.width,
                    child: Row(
                      children: [
                        Container(
                          height: 45,
                          width: 60,
                          child: Icon(
                            Icons.search,
                            size: 30,
                            color: colors().text,
                          ),
                        ),
                        Text(
                          "Search by fund or category",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: colors().text),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: padding().contpading,
                child: Container(
                  height: 290,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: colors().back,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Investment Ideas",
                          style: TextStyle(
                              color: colors().text,
                              fontSize: fontsize().underapp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: 105,
                          width: Get.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.local_florist_outlined,
                                      size: 50,
                                      color: colors().iconback,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Best SIP Funds",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: fontsize().underapp),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.call_to_action_outlined,
                                      size: 50,
                                      color: colors().iconback,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Tax Saving Funds",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: fontsize().underapp),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.call_split_outlined,
                                      size: 50,
                                      color: colors().iconback,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "2-in-1 Funds",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: fontsize().underapp),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.lightbulb_outline_rounded,
                                      size: 50,
                                      color: colors().iconback,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Electricity",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: fontsize().underapp),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          height: 105,
                          width: Get.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.account_balance_outlined,
                                      size: 50,
                                      color: colors().iconback,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Rent Payment",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: fontsize().underapp),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.shopping_bag_outlined,
                                      size: 50,
                                      color: colors().iconback,
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "Loan Repayment",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: fontsize().underapp),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.move_to_inbox_outlined,
                                      size: 50,
                                      color: colors().iconback,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Book A Cylinder",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: fontsize().underapp),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22),
                                          color: Colors.purple),
                                      height: 55,
                                      width: 55,
                                      child: Icon(
                                        Icons.arrow_forward_ios_sharp,
                                        size: 30,
                                        color: colors().text,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "See All",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: fontsize().underapp),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
