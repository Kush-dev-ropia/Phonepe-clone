import 'dart:async';

import 'package:flutter/material.dart';

import 'homePage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Keykey});

  State<splashscreen> createState() => _homeepageState();
}

class _homeepageState extends State<splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const FirstScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
              "https://cdn.freelogovectors.net/wp-content/uploads/2023/11/phonepe_logo-freelogovectors.net_.png"),
        ],
      ),
    );
  }
}
