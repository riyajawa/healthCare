import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care/Search.dart';
import 'package:health_care/Signin.dart';
import 'package:health_care/bmi.dart';
import 'package:health_care/calldoc.dart';
import 'package:health_care/med.dart';
import 'package:health_care/ok.dart';
import 'package:health_care/ok2.dart';
import 'package:health_care/ok3.dart';
import 'package:health_care/ok4.dart';
import 'package:health_care/ok5(1).dart';
import 'package:health_care/ok5(2).dart';
import 'package:health_care/ok5.dart';
import 'package:health_care/ok6.dart';
import 'package:health_care/ok7.dart';
import 'package:health_care/ok8.dart';
import 'package:health_care/ok9.dart';
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
        '/med':(context)=>Med(),
        '/bmi':(context)=>Bmi(),
        '/ok' :(context)=>Ok(),
        '/okk' :(context)=>Okk(),
        '/okkk' :(context)=>Okkk(),
        '/inj' :(context)=>Inj(),
        '/bp' :(context)=>Bp(),
        '/hbp' :(context)=>Hbp(),
        '/lbp' :(context)=>Lbp(),
        '/alr' :(context)=>Alr(),
        '/con' :(context)=>Con(),
        '/baby' :(context)=>Baby(),
        '/tooth' :(context)=>Tooth(),
        '/doc' :(context)=>Doctor(),
        '/sea' :(context)=>Sear(),





      },
    );
  }
}


