import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "Faisal";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
       title: const Text("Catalog App"),
      ),
      body: Center(
        child: Center(
          child: Container(
              child: Text("Welcome to $days days flutter bootcamp by ${name}")),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
