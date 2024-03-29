import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:phonepaychlone/Constent/constent.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:url_launcher/link.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QRcode extends StatefulWidget {
  const QRcode({Key? key});

  @override
  State<QRcode> createState() => _QRcodeState();
}

class _QRcodeState extends State<QRcode> {
  final ImagePicker picker = ImagePicker();
  File? image1;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  String scannedCode = '';

  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        scannedCode = scanData.code!;
        if (scannedCode != "") {
          Navigator.pop(context);
        }
      });
    });
  }

  bool flash = false;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colors().bottomndapp,
        title: Text("Scan any QR"),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: Get.height,
              child: QRView(
                key: qrKey,
                onQRViewCreated: _onQRViewCreated,
                overlay: QrScannerOverlayShape(
                    cutOutBottomOffset: 100,
                    borderRadius: 15,
                    cutOutSize: 320,
                    borderLength: 0),
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              pickfile();
                            },
                            child: Icon(
                              Icons.photo_outlined,
                              size: 35,
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () async {
                            await controller?.toggleFlash();
                            // bool? flashstat= await controller?.getFlashStatus();
                            // print("fekokeof"+flashstat.toString());
                            setState(() {
                              flash = !flash;
                            });
                          },
                          child: flash == false
                              ? Icon(
                                  Icons.flash_off,
                                  size: 35,
                                )
                              : Icon(
                                  Icons.flash_on,
                                  size: 35,
                                ),
                        ),
                      ],
                    ),
                    Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('$scannedCode'),
                        builder: (context, followLink) => TextButton(
                            onPressed: followLink,
                            child: Text(
                              '$scannedCode',
                              style: TextStyle(fontSize: 18),
                            ))),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
