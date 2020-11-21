
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
                        onTap: ()
                        {
                          Navigator.pushNamed(context, '/sea');
                        },
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
                        onTap: ()
                        {
                          Navigator.pushNamed(context, '/doc');
                        },
                      ),


                    ],
                  ),














                ),
      body: SingleChildScrollView(

        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(

                height: 60.0,
                width: 450.0,
                child: RaisedButton(
                  onPressed: () {

                  },
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/ok');
                                    },
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/okk');

                  },
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/okkk');
                  },
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/inj');
                  },
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/bp');
                  },
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/alr');
                  },
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/con');
                  },
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/baby');
                  },
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/tooth');
                  },
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

