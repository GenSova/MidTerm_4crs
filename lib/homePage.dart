import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePagePageState createState() => _homePagePageState();

}

class _homePagePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text(
          'Главная страница',
        style: TextStyle(
          fontSize: 25
        ),
        ),
      ),
    );
  }
  }