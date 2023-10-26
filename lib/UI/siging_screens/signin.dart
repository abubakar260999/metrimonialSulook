import 'dart:async';

import 'package:flutter/material.dart';
import 'package:metrimonialsulook/Global/constant.dart';
import 'package:metrimonialsulook/UI/Metrimonial_mainpage.dart';
import 'package:metrimonialsulook/UI/mainpage.dart';
import 'package:metrimonialsulook/UI/siging_screens/signup.dart';


class signin extends StatefulWidget {
  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:appColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

            Image.asset(
              "Assets/images/cartoon.png",
              height: MediaQuery.of(context).size.height * 0.16,
              width: MediaQuery.of(context).size.width,
            ),

              Container(
               height: MediaQuery.of(context).size.height * 0.8,
               width: MediaQuery.of(context).size.width,
               child: Card(
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 20.0),
                   child: Column(
                     children: [
                       Expanded(
                         child: FittedBox(
                           fit: BoxFit.scaleDown,
                           child: Center(
                             child: Text(
                               "Welcome Back!",
                               style: TextStyle(
                                 color: Colors.black,
                                 fontWeight: FontWeight.w800,
                                 fontSize: 28.0,
                               ),
                             ),
                           ),
                         ),
                       ),
                       Expanded(
                         child: FittedBox(
                           fit: BoxFit.scaleDown,
                           child: Center(
                             child: Text(
                               "log in to your existing account of Sportx",
                               style: TextStyle(
                                 fontWeight: FontWeight.w400,
                                 color: Colors.grey[500],
                                 fontSize: 16.0,
                               ),
                             ),
                           ),
                         ),
                       ),
                       SizedBox(
                         height:MediaQuery.of(context).size.height*0.1,
                       ),

                       Container(
                         width: MediaQuery.of(context).size.width,
                         height: MediaQuery.of(context).size.height*0.1,
                         child: Theme(
                           data: ThemeData(hintColor: Colors.transparent),
                           child: Material(
                             elevation: 5.0,
                             borderRadius: new BorderRadius.circular(10.0),
                             child: TextFormField(
                               decoration: InputDecoration(
                                 prefixIcon: Icon(
                                   Icons.phone,
                                   color: appColor,
                                 ),
//                                   isDense: true,
                                 // Added this
//                               contentPadding: EdgeInsets.all(15),
                                 focusedBorder: OutlineInputBorder(
                                   borderRadius: new BorderRadius.circular(10.0),
                                   borderSide: BorderSide(
                                     color: appColor,
                                     width: 0.0,
                                   ),
                                 ),

                                 border: new OutlineInputBorder(
                                   borderRadius: new BorderRadius.circular(10.0),
                                   borderSide: new BorderSide(color: Colors.transparent),
                                 ),

                                 fillColor: Colors.white,
                                 filled: true,
                                 hintText: "Phone Number",
                                 hintStyle: TextStyle(
                                   fontSize: 14.0,
                                   color: appColor,
                                   fontFamily: "poppins",
                                   fontWeight: FontWeight.w500,
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ),
                       SizedBox(
                         height: MediaQuery.of(context).size.height*0.05,
                       ),


                       Material(
                         elevation: 5.0,
                         borderRadius: new BorderRadius.circular(10.0),
                         child: Container(
                           width: MediaQuery.of(context).size.width,
                           height: MediaQuery.of(context).size.height*0.1,
                           child: Theme(
                             data: ThemeData(hintColor: Colors.transparent),
                             child: Material(
                               elevation: 5.0,
                               borderRadius: new BorderRadius.circular(10.0),
                               child: TextFormField(
                                 decoration: InputDecoration(
                                   prefixIcon: Icon(
                                     Icons.vpn_key,
                                     color: appColor,
                                   ),
//                                   isDense: true,
                                   // Added this
                                   contentPadding: EdgeInsets.all(15),
                                   focusedBorder: OutlineInputBorder(
                                     borderRadius: new BorderRadius.circular(10.0),
                                     borderSide: BorderSide(
                                       color: appColor,
                                       width: 0.0,
                                     ),
                                   ),
                                   border: new OutlineInputBorder(
                                     borderRadius: new BorderRadius.circular(10.0),
                                     borderSide: new BorderSide(color: appColor),
                                   ),

                                   fillColor: Colors.white,
                                   filled: true,
                                   hintText: "Password",
                                   hintStyle: TextStyle(
                                     fontSize: 14.0,
                                     color: appColor,
                                     fontFamily: "poppins",
                                     fontWeight: FontWeight.w500,
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ),
                       Expanded(
                         child: Align(
                           alignment: Alignment.bottomRight,
                           child: FittedBox(
                             fit: BoxFit.scaleDown,
                             child: Text(
                               'Forgot Password?',
                               style: TextStyle(
                                   fontWeight: FontWeight.w400, color: Colors.grey[400]),
                             ),
                           ),
                         ),
                       ),

                       SizedBox(
                         height: MediaQuery.of(context).size.height*0.06,
                       ),
                       InkWell(
                         child: Center(
                             child: FittedBox(
                               fit: BoxFit.scaleDown,
                               child: Text(
                                 "Don't have an account?Sign Up",
                                 style: TextStyle(color: appColor),
                               ),
                             )),
                         onTap: () {
                           Timer(
                               Duration(seconds: 2),
                                   () => Navigator.pushReplacement(
                                   context,
                                   MaterialPageRoute(
                                     builder: (context) => signup(),
                                   )));
                         },
                       ),
                       SizedBox(
                         height: MediaQuery.of(context).size.height*0.02,
                       ),

                       Material(
                         elevation: 5.0,
                         borderRadius: new BorderRadius.circular(10.0),
                         child: InkWell(
                           onTap: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => mainpage()),
                             );
                           },
                           child: Container(
                             width: MediaQuery.of(context).size.width,
                             height: MediaQuery.of(context).size.height*0.09,
                             decoration: BoxDecoration(
                                 gradient: LinearGradient(
                                   colors: [
                                     appColor,
                                     appColor,
                                   ],
                                 ),
                                 borderRadius: BorderRadius.all(Radius.circular(10))),
                             child: Center(
                               child: Text(
                                 'Login'.toUpperCase(),
                                 style: TextStyle(
                                    fontSize: 15.0,
                                     color: Colors.white, fontWeight: FontWeight.bold),
                               ),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             )
            ],
          ),
        ),
      ),
    );
  }
}
