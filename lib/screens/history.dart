import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phonepaychlone/Constent/constent.dart';

class History extends StatefulWidget {
  const History({Key? key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors().body,
      body: Column(
        children: [
          Padding(
            padding: padding().contpading,
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    color: colors().back,
                    borderRadius: BorderRadius.circular(10)),
                width: Get.width,
                height: 60,
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
                      "Search by name,number or UPI ID",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: colors().text.withOpacity(0.5)),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: padding().contpading,
            child: Container(
              width: Get.width,
              decoration: BoxDecoration(
                color: colors().back,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              color: colors().back,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Download statement",
                                  style: TextStyle(
                                      color: colors().text,
                                      fontSize: fontsize().underapp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.download_for_offline_outlined,
                                  color: colors().text,
                                  size: 15,
                                )
                              ],
                            ),
                          ),

                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              color: colors().back,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Text(
                                  "Filters",
                                  style: TextStyle(
                                      color: colors().text,
                                      fontSize: fontsize().underapp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.wifi,
                                  color: colors().text,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.purple),
                              height: fontsize().iconsize,
                              width: fontsize().iconsize,
                              child: Icon(
                                Icons.subdirectory_arrow_left_sharp,
                                size: 30,
                                color: colors().text,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Refund form",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: colors().text),
                              ),
                              Text(
                                "Phonepe",
                                style: TextStyle(
                                    color: colors().text.withOpacity(0.5),
                                    fontSize: fontsize().underapp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.currency_rupee_rounded,
                              color: colors().text,
                              size: 15,
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  color: colors().text,
                                  fontSize: fontsize().underapp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "12 jan 2024",
                            style: TextStyle(
                              color: colors().text.withOpacity(0.5),
                              fontSize: fontsize().underapp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Text(
                                "12 jan 2024",
                                style: TextStyle(
                                  color: colors().text.withOpacity(0.5),
                                  fontSize: fontsize().underapp,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Container(
                                  height: 35,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/c/cb/Rupay-Logo.png"),
                                  )),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Divider(
                      thickness: 1,
                      color: colors().text.withOpacity(0.5),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.purple),
                              height: fontsize().iconsize,
                              width: fontsize().iconsize,
                              child: Icon(
                                Icons.subdirectory_arrow_left_sharp,
                                size: 30,
                                color: colors().text,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Refund form",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: colors().text),
                              ),
                              Text(
                                "Phonepe",
                                style: TextStyle(
                                    color: colors().text.withOpacity(0.5),
                                    fontSize: fontsize().underapp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.currency_rupee_rounded,
                              color: colors().text,
                              size: 15,
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  color: colors().text,
                                  fontSize: fontsize().underapp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "12 jan 2024",
                            style: TextStyle(
                              color: colors().text.withOpacity(0.5),
                              fontSize: fontsize().underapp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Text(
                                "12 jan 2024",
                                style: TextStyle(
                                  color: colors().text.withOpacity(0.5),
                                  fontSize: fontsize().underapp,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Container(
                                  height: 35,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/c/cb/Rupay-Logo.png"),
                                  )),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Divider(
                      thickness: 1,
                      color: colors().text.withOpacity(0.5),
                    ),
                  ) ,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.purple),
                              height: fontsize().iconsize,
                              width: fontsize().iconsize,
                              child: Icon(
                                Icons.subdirectory_arrow_left_sharp,
                                size: 30,
                                color: colors().text,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Refund form",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: colors().text),
                              ),
                              Text(
                                "Phonepe",
                                style: TextStyle(
                                    color: colors().text.withOpacity(0.5),
                                    fontSize: fontsize().underapp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.currency_rupee_rounded,
                              color: colors().text,
                              size: 15,
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                  color: colors().text,
                                  fontSize: fontsize().underapp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "12 jan 2024",
                            style: TextStyle(
                              color: colors().text.withOpacity(0.5),
                              fontSize: fontsize().underapp,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Text(
                                "12 jan 2024",
                                style: TextStyle(
                                  color: colors().text.withOpacity(0.5),
                                  fontSize: fontsize().underapp,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Container(
                                  height: 35,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/c/cb/Rupay-Logo.png"),
                                  )),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Divider(
                      thickness: 1,
                      color: colors().text.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
