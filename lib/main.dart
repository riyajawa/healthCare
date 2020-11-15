import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care/Signin.dart';
import 'package:health_care/bmi.dart';
import 'package:health_care/register.dart';
import 'welcomepage.dart';
import 'package:health_care/Dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: '/',
      routes:
      {
        '/':(context)=>Care(),
        '/register':(context)=>RegisterPage(),
        '/Signin':(context)=>Signin(),
        '/dashboard':(context)=>Dashboard(),
        '/bmi':(context)=>Bmi(),

      },
    );
  }
}


