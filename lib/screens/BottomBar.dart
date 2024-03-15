import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phonepaychlone/Constent/constent.dart';
import 'package:phonepaychlone/screens/CreditScreen.dart';
import 'package:phonepaychlone/screens/Insurance.dart';
import 'package:phonepaychlone/screens/Profille.dart';
import 'package:phonepaychlone/screens/Wealth.dart';
import 'package:phonepaychlone/screens/history.dart';
import 'package:phonepaychlone/screens/homePage.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  List bodys = [
    FirstScreen(),
    CreditScreen(),
    Unsurance(),
    Wealth(),
    History(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(12)),
                        child: Icon(Icons.person),
                      ),
                    ),
                    Positioned(
                      right: -5,
                      bottom: -1,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://i.pinimg.com/236x/37/8b/33/378b33dd64f77100ff0987db35bdf7f9.jpg")),
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white70),
                        height: 20,
                        width: 20,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "PhonePe",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "address",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Icon(Icons.arrow_drop_down),
              SizedBox(
                width: 55,
              ),
              Container(
                  child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.qr_code_scanner_outlined,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.notifications_outlined,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            isDismissible: false,
                            isScrollControlled: false,
                            backgroundColor: colors().back,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            context: context,
                            builder: (context) {
                              return SingleChildScrollView(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
                                          color: colors().bottomndapp,
                                        ),
                                        height: 80,
                                        width: 500,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                  child: Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Icon(
                                                      Icons.arrow_back,
                                                      size: 25,
                                                      color: colors().text,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    "help",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: colors().text),
                                                  )
                                                ],
                                              )),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                "VIEW TICKETS",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: colors().text),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration:
                                            BoxDecoration(color: colors().back),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 1,
                                                          color: Colors.grey),
                                                      color: colors().back,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25)),
                                                  height: 50,
                                                  width: Get.width - 80,
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
                                                        "search",
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                colors().text),
                                                      ),
                                                    ],
                                                  )),
                                              Padding(
                                                padding: padding().contpading,
                                                child: Container(
                                                  height: 50,
                                                  width: 1,
                                                  color: colors().text,
                                                ),
                                              ),
                                              Container(
                                                child: Icon(
                                                  Icons.g_translate_rounded,
                                                  color: colors().text,
                                                  size: 35,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Text(
                                          "Need Help?",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: colors().text),
                                        ),
                                      ),
                                      Image.asset("assets/gyyergh.jpg")
                                    ]),
                              );
                            });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 2, color: Colors.white)),
                        child: Icon(
                          Icons.question_mark,
                          size: 21,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
        backgroundColor: colors().bottomndapp,
      ),
      backgroundColor: colors().backbody,
      body: bodys[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: colors().bottomndapp),
        height: 65,
        child: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectedIndex == 0
                            ? colors().icon
                            : colors().bottomicnbck,
                      ),
                      height: 35,
                      width: 35,
                      child: Icon(
                        Icons.home,
                        color: selectedIndex == 0
                            ? colors().bottomndapp
                            : colors().bottomicon,
                        size: 25,
                      ),
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: selectedIndex == 0
                            ? colors().icon
                            : colors().bottomicon,
                        fontSize: fontsize().underapp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectedIndex == 1
                            ? colors().icon
                            : colors().bottomicnbck,
                      ),
                      height: 35,
                      width: 35,
                      child: Icon(
                        Icons.currency_rupee_rounded,
                        color: selectedIndex == 1
                            ? colors().bottomndapp
                            : colors().bottomicon,
                        size: 25,
                      ),
                    ),
                    Text(
                      "Credit",
                      style: TextStyle(
                        color: selectedIndex == 1
                            ? colors().icon
                            : colors().bottomicon,
                        fontSize: fontsize().underapp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectedIndex == 2
                            ? colors().icon
                            : colors().bottomicnbck,
                      ),
                      height: 35,
                      width: 35,
                      child: Icon(
                        Icons.shield_outlined,
                        color: selectedIndex == 2
                            ? colors().bottomndapp
                            : colors().bottomicon,
                        size: 25,
                      ),
                    ),
                    Text(
                      "Insurance",
                      style: TextStyle(
                        color: selectedIndex == 2
                            ? colors().icon
                            : colors().bottomicon,
                        fontSize: fontsize().underapp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 3;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectedIndex == 3
                            ? colors().icon
                            : colors().bottomicnbck,
                      ),
                      height: 35,
                      width: 35,
                      child: Icon(
                        Icons.arrow_circle_up_outlined,
                        color: selectedIndex == 3
                            ? colors().bottomndapp
                            : colors().bottomicon,
                        size: 25,
                      ),
                    ),
                    Text(
                      "Wealth",
                      style: TextStyle(
                        color: selectedIndex == 3
                            ? colors().icon
                            : colors().bottomicon,
                        fontSize: fontsize().underapp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = 4;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectedIndex == 4
                            ? colors().icon
                            : colors().bottomicnbck,
                      ),
                      height: 35,
                      width: 35,
                      child: Icon(
                        Icons.compare_arrows_outlined,
                        color: selectedIndex == 4
                            ? colors().bottomndapp
                            : colors().bottomicon,
                        size: 25,
                      ),
                    ),
                    Text(
                      "History",
                      style: TextStyle(
                        color: selectedIndex == 4
                            ? colors().icon
                            : colors().bottomicon,
                        fontSize: fontsize().underapp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
