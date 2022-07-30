import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // BuildContext: context is a ease of information which stores the position of all the widgets

    const double pi = 3.14; // constant value, which cannot be modify later
    bool isMale = true;
    num temp = 30; // num datatype hold both int and double type variables
    var day = "saturday"; // var is a generic data type

    bringingVegetables(thaila: true);

    return MaterialApp(
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Colors.red
      ),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }

  bringingVegetables({required bool thaila, int myMoney = 100}) {}
}
