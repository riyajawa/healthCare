
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care/reusable.dart';

import 'bmi.dart';


class Result extends StatelessWidget {
  Result(this.bmi,this.results,this.interpre);

  final String results;
  final String interpre;
  final String bmi;


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Calculate"),
      ),
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Text(
                    'Your Result',
                    style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900),
                  )),
              Expanded(
                  flex: 5,
                  child: Reusable(
                    activecolor,
                    carChild: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [


                        Text(results.toUpperCase()

                          ,
                          style: TextStyle(

                              fontSize: 20.0,

                              color:getcolor(),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          bmi,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 100.0),
                        ),
                        Text(
                          interpre,
                          style: TextStyle(fontSize: 22.0),
                          textAlign: TextAlign.center,
                        ),


                      ],

                    ),
                  )),
              Container(
                color: Color(0xFFEB1555),
                margin: EdgeInsetsDirectional.only(top: 10.0),
                width: double.infinity,
                height: bottomheight,
                child: FlatButton(

                  onPressed: () {

                    Navigator.pop(context);

                  },
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          )),
    );
  }

  Color getcolor() {
    if(results=='overWeight')
    {
      return Colors.red;
    }
    else if(results=="normal")
    {
      return Colors.green;
    }
    else
    {
      return Colors.yellow;
    }

  }
}
