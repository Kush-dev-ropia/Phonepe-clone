import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phonepaychlone/Constent/constent.dart';
import 'package:phonepaychlone/screens/Profille.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String userName = "";
  String userEmail = "";
  bool isVisible = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: IconThemeData(color: colors().text),
        backgroundColor: colors().bottomndapp,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Edit Details",
              style: TextStyle(color: colors().text, fontSize: 20),
            ),
            InkWell(
              child: Icon(Icons.help_outline),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                      padding: const EdgeInsets.all(8.0),
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
                                                fontWeight: FontWeight.bold,
                                                color: colors().text),
                                          )
                                        ],
                                      )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
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
                                decoration: BoxDecoration(color: colors().back),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1, color: Colors.grey),
                                              color: colors().back,
                                              borderRadius:
                                                  BorderRadius.circular(25)),
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
                                                    fontWeight: FontWeight.bold,
                                                    color: colors().text),
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
            )
          ],
        ),
      ),
      body: Container(
        color: colors().back,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Form(
              key: formkey,
              child: Column(
                children: [
                  Container(
                    height: 30,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextFormField(
                        controller: nameController,

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Field can't be empty.";
                          }
                          return null;
                        },
                        // onChanged: (value){
                        //   print('value -- '+value.toString());
                        //   setState((){
                        //     userName = value;
                        //   });
                        //
                        // },
                        decoration: InputDecoration(
                            hintText: "Full name",
                            hintStyle: TextStyle(color: colors().text),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                            prefixIcon: Icon(
                              Icons.person_outline_outlined,
                              color: colors().text,
                            )),
                        // suffixIcon: Icon(Icons.person)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Field can't be empty.";
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                            return "Enter valid Email Id";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        // onChanged: (value){
                        //   print('value -- '+value.toString());
                        //   setState((){
                        //     userEmail = value;
                        //   });
                        //
                        // },
                        decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(color: colors().text),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)),
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: colors().text,
                            )),
                        // suffixIcon: Icon(Icons.person)),
                      ),
                    ),
                  ]),
                  ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Colors.tealAccent),
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          setState(() {
                            // userName = "Ram";
                            userName = nameController.text;
                            userEmail = emailController.text;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profile(
                                      name: nameController.text,
                                      Email: emailController.text,
                                    )),
                          );
                        }
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
