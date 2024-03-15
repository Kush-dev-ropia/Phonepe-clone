import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phonepaychlone/Constent/constent.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List Bottomsheet = [
    {
      "banner": Icons.perm_identity,
      "text": Text("Payment issues"),
    },
    {
      "banner": Icons.account_balance_outlined,
      "text": Text("Profile & Payments"),
    },
    {
      "banner": Icons.perm_identity,
      "text": Text("Money Transfer"),
    },
    {
      "banner": Icons.arrow_circle_down,
      "text": Text("Recharge & Bill Payments"),
    },
    {
      "banner": Icons.arrow_circle_down,
      "text": Text("Rewards & Refer and Earn"),
    },
    {
      "banner": Image.network(""),
      "text": Text("Others"),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors().body,
      body: Stack(
        children: [
          SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                Padding(
                  padding: padding().contpading,
                  child: Container(
                    child: Carousel(
                      images: [
                        Image.network(
                            "https://images.yourstory.com/cs/2/a09f22505c6411ea9c48a10bad99c62f/Image1afj-1686757678106.jpg?w=1152&fm=auto&ar=2:1&mode=crop&crop=faces"),
                        Image.network(
                            "https://entrackr.com/storage/2020/12/Flipkart-phonepe-1.jpg"),
                        Image.network(
                            "https://www.bookofficenow.com/blogs/wp-content/uploads/2023/11/Phone-pe-Blog.png"),
                      ],
                      dotSize: 4.0,
                      dotSpacing: 15.0,
                      dotColor: colors().iconback,
                      indicatorBgPadding: 5.0,
                      dotBgColor: Colors.transparent,
                      borderRadius: true,
                    ),
                    height: 160,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: colors().back,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ), //corusel
                Padding(
                  padding: padding().contpading,
                  child: Container(
                    height: 160,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: colors().back,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "Transfer Money",
                            style: TextStyle(
                                color: colors().text,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 120,
                          width: Get.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(22),
                                          color: Colors.purple),
                                      height: fontsize().iconsize,
                                      width: fontsize().iconsize,
                                      child: Icon(
                                        Icons.perm_identity,
                                        size: 45,
                                        color: colors().text,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      child: Text(
                                        "To Mobile Number",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: colors().text, fontSize: 15),
                                      ),
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
                                      height: fontsize().iconsize,
                                      width: fontsize().iconsize,
                                      child: Icon(
                                        Icons.account_balance,
                                        size: 45,
                                        color: colors().text,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      child: Text(
                                        "To Bank/ UPI ID",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: colors().text, fontSize: 15),
                                      ),
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
                                      width: fontsize().iconsize,
                                      child: Icon(
                                        Icons.arrow_circle_down,
                                        size: 45,
                                        color: colors().text,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Container(
                                      child: Text(
                                        "To Self Account",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
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
                                      height: fontsize().iconsize,
                                      width: fontsize().iconsize,
                                      child: Icon(
                                        Icons.account_balance_outlined,
                                        size: 45,
                                        color: colors().text,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Text(
                                        "check bank Balance",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //Transfer money
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Screenshot 2024-02-28 150722.png"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(22),
                              color: Colors.purple),
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Screenshot 2024-02-28 150805.png"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(22),
                              color: Colors.purple),
                          height: 70,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Screenshot 2024-02-28 150906.png"),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(22),
                              color: Colors.purple),
                          height: 70,
                        ),
                      ),
                    ),
                  ],
                ), //phonepe wallet
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recharge & Pay Bills",
                                style: TextStyle(
                                    color: colors().text,
                                    fontSize: fontsize().underapp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.purpleAccent),
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Text("My Bills"),
                                  ),
                                ),
                              )
                            ],
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
                                        Icons.smartphone_outlined,
                                        size: 50,
                                        color: colors().iconback,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Mobile Recharge",
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
                                      Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(22),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/Screenshot 2024-02-28 175554.png"),
                                                    fit: BoxFit.fill),
                                                color: Colors.purple),
                                            height: fontsize().iconsize,
                                            width: fontsize().iconsize,
                                          ),
                                          Positioned(
                                            right: -15,
                                            top: -1,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.deepOrange,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(3),
                                                child: Text("Popular"),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Buy   FASTag",
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
                                        Icons.connected_tv_rounded,
                                        size: 50,
                                        color: colors().iconback,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "DTH",
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
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
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
                ), //recharge & bills
                Padding(
                  padding: padding().contpading,
                  child: Container(
                    height: 70,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: colors().back,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/Screenshot 2024-03-01 121308.png"))),
                            height: 45,
                            width: 80,
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 1,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "PIN-less Payments",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            decoration: BoxDecoration(
                                color: colors().iconback,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Text(
                                "TRY NOW",
                                style: TextStyle(color: colors().text),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //pin less payments
                Padding(
                  padding: padding().contpading,
                  child: Container(
                    height: 135,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: colors().back,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "Sponsored Link",
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
                            height: 90,
                            width: Get.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://www.mpl.live/static/MPL_Logo_2.png"),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "MPL",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
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
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://play-lh.googleusercontent.com/BL_C9-e7smnKI-iqHe861z_JcbA0S2Naoh4YlWqAoT8MHSP7LCG0W72Bgo0Z4xrPjXyK",
                                                ),
                                                fit: BoxFit.fill),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "RummyCircle",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
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
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://play-lh.googleusercontent.com/0qDrwb1k7VftSiOZZGx4C0KHXUIuxbp-BmNpw9CcgJhTce1ghrvDDzhJlJIw4uzOny4",
                                                ),
                                                fit: BoxFit.fill),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "OneCard",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
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
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://play-lh.googleusercontent.com/oRNHgMbRNbSp9WFkxvjXX_ks2VrkpHFBj8WPKSciqMtuXnuUYpSYg1PwcZLWqsgL9BLM",
                                                ),
                                                fit: BoxFit.fill),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Fibe loans",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
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
                ), //sponsored links
                Padding(
                  padding: padding().contpading,
                  child: Container(
                    height: 140,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: colors().back,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "Apps by Phonepay",
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
                            height: 90,
                            width: Get.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/Screenshot 2024-02-28 143914.png"),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Stocks & IPO",
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
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://play-lh.googleusercontent.com/DIj92f1Tkfxm8rOTqPhlMtGsz8bboRju5v2V5ykxdGfpIAN4kTbNFfgBxpcFt5nY3KQ",
                                                ),
                                                fit: BoxFit.fill),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Business",
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
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://media.licdn.com/dms/image/D560BAQHUEiOQbs8sVw/company-logo_200_200/0/1695476415387/indusappstore_logo?e=2147483647&v=beta&t=q1vExnDIlgSoKwWhFZoTxjnGeMwhK2lvgyMGHiFDEoU",
                                                ),
                                                fit: BoxFit.fill),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Indus Appstore",
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
                ), //apps by phonepe
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
                            "Insurance",
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
                                        Icons.motorcycle_sharp,
                                        size: 50,
                                        color: colors().iconback,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "bike",
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
                                        Icons.car_repair,
                                        size: 50,
                                        color: colors().iconback,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "car",
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
                                        Icons.heart_broken_rounded,
                                        size: 50,
                                        color: colors().iconback,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Health",
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
                                        Icons.airline_seat_flat_angled_rounded,
                                        size: 50,
                                        color: colors().iconback,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Accident",
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
                                        Icons.handshake,
                                        size: 50,
                                        color: colors().iconback,
                                      ),
                                      SizedBox(height: 5),
                                      Container(
                                        width: 40,
                                        child: Text(
                                          "term life",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: fontsize().underapp),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.flight_rounded,
                                        size: 50,
                                        color: colors().iconback,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Travel Insurance",
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
                                        Icons.replay_circle_filled,
                                        size: 50,
                                        color: colors().iconback,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Insurance Renewal",
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
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
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
                ), //insurance
                Padding(
                  padding: padding().contpading,
                  child: Container(
                    child: Carousel(
                      images: [
                        Image.network(
                            "https://images.yourstory.com/cs/2/a09f22505c6411ea9c48a10bad99c62f/Image1afj-1686757678106.jpg?w=1152&fm=auto&ar=2:1&mode=crop&crop=faces"),
                        Image.network(
                            "https://entrackr.com/storage/2020/12/Flipkart-phonepe-1.jpg"),
                        Image.network(
                            "https://www.bookofficenow.com/blogs/wp-content/uploads/2023/11/Phone-pe-Blog.png"),
                      ],
                      dotSize: 8.0,
                      dotSpacing: 25.0,
                      dotColor: colors().iconback,
                      indicatorBgPadding: 5.0,
                      dotBgColor: Colors.transparent,
                      borderRadius: true,
                    ),
                    height: 190,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: colors().back,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ), //corousal 2
                Padding(
                  padding: padding().contpading,
                  child: Container(
                    height: 130,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: colors().back,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "Travel Booking",
                            style: TextStyle(
                                color: colors().text,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.blueGrey),
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    height: fontsize().iconsize,
                                    width: fontsize().iconsize,
                                    child: Icon(
                                      Icons.flight,
                                      size: 45,
                                      color: colors().iconback,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Flight",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: colors().text, fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.blueGrey),
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    height: fontsize().iconsize,
                                    width: fontsize().iconsize,
                                    child: Icon(
                                      Icons.directions_bus,
                                      size: 45,
                                      color: colors().iconback,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Bus",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: colors().text, fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.blueGrey),
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    height: fontsize().iconsize,
                                    width: fontsize().iconsize,
                                    child: Icon(
                                      Icons.train,
                                      size: 45,
                                      color: colors().iconback,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Trains",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.blueGrey),
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    height: fontsize().iconsize,
                                    width: fontsize().iconsize,
                                    child: Icon(
                                      Icons.location_city,
                                      size: 45,
                                      color: colors().iconback,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Hotels",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ), // trsvel booking
                Padding(
                  padding: padding().contpading,
                  child: Container(
                    height: 135,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: colors().back,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "Swich",
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
                            height: 90,
                            width: Get.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://upload.wikimedia.org/wikipedia/commons/1/13/Swiggy_logo.png"),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Swiggy",
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
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://seeklogo.com/images/N/netmeds-logo-4A3580CB35-seeklogo.com.png",
                                                ),
                                                fit: BoxFit.fill),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Netmeds",
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
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTbrOxRgbUChtFme-pipj9oHz1ufhtY5yCqpjC6cMKAw&s",
                                                ),
                                                fit: BoxFit.fill),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Tata 1mg",
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
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
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
                ), //switch
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
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "Subcriptions and Vouchers",
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
                            height: 100,
                            width: Get.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://i.imgur.com/U4Op2KW.jpg"),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Hootstar",
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
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://images.news18.com/ibnlive/uploads/2021/10/amazon-prime.jpg",
                                                ),
                                                fit: BoxFit.fill),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Amazon Prime...",
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
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://logowik.com/content/uploads/images/google-play-2022-new-icon3469.logowik.com.webp",
                                                ),
                                                fit: BoxFit.fill),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        " Google Play Codes",
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
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
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
                ), //Subscriptions nd vouchers
                Padding(
                  padding: padding().contpading,
                  child: Container(
                    height: 135,
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: colors().back,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "Sponsored games",
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
                            height: 90,
                            width: Get.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://www.mpl.live/static/MPL_Logo_2.png"),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "A32 Rummy",
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
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://play-lh.googleusercontent.com/BL_C9-e7smnKI-iqHe861z_JcbA0S2Naoh4YlWqAoT8MHSP7LCG0W72Bgo0Z4xrPjXyK",
                                                ),
                                                fit: BoxFit.fill),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "Jungle poker",
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
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://play-lh.googleusercontent.com/0qDrwb1k7VftSiOZZGx4C0KHXUIuxbp-BmNpw9CcgJhTce1ghrvDDzhJlJIw4uzOny4",
                                                ),
                                                fit: BoxFit.fill),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "WinZo Ludo",
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
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                  "https://play-lh.googleusercontent.com/oRNHgMbRNbSp9WFkxvjXX_ks2VrkpHFBj8WPKSciqMtuXnuUYpSYg1PwcZLWqsgL9BLM",
                                                ),
                                                fit: BoxFit.fill),
                                            color: Colors.purple),
                                        height: fontsize().iconsize,
                                        width: fontsize().iconsize,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "Rush Lyudo",
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
                ), //Sponcerd links
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 145,
            left: 145,
            child: Container(
              height: 40,
              width: 55,
              decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.grey),
                  color: colors().iconback,
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Icon(
                        Icons.qr_code_scanner_outlined,
                        color: colors().icon,
                      ),
                    ),
                    Text(
                      "Scan QR",
                      style: TextStyle(color: colors().text),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
