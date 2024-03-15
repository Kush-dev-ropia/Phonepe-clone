import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phonepaychlone/Constent/constent.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final ImagePicker picker = ImagePicker();
  File? image1;

  pickImages() async {
    var pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        image1 = File(pickedFile.path);
        print("image --> " + image1!.path.toString());
      } else {
        print("Image Not Selected");
      }
    });
  }

  pickfile() async {
    var pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        image1 = File(pickedFile.path);
        print("image --> " + image1!.path.toString());
      } else {
        print("Image Not vd28Selected");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/sdfwrggg5tgkeersf42rt.png"))),
                    width: Get.width,
                    height: Get.height * .335,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                            image: image1 == null
                                ? DecorationImage(
                                    image:
                                        AssetImage("assets/profiledummy.png"),
                                  )
                                : DecorationImage(
                                    image: FileImage(image1!),
                                    fit: BoxFit.fill),
                          ),
                          // child: image == null
                          //     ? Image.asset("assets/icon.png")
                          //     : Image.file(image!),
                          // Icon(
                          //   Icons.person,
                          //   size: 130,
                          //   color: colors().text,
                          // ),
                        ),
                      ],
                    )),
                Container(
                  decoration: BoxDecoration(color: colors().body),
                  height: Get.height,
                )
              ],
            ),
            Positioned(
                width: Get.width,
                top: Get.height * .3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: colors().back,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Personal Details",
                                      style: TextStyle(
                                          fontSize: 16, color: colors().text),
                                    ),
                                    Container(
                                        child: Row(
                                      children: [
                                        Icon(
                                          Icons.edit,
                                          color: colors().text,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            showModalBottomSheet(
                                                backgroundColor: colors().back,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(20),
                                                            topRight:
                                                                Radius.circular(
                                                                    20))),
                                                context: context,
                                                builder: (context) {
                                                  return Container(
                                                    height: Get.height * .23,
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height: 60,
                                                          width: Get.width,
                                                          child: Center(
                                                            child: Text(
                                                              "choose one!",
                                                              style: TextStyle(
                                                                  fontSize: 25,
                                                                  color: colors()
                                                                      .text),
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(15),
                                                                child: InkWell(
                                                                  onTap: () {
                                                                    pickImages();
                                                                  },
                                                                  child: Container(
                                                                      height: 100,
                                                                      width: 100,
                                                                      decoration: BoxDecoration(color: colors().iconback, borderRadius: BorderRadius.circular(20)),
                                                                      child: Column(
                                                                        children: [
                                                                          Icon(
                                                                            Icons.camera_alt_outlined,
                                                                            color:
                                                                                colors().text,
                                                                            size:
                                                                                60,
                                                                          ),
                                                                          Text(
                                                                            "camara",
                                                                            style:
                                                                                TextStyle(fontSize: 20, color: colors().text),
                                                                          ),
                                                                        ],
                                                                      )),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(15),
                                                                child: InkWell(
                                                                  onTap: () {
                                                                    pickfile();
                                                                  },
                                                                  child: Container(
                                                                      height: 100,
                                                                      width: 100,
                                                                      decoration: BoxDecoration(color: colors().iconback, borderRadius: BorderRadius.circular(20)),
                                                                      child: Column(
                                                                        children: [
                                                                          Icon(
                                                                            Icons.image,
                                                                            color:
                                                                                colors().text,
                                                                            size:
                                                                                60,
                                                                          ),
                                                                          Text(
                                                                            "Gallery",
                                                                            style:
                                                                                TextStyle(fontSize: 20, color: colors().text),
                                                                          ),
                                                                        ],
                                                                      )),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                });
                                          },
                                          child: Icon(
                                            Icons.camera_alt_outlined,
                                            color: colors().text,
                                          ),
                                        ),
                                      ],
                                    ))
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "******4560",
                                  style: TextStyle(
                                      fontSize: 20, color: colors().text),
                                ),
                                Text(
                                  "+91 7742204560",
                                  style: TextStyle(
                                      fontSize: 16, color: colors().text),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
