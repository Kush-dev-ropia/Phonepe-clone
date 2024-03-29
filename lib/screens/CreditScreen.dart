import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phonepaychlone/Constent/constent.dart';

class CreditScreen extends StatefulWidget {
  const CreditScreen({Key? key});

  @override
  State<CreditScreen> createState() => _CreditScreenState();
}

class _CreditScreenState extends State<CreditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors().body,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: padding().contpading,
                  child: Container(
                      height: Get.height * .5,
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: colors().back,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Image.asset("assets/IMG_20240302_165216.jpg"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Check Your",
                            style: TextStyle(
                                color: colors().text,
                                fontSize: fontsize().underapp),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Credit Score For Free",
                            style:
                                TextStyle(color: colors().text, fontSize: 25),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: Get.width * .3,
                                  child: Column(
                                    children: [
                                      Text(
                                        "Detailed",
                                        style: TextStyle(
                                            color: colors().text,
                                            fontSize: fontsize().underapp),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "Insights",
                                        style: TextStyle(
                                            color: colors().text,
                                            fontSize: fontsize().underapp),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 1,
                                color: colors().text,
                              ),
                              Expanded(
                                child: Container(
                                  width: Get.width * .3,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 75,
                                        child: Text(
                                          "Customised Loans",
                                          style: TextStyle(
                                              color: colors().text,
                                              fontSize: fontsize().underapp),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 1,
                                color: colors().text,
                              ),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 45,
                                        child: Text(
                                          "100% secure",
                                          style: TextStyle(
                                              color: colors().text,
                                              fontSize: fontsize().underapp),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.purpleAccent,
                                  borderRadius: BorderRadius.circular(20)),
                              height: 40,
                              width: Get.width - 50,
                              child: Center(
                                  child: Text(
                                "Check Now",
                                style: TextStyle(
                                    fontSize: fontsize().underapp,
                                    fontWeight: FontWeight.bold,
                                    color: colors().text),
                              ))),
                        ],
                      )),
                ), //Check yopur credit score
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
                          padding: padding().headingpadd,
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
                                            color: colors().text,
                                            fontSize: fontsize().underapp),
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
                                            color: colors().text,
                                            fontSize: fontsize().underapp),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //manage credits
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
                            "Credit profile",
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
                                  Icons.speed_outlined,
                                  size: 50,
                                  color: colors().iconback,
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
                                        "Credit Score",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: colors().text,
                                            fontSize: fontsize().underapp),
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
                                    Icons.playlist_add_check_circle_outlined,
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
                                        "Account Aggregator",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: colors().text,
                                            fontSize: fontsize().underapp),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //Cre-dit profile
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
                            "Payment dues",
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
                                  Icons.credit_card_sharp,
                                  size: 50,
                                  color: colors().iconback,
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
                                        "Credit Card Bill Payments",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: colors().text,
                                            fontSize: fontsize().underapp),
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
                                    Icons.shopping_bag_outlined,
                                    size: 50,
                                    color: colors().iconback,
                                  ),
                                  height: 55,
                                  width: 55,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: padding().contpading,
                                  child: Container(
                                    height: 60,
                                    width: 75,
                                    child: Center(
                                      child: Text(
                                        "Loan Repayment",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: colors().text,
                                            fontSize: fontsize().underapp),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ), //payment dues
              ],
            ),
          ],
        ),
      ),
    );
  }
}
