import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Okkk());
}
class Okkk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Health Care'),

          backgroundColor: Color(0xFF3CAA78),
        ),
        body: ok3(),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                color: Color(0xFF3CAA78),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://img.favpng.com/2/15/4/doctor-symbol-png-favpng-H2aJfXLCvZeVrj5Y05G5aD47v.jpg'
                              ),
                              fit: BoxFit.cover
                          ),
                        ),


                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home",style: TextStyle(fontSize: 18),),
                onTap: () {
                  Navigator.pushNamed(context, '/dashboard');
                },
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("Search",style: TextStyle(fontSize: 18),),
                onTap: null,
              ),
              ListTile(
                leading: Icon(Icons.medical_services),
                title: Text("Medicines",style: TextStyle(fontSize: 18),),
                onTap: () {
                  Navigator.pushNamed(context, '/med');
                },
              ),
              ListTile(
                leading: Icon(Icons.mode_edit),
                title: Text("BMI",style: TextStyle(fontSize: 18),),
                onTap: ()
                {
                  Navigator.pushNamed(context, '/bmi');
                },
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Call Doctor",style: TextStyle(fontSize: 18),),
                onTap: null,
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout",style: TextStyle(fontSize: 18),),
                onTap: null,
              )

            ],
          ),
        ),
      ),
    );
  }
}
class ok3 extends StatefulWidget {
  @override
  _CareState createState() => _CareState();
}
class _CareState extends State<ok3> {
  String title = "SingleChildScrollView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SingleChildScrollView(
            child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 60.0,
                        width: 450.0,
                        child: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            'Medicines for migraine',
                            style: TextStyle(color: Color(0xFF205072),fontSize: 20),
                          ),

                          color: Color(0xFFCDE0C9),
                        ),

                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(

                        height: 90.0,
                        width: 350.0,

                        child: RaisedButton(
                          onPressed: () {
                            //Navigator.push(
                            // context,
                            // MaterialPageRoute(builder: (context) => SecondRoute()),
                            //  );
                          },

                          child: Text(
                            'Ibuprofen',
                            style: TextStyle(color: Color(0xFF205072),fontSize: 30),
                          ),


                          padding: EdgeInsets.all(10),
                          color: Color(0xFFC9E0F1),


                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(

                        height: 90.0,
                        width: 350.0,

                        child: RaisedButton(
                          onPressed: () {
                            //Navigator.push(
                            // context,
                            // MaterialPageRoute(builder: (context) => SecondRoute()),
                            //  );
                          },

                          child: Text(
                            'Naproxen',
                            style: TextStyle(color: Color(0xFF205072),fontSize: 30),
                          ),


                          padding: EdgeInsets.all(10),
                          color: Color(0xFFCDE0C9),



                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(

                        height: 90.0,
                        width: 350.0,

                        child: RaisedButton(
                          onPressed: () {
                            //Navigator.push(
                            // context,
                            // MaterialPageRoute(builder: (context) => SecondRoute()),
                            //  );
                          },

                          child: Text(
                            'Flurbiprofen',
                            style: TextStyle(color: Color(0xFF205072),fontSize: 30),
                          ),


                          padding: EdgeInsets.all(10),
                          color: Color(0xFFC9E0F1),


                        ),
                      )




                    ]
                )
            )
        )
    );
  }
}
