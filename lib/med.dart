
import 'package:flutter/material.dart';

void main() {
  runApp(Med());
}

class Med extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Health Care'),

            backgroundColor: Color(0xFF3CAA78),

          ),

drawer: Drawer(),
      body: SingleChildScrollView(

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
                    'Find the appropriate medicines',
                    style: TextStyle(color: Color(0xFF205072), fontSize: 20),
                  ),

                  color: Color(0xFFCDE0C9),
                ),
              ),


              SizedBox(
                height: 20,
              ),

              Container(

                height: 100.0,
                width: 320.0,



                child:RaisedButton.icon(
                  onPressed: () {  },
icon: Image.asset('images/medicine.png',height: 30.0,width: 30.0,),

                  label: Text(
                    'FEVER',

                    style: TextStyle(color: Color(0xFF205072), fontSize: 25),
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),

                  padding: EdgeInsets.only(top: 10, bottom: 10, right: 180),
                  color: Color(0xFFC9E0F1),


                ),
              ),

              SizedBox(
                height: 30,
              ),
              Container(

                height: 100.0,
                width: 320.0,
                child: RaisedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('images/medicine.png',height: 30.0,width: 30.0,),

                  label: Text(
                    'BODY PAIN',
                    style: TextStyle(color: Color(0xFF205072), fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  padding: EdgeInsets.only(top: 10, bottom: 10, right: 130),

                  color: Color(0xFFCDE0C9),

                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(

                height: 100.0,
                width: 320.0,
                child: RaisedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('images/medicine.png',height: 30.0,width: 30.0,),

                  label: Text(
                    'MIGRAINE',
                    style: TextStyle(color: Color(0xFF205072), fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),

                  color: Color(0xFFC9E0F1),
                  padding: EdgeInsets.only(top: 10, bottom: 10, right: 130),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(

                height: 100.0,
                width: 320.0,
                child: RaisedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('images/medicine.png',height: 30.0,width: 30.0,),

                  label: Text(
                    'INJURY',
                    style: TextStyle(color: Color(0xFF205072), fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),


                  color: Color(0xFFCDE0C9),
                  padding: EdgeInsets.only(top: 10, bottom: 10, right: 140),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(

                height: 100.0,
                width: 320.0,
                child: RaisedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('images/medicine.png',height: 30.0,width: 30.0,),


                  label: Text(
                    'BLOOD PRESSURE',
                    style: TextStyle(color: Color(0xFF205072), fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),

                  color: Color(0xFFC9E0F1),
                  padding: EdgeInsets.only(top: 10, bottom: 10, right: 60),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(

                height: 100.0,
                width: 320.0,
                child: RaisedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('images/medicine.png',height: 30.0,width: 30.0,),

                  label: Text(
                    'ALLERGY',
                    style: TextStyle(color: Color(0xFF205072), fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),

                  color: Color(0xFFCDE0C9),
                  padding: EdgeInsets.only(top: 10, bottom: 10, right: 130),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(

                height: 100.0,
                width: 320.0,
                child: RaisedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('images/medicine.png',height: 30.0,width: 30.0,),

                  label: Text(
                    'CONSTIPATION',
                    style: TextStyle(color:Color(0xFF205072), fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),

                  color: Color(0xFFC9E0F1),
                  padding: EdgeInsets.only(top: 10, bottom: 10, right: 100),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(

                height: 100.0,
                width: 320.0,
                child: RaisedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('images/medicine.png',height: 30.0,width: 30.0,),

                  label: Text(
                    'BABY CARE',
                    style: TextStyle(color:Color(0xFF205072), fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  padding: EdgeInsets.only(top: 10, bottom: 10, right: 130),
                  color: Color(0xFFCDE0C9),

                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(

                height: 100.0,
                width: 320.0,
                child: RaisedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('images/medicine.png',height: 30.0,width: 30.0,),

                  label: Text(
                    'TOOTHACHE',
                    style: TextStyle(color: Color(0xFF205072), fontSize: 25),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  padding: EdgeInsets.only(top: 10, bottom: 10, right: 130),
                  color: Color(0xFFC9E0F1),

                ),
              ),

//
            ],
          ),
        ),),
    ),);
  }
}

