import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Maps extends StatefulWidget {
  const Maps({Key?key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  final String lat="26.263863";
  final String long="73.008957";

  Future<void>_makePhoneCall(String url)async{
    if(await canLaunch(url)){
      await launch(url);
    }else{throw "could not launch $url";
    }
  }
  // Future<void> _launchURL() async {
  //   const url='https://stackoverflow.com/';
  //   if (!await launchUrl(Uri.parse(url))) {
  //     throw Exception('Could not launch $url');
  //   }
  // }
  _launchURL()async{
    const url='https://stackoverflow.com/';

    await launch(url,forceWebView: true);
    // if(await canLaunchUrl(Uri.parse(url),)){
    //   await launchUrl(Uri.parse(url),);
    // }else{
    //   throw 'coulf not launch $url';
    //
    // }
  }
  _launchEmail()async{
    launch("mailto:fluttercoolestpackages@gmail.com?subject=TestEmail&body=I am Tyuping this test email%20plugin");
  }
  _launchMap()async{
    final String googleMapsUrl="https://www.google.com/maps/search/?api=1&query=$long,$lat";
    // final String appleMapsUrl="https://maps.apple.com/?q=$lat,$long";

    if(await launch(googleMapsUrl)){
      await launch(googleMapsUrl);
    // }if(await launch(appleMapsUrl)){
    //   await launch(appleMapsUrl);
    }else throw"could not launch url";

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 100),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment:MainAxisAlignment.spaceBetween,
           children: [
             ElevatedButton(onPressed:()=>setState(() {
               _makePhoneCall('tel:7742204560');
             }), child:Text("make call")) ,
    ElevatedButton(onPressed:(){
      _launchURL();
    }, child:Text("open Weburl")) ,
             ElevatedButton(onPressed:(){
      _launchEmail();
    }, child:Text("open email")) ,
             ElevatedButton(onPressed:(){
               _launchMap();
             }, child:Text("open maps")) ,


    ]


         ),
         ),
    );
  }
}
