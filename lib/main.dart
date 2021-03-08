import 'package:flutter/material.dart';
import 'package:indie/Auth/login_screen.dart';
import 'package:url_strategy/url_strategy.dart';

import 'Home/home_page.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indie Spirit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        HomePage.homeRoute: (context) => HomePage(),
        LoginScreen.loginRoute: (context) => LoginScreen(),
      },
    );
  }
}
