import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Doctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home:SafeArea(
          child:Scaffold(
            appBar: AppBar(
              title: Text('HealthCare'),

              backgroundColor: Color(0xFF3CAA78),),
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


    ],)




            ),
            body: Padding(

              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 20.0,),

                  Container(
                    height:200,
                    child: Row(
                      children: [
                        Container(
                          margin: new EdgeInsets.symmetric(horizontal: 10.0),

                          child: Text('Heart Specialist Doctor         \n'
                              'Phone no. xxx-xxx-xxxx         \n'
                              'Email.________@gmail.com ',style: TextStyle(
                            fontSize: 20.0,

                            color: Color(0xFF205072),

                          ),),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundColor:  Color(0xFFE0ECDE),
                            child:Align(
                              alignment: Alignment.centerRight,

                              child: CircleAvatar(
                                backgroundColor:  Color(0xFFE0ECDE),
                                backgroundImage: AssetImage('images/doctor.png'),
                                radius:48.0,

                              ),
                            ),

                          ),
                        ),

                      ],
                    ),



                    decoration: BoxDecoration(
                        color: Color(0xFFE0ECDE),

                        borderRadius: BorderRadius.all(Radius.circular(20))

                    ),

                  ),
                  SizedBox(height: 20.0,),
                  Container(

                    height:200,
                    child: Row(

                      children: [
                        Container(
                          margin: new EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('Gynaecologist          \n'
                              'Phone no. xxx-xxx-xxxx         \n'
                              'Email.________@gmail.com ',style: TextStyle(
                            fontSize: 20.0,

                            color: Color(0xFF205072),

                          ),),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundColor:  Color(0xFFE0ECDE),
                            child:Align(
                              alignment: Alignment.centerRight,

                              child: CircleAvatar(
                                backgroundColor:  Color(0xFFE0ECDE),
                                backgroundImage: AssetImage('images/doctor.png'),
                                radius:48.0,

                              ),
                            ),

                          ),
                        ),

                      ],
                    ),



                    decoration: BoxDecoration(
                        color: Color(0xFFE0ECDE),

                        borderRadius: BorderRadius.all(Radius.circular(20))

                    ),

                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    height:200,

                    child: Row(
                      children: [
                        Container(
                          margin: new EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text('Psychiatrists          \n'
                              'Phone no. xxx-xxx-xxxx         \n'
                              'Email.________@gmail.com ',style: TextStyle(
                            fontSize: 20.0,

                            color: Color(0xFF205072),

                          ),),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundColor:  Color(0xFFE0ECDE),
                            child:Align(
                              alignment: Alignment.centerRight,

                              child: CircleAvatar(
                                backgroundColor:  Color(0xFFE0ECDE),
                                backgroundImage: AssetImage('images/doctor.png'),
                                radius:48.0,

                              ),
                            ),

                          ),
                        ),

                      ],
                    ),



                    decoration: BoxDecoration(
                        color: Color(0xFFE0ECDE),

                        borderRadius: BorderRadius.all(Radius.circular(20))

                    ),

                  ),


                ],
              ),
            ),


          ),
        ));
  }
}