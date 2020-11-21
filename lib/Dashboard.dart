import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main() {
  runApp(Dashboard());
}

class Dashboard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFE0ECDE),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(28.0),
                      bottomRight: Radius.circular(28.0))),
              height: 300.0,
              child: Padding(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        maxRadius: 35.0,

                        backgroundImage: NetworkImage(
                            'https://img.favpng.com/2/15/4/doctor-symbol-png-favpng-H2aJfXLCvZeVrj5Y05G5aD47v.jpg'

                            ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Good Morning\n Rohit.',
                          style: TextStyle(
                              fontSize: 31.0,
                              color: Color(0xFF205072),
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.5),
                        )),
                    SizedBox(height: 20.0),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          ' your target for today is keep positive \n mindset and smile to everyone you meet.',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Color(0xFF68B2A0),
                              fontWeight: FontWeight.w500),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Container(
                    child: Image.asset('images/head.jpeg'),
                  ),
                ),
                FlatButton(
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {

                    Navigator.pushNamed(context, '/med');
                  },
                  child: Text(
                    '    Recommended Medicines',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Container(
                    child: Image.asset('images/head.jpeg'),
                  ),
                ),
                FlatButton(
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {

                  },
                  child: Text(
                    '    Search for Medicines',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Container(
                    child: Image.asset('images/head.jpeg'),
                  ),
                ),
                FlatButton(
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {
                    Navigator.pushNamed(context, '/bmi');
                  },
                  child: Text(
                    'Calculate BMI',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Container(
                    child: Image.asset('images/head.jpeg'),
                  ),
                ),
                FlatButton(
                  minWidth: 200.0,
                  height: 50.0,
                  onPressed: () {

                    Navigator.pushNamed(context, '/bmi');
                  },
                  child: Text(
                    'Call a Doctor',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
