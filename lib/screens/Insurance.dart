
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constent/constent.dart';

class Unsurance extends StatefulWidget {
  const Unsurance({Key? key});

  @override
  State<Unsurance> createState() => _UnsuranceState();
}

class _UnsuranceState extends State<Unsurance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors().body,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: padding().contpading,
              child: Container(
                height: 160,
                width: Get.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/0000.jpg"), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple),
              ),
            ), //corouisel
            Padding(
              padding: padding().contpading,
              child: Container(
                height: 270,
                width: Get.width,
                decoration: BoxDecoration(
                  color: colors().back,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Manage Credits",
                        style: TextStyle(
                            color: colors().text,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/Screenshot 2024-02-28 143914.png"),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.purple),
                              height: 55,
                              width: 55,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                width: 75,
                                child: Center(
                                  child: Text(
                                    "Rupay Credit on UPI",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: colors().text, fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 1,
                            color: colors().text,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Icon(
                                Icons.credit_card,
                                size: 50,
                                color: colors().iconback,
                              ),
                              height: 55,
                              width: 55,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                width: 75,
                                child: Center(
                                  child: Text(
                                    "Credit Card",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: colors().text, fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [Colors.black, colors().back],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Or,provide vehicle registration number",
                                style: TextStyle(color: colors().text),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: colors().back,
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                    ),
                                    hintText:
                                        "Eg. KA00XX0000",
                                    hintStyle: TextStyle(fontSize: 20),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ), //Manage credits
            Padding(
              padding: padding().contpading,
              child: Container(
                height: 150,
                width: Get.width,
                decoration: BoxDecoration(
                  color: colors().back,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "Insure self and family",
                        style: TextStyle(
                            color: colors().text,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.monitor_heart_outlined,
                              size: 50,
                              color: colors().iconback,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 90,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Health",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: colors().text, fontSize: 14),
                                  ),
                                  Text(
                                    "Form RS.557/Month",
                                    style: TextStyle(
                                        color: colors().text, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 1,
                            color: colors().text,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Icon(
                                Icons.handshake_outlined,
                                size: 50,
                                color: colors().iconback,
                              ),
                              height: 55,
                              width: 55,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 90,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Life",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: colors().text, fontSize: 14),
                                  ),
                                  Text(
                                    "Form RS.706/Month",
                                    style: TextStyle(
                                        color: colors().text, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ), //Insure self nd family
            Padding(
              padding: padding().contpading,
              child: Container(
                height: 150,
                width: Get.width,
                decoration: BoxDecoration(
                  color: colors().back,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "other Insurance",
                        style: TextStyle(
                            color: colors().text,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
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
                                    Icons.airplanemode_active_outlined,
                                    size: 50,
                                    color: colors().iconback,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Travel Insurance",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.airline_seat_flat_angled_rounded,
                                    size: 50,
                                    color: colors().iconback,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Accident",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.shield_outlined,
                                    size: 50,
                                    color: colors().iconback,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Super         top-up",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.shop,
                                    size: 50,
                                    color: colors().iconback,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Shop",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
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
            ), //Other insure
            Padding(
              padding: padding().contpading,
              child: Container(
                height: 300,
                width: Get.width,
                decoration: BoxDecoration(
                  color: colors().back,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Know more ab out insurance",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: colors().text,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 200,
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
                                      height: 190,
                                      width: 160,
                                      decoration: BoxDecoration(
                                          color: Colors.blue.withOpacity(0.4),
                                          borderRadius: BorderRadius.circular(
                                              20)), // color of grid items
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ), //know more about insure
            Padding(
              padding: padding().contpading,
              child: Container(
                height: 300,
                width: Get.width,
                decoration: BoxDecoration(
                  color: colors().back,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Why customers love Phonepe insurance",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: colors().text,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 200,
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
                                      height: 190,
                                      width: 280,
                                      decoration: BoxDecoration(
                                          color: Colors.blue.withOpacity(0.4),
                                          borderRadius: BorderRadius.circular(
                                              20)), // color of grid items
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ), //Why customers...
          ],
        ),
      ),
    );
  }
}
