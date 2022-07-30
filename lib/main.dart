import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

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
      theme: ThemeData(primarySwatch: Colors.purple),
      darkTheme: ThemeData(
          brightness: Brightness.light,
          // primarySwatch: Colors.red
      ),
      initialRoute: "/home",
      routes: {
        "/":(context)=> LoginPage(),
        "/home":(context) => HomePage(),
        "/login":(context) => LoginPage()
      },
    );
  }

  bringingVegetables({required bool thaila, int myMoney = 100}) {}
}
