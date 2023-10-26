import 'package:flutter/material.dart';
import 'package:metrimonialsulook/Edit/ful_body_edit.dart';
import 'package:metrimonialsulook/Edit/id_card_edit.dart';
import 'package:metrimonialsulook/Edit/looking_for_edit.dart';
import 'package:metrimonialsulook/Edit/name_password_screen_edit.dart';
import 'package:metrimonialsulook/Edit/personal_info_edit.dart';
import 'package:metrimonialsulook/Edit/profile_edit.dart';
import 'package:metrimonialsulook/Global/constant.dart';

class edit_main extends StatefulWidget {
  @override
  _edit_mainState createState() => _edit_mainState();
}

class _edit_mainState extends State<edit_main> {
  @override
 var edit_list=["Profile Image","Id Card Image","Full Body Image","Name/Password/Phno","Personal Info","Looking For Info"];
  Widget build(BuildContext context) {
    var edit_list_pages=[
      profile_edit(),
      id_card_edit(),
      full_body_edit(),
      name_password_screen_edit(),
      personal_info_edit(),
      looking_for_edit(),
    ];
    return Scaffold(
      backgroundColor: light_pink,
      body: SingleChildScrollView(

        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    color: appcolor,
                    ),
                    child:Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                    ),

                           Spacer(),
                           Text("Edit",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                            fontFamily: 'poppins',
                          ),),
                        Spacer(),

                      ],
                    ) ,
                  ),
                ),
              ),

              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: edit_list.length,
                    itemBuilder: (context,index){
                      return  Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(10.0),
                          child: GestureDetector(
                           onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context) =>edit_list_pages[index],));
                           },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                              decoration: BoxDecoration(
                                color:appcolor,
                                borderRadius: BorderRadius.circular(10.0),

                              ),
                              child:Center(
                                child: Text(edit_list[index],
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0,
                                    fontFamily: 'poppins',
                                  ),),
                              ) ,
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
