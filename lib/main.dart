import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:metrimonialsulook/Edit/personal_info_edit.dart';
import 'package:metrimonialsulook/UI/add_forms/personal_info.dart';
import 'package:metrimonialsulook/UI/splashscreen.dart';


//class MyHttpOverrides extends HttpOverrides{
//  @override
//  HttpClient createHttpClient(SecurityContext context){
//    return super.createHttpClient(context)
//      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
//  }
//}


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(
       primaryColor: Colors.pink,
       primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
//      theme: ThemeData.light(),
      themeMode: ThemeMode.dark,
      home:
    personal_info("url", "url", "url","name","name"),
//      profile_image_screen()
//    Splashscreen(),
//      profile(),
//    select_login(),
//      profile_login(),
//      edit_main(),
//      name_password_screen("url", "url", "url"),
//      profile_image_screen(),
//        name_password_screen(),
//        Splashscreen(),
//      profile_login(),
      //id_card_screen("url"),
//      full_body_image_screen("url","url"),
//      admin_main()
//      name_password_screen(),
//      sesarch(),
//      user_confirmed(),
//      mprofile("url","url","url"),
//        Signuppage(),
//          Loginpage(),
//        Referedpage(),
//      getinfo(),
//      admin_login(),
    );
  }
}
