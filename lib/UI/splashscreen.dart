import 'dart:async';

import 'package:flutter/material.dart';
import 'package:metrimonialsulook/Global/constant.dart';
import 'package:metrimonialsulook/UI/Metrimonial_mainpage.dart';
import 'package:metrimonialsulook/UI/home.dart';
import 'add_forms/lookingfor.dart';
import 'add_forms/personal_info.dart';
import 'matches/prefectmatch.dart';
import 'package:metrimonialsulook/UI/profile.dart';
import 'matches/search.dart';
import 'package:metrimonialsulook/UI/siging_screens/firstscreen.dart';
import '../Extras/loginpage.dart';
import 'package:metrimonialsulook/UI/mainpage.dart';
import '../Extras/referedpage.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => home(),
                )
            )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: concolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("Assets/images/sulook_logo.png",
            height:300 ,
              width:MediaQuery.of(context).size.width *0.80 ,
              color: appcolor,
            ),
            Text(app_name,
            style: TextStyle(
            color: appcolor,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
             fontFamily: "cabin",
            ),
            )
          ],
        ),
        ),
    );
  }
}
