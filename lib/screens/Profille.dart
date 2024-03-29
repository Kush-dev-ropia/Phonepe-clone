import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phonepaychlone/Constent/constent.dart';
import 'package:phonepaychlone/screens/screenthree.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatefulWidget {
  var name;
  var Email;

  Profile({Key? key, this.name, this.Email});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String userName = "";
  String userEmail = "";
  String userMobile = "";
  bool isLoading = false;

  final ImagePicker picker = ImagePicker();
  File? image1;

  pickImages() async {
    var pickedFile = await picker.pickImage(
      source: ImageSource.camera,
    );

    setState(() {
      if (pickedFile != null) {
        File image = File(pickedFile.path);
        print("image --> " + image.path.toString());
        setState(() {
          isLoading = true;
        });
        cropImage(image);
      } else {
        setState(() {
          isLoading = false;
        });
        print("Image Not Cropped");
      }
      Get.back();
    });
  }

  pickfile() async {
    var pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        File image = File(pickedFile.path);
        print("image --> " + image.path.toString());
      } else {
        print("Image Not vd28Selected");
      }
    });
  }

  cropImage(image) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        // CropAspectRatioPreset.ratio3x2,
        // CropAspectRatioPreset.original,
        // CropAspectRatioPreset.ratio4x3,
        // CropAspectRatioPreset.ratio16x9
      ],
    );
    setState(() {
      isLoading = false;
    });
    setState(() {
      if (croppedFile != null) {
        image1 = File(croppedFile.path);
        print("croppedFile --> " + croppedFile.path.toString());
      } else {
        print("Image Not Selected");
        // image1! ---Null check operator
        // !image1 ---Not operator
        // A=B
        // A == B
        // A != B
      }
    });
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "could not launch $url";
    }
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
                  width: Get.width,
                  height: Get.height * .335,
                  decoration: BoxDecoration(
                    image: image1 == null
                        ? DecorationImage(
                            image: AssetImage("assets/profile.png"),
                          )
                        : DecorationImage(
                            image: FileImage(image1!), fit: BoxFit.fitHeight),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 55, right: 8, left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(onTap: (){
                          Navigator.pop(context);
                        },
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black.withOpacity(0.4)),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(Icons.arrow_back_sharp,
                                    size: 30, color: colors().text),
                              )),
                        ),
                        InkWell(
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
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black.withOpacity(0.4)),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(Icons.help_outline,
                                    size: 30, color: colors().text),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: colors().body),
                  height: Get.height - 200,
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
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const FormPage()));
                                          },
                                          child: Icon(
                                            Icons.edit,
                                            color: colors().text,
                                          ),
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: widget.name == null
                                            ? Text(
                                                "enter name",
                                                style: TextStyle(
                                                    color: colors().text,
                                                    fontSize: 20),
                                              )
                                            : Text(
                                                // "Hello $userName",
                                                widget.name.toString(),
                                                style: TextStyle(
                                                    color: colors().text,
                                                    fontSize: 20),
                                              )),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: widget.Email == null
                                            ? Text(
                                                "Email",
                                                style: TextStyle(
                                                    color: colors().text,
                                                    fontSize: 20),
                                              )
                                            : Text(
                                                // "Hello $userName",
                                                widget.Email.toString(),
                                                style: TextStyle(
                                                    color: colors().text,
                                                    fontSize: 20),
                                              )),
                                    InkWell(
                                      onTap: () {
                                        showDialog(
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (_) => AlertDialog(
                                                  title: Text('call this no.'),
                                                  content: Text(
                                                      'do you want to call on this no.'),
                                                  actions: <Widget>[
                                                    Row(
                                                      children: [
                                                        TextButton(
                                                          child:
                                                              const Text('yes'),
                                                          onPressed: () {
                                                            _makePhoneCall(
                                                                'tel:7742204560');
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        ),
                                                        TextButton(
                                                          child:
                                                              const Text('no'),
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5),
                                        child: Text(
                                          // "Hello $userName",
                                          "+91"
                                          " 7742204560",
                                          // + widget.mobile.toString(),

                                          style: TextStyle(
                                              color: colors().text,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            isLoading == false
                ? Container()
                : Container(
                    height: Get.height,
                    color: Colors.grey,
                  ),
          ],
        ),
      ),
    );
  }
}
