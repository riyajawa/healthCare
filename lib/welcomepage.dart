import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
void main() {
  runApp(Care());
}
class Care extends StatefulWidget {
  @override
  _CareState createState() => _CareState();
}

class _CareState extends State<Care>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Health Care'),
          backgroundColor: Color(0xFF3CAA78),
        ),

            body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TypewriterAnimatedTextKit(
              speed: const Duration(seconds: 1),
              text:['Welcome'],
              textStyle: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 60.0,
                  color: Color(0xFF1B3052),
                  letterSpacing: 2.0),
            ),
            Image.asset('images/nurse.jpeg'),
            Container(
              decoration: new BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color(0xFF92D5BE),
                    offset: Offset(1.0, 6.0),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              height: 55.0,
              width: 300.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text(
                  'GET STARTED',
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                color: Color(0xFF56C098),
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                      color: Color(0xFF92D5BE), fontWeight: FontWeight.w800),
                ),
                FlatButton(
                  padding: EdgeInsets.all(0),
                  height: 20.0,
                  minWidth: 20.0,


                  color: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: () {
                    print('pressed');
                    Navigator.pushNamed(context, '/Signin');
                  },
                  child: Text(

                    'Sign In',

                    style: TextStyle(
                        color: Color(0xFF8EA7B8), fontWeight: FontWeight.bold),
                  ),
                  hoverColor: Colors.black,
                )
              ],
            )
//
          ],
        ),
      ),
    );
  }
}
