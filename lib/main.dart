import 'package:businesscard/Screen/Dashboard.dart';
import 'package:businesscard/Screen/GetVisitingCardDetail.dart';
import 'package:businesscard/Screen/Login.dart';
import 'package:businesscard/Screen/Profile.dart';
import 'package:businesscard/Screen/SignUp.dart';
import 'package:businesscard/Screen/Splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: "Business Card",
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        '/Login': (context) => Login(),
        '/SignUp': (context) => SignUp(),
        '/Dashboard': (context) => Dashboard(),
        '/GetVisitingCardDetail': (context) => GetVisitingCardDetail(),
        '/Profile': (context) => Profile(),
      },
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          body1: GoogleFonts.oswald(textStyle: textTheme.body1),
        ),
        primaryColor: Color.fromRGBO(243, 101, 35, 1),
        //primarySwatch: app_primary_material_color,
      ),
    );
  }

}
