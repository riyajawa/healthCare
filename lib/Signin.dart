import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Padding(

        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 100.0),
                  child: new Text(
              "Login",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Merriweather',
                  fontSize: 60.0,
                  color: Color(0xFF1B3052),
                  letterSpacing: 2.0,
              ),
            ),
                )),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Enter Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                  hintText: 'Username',
                  icon: Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: Icon(Icons.person),
                  )),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Enter Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                  hintText: 'Password',
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: const Icon(Icons.lock),
                  )),
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
                color: Color(0xFF56C098),
                height: 45.0,
                minWidth: 200.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/dashboard');
                },
                child: Text('Log In')),
            SizedBox(height: 50.0,),
            Container(
              alignment: Alignment.bottomCenter,
              height: 200.0,
              child:Image.asset('images/nurse1.jpeg'),
            )
          ],
        ),
      ),
    );
  }
}
