import 'package:firebase_bootcamp/login_page.dart';
import 'package:firebase_bootcamp/signup_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/landing_page': (BuildContext context) => new MyApp(),
        '/signup': (BuildContext context) => new SignUpPage()
      },
    );
  }
}
