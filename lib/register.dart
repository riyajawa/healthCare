import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new RegisterPage(),
        theme: new ThemeData(primarySwatch: Colors.green));
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                    child: new Text(
                  "Register",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto',
                    fontSize: 60.0,
                    color: Color(0xFF1B3052),
                    letterSpacing: 2.0,
                  ),
                )),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(18.0),
                        elevation: 10.0,
                        shadowColor: Colors.black,
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(

                            labelText: "Username",
                            hintText: "Name",

                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Material(
                        borderRadius: BorderRadius.circular(18.0),
                        elevation: 12.0,
                        shadowColor: Colors.black,
                        child: new TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: "Email",
                              hintText: "name@healthcare.com",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0))),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Material(
                        borderRadius: BorderRadius.circular(18.0),
                        elevation: 10.0,
                        shadowColor: Colors.black,
                        child: new TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              labelText: "Mobile No.",
                              hintText: "9999999999",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0))),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Material(
                        borderRadius: BorderRadius.circular(18.0),
                        elevation: 10.0,
                        shadowColor: Colors.black,
                        child: new TextField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              labelText: "Password",
                              hintText: "Password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18.0))),
                          obscureText: true,
                        ),
                      )
                    ],
                  ),
                ),
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
                      Navigator.pushNamed(context, '/dashboard');
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    color: Color(0xFF56C098),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  ),
                )
              ])),
    );
  }
}

