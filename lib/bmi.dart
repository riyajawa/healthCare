import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculatebmi.dart';
import 'reusable.dart';
import 'iconcontent.dart';
import 'result.dart';

const bottomheight = 80.0;
const activecolor = Color(0xFF1D1E33);
const inactivecolor = Color(0xFF111328);
enum Gender { male, female }
void main() {
  runApp(Bmi());
}

class Bmi extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21)),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int n = 180;
  int weight = 80;
  int age=18;
  double bmi;
  Color malecard = inactivecolor;
  Color femalecard = inactivecolor;
  void updatecolor(Gender gender) {
    if (gender == Gender.male) {
      if (malecard == inactivecolor) {
        malecard = activecolor;
        femalecard = inactivecolor;
      } else {
        malecard = inactivecolor;
        femalecard = activecolor;
      }
    }
    if (gender == Gender.female) {
      if (femalecard == inactivecolor) {
        femalecard = activecolor;
        malecard = inactivecolor;
      } else {
        femalecard = inactivecolor;
        malecard = activecolor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Reusable(malecard, onPress: () {
                    setState(() {
                      updatecolor(Gender.male);
                    });
                  }, carChild: Iconcontent(FontAwesomeIcons.mars, 'Male'))),
              Expanded(
                  child: Reusable(femalecard, onPress: () {
                    setState(() {
                      updatecolor(Gender.female);
                    });
                  }, carChild: Iconcontent(FontAwesomeIcons.venus, 'Female'))),
            ],
          ),
          Expanded(
              child: Reusable(
                activecolor,
                carChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                      'HEIGHT',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          n.toString(),
                          style: TextStyle(
                              fontSize: 45.0, fontWeight: FontWeight.w900),
                        ),
                        Text('cm'),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),

                      child: Flexible(
                        child: Slider(
                            value: n.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newvalue) {
                              setState(() {
                                n = newvalue.round();
                              });
                            }),
                      ),
                    )
                  ],
                ),
              )),
          Row(
            children: <Widget>[
              Expanded(
                  child: Reusable(
                    activecolor,
                    carChild: Flexible(
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
                          Text(
                            'WEIGHT',
                            textAlign: TextAlign.center,
                            style:
                            TextStyle(fontSize: 20.0, color: Color(0xFF8D8E98)),
                          ),
                          Text(
                            '$weight',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 45.0, fontWeight: FontWeight.w900),
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),),

                              FloatingActionButton(
                                  heroTag: null,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                      Text('$weight');
                                    });
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  backgroundColor: Color(0xFF8D8E98)),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),),

                              FloatingActionButton(
                                  heroTag: null,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                      Text('$weight');

                                    });


                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                  backgroundColor: Color(0xFF8D8E98))
                            ],
                          ),


                        ],
                      ),
                    ),
                  )),
              Expanded(child: Reusable(activecolor,carChild:
              Column(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 20.0)),
                  Text(
                    'AGE',
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: 20.0, color: Color(0xFF8D8E98)),
                  ),
                  Text(
                    '$age',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 45.0, fontWeight: FontWeight.w900),
                  ),

                  Row(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),),
                      FloatingActionButton(
                          heroTag: null,
                          onPressed: () {
                            setState(() {

                              age++;
                              Text('$age');
                            });
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          backgroundColor: Color(0xFF8D8E98)),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),),
                      FloatingActionButton(
                          heroTag: null,
                          onPressed: () {
                            setState(() {
                              if(age>=18) {
                                age--;
                              }
                              Text('$age');

                            });


                          },
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          backgroundColor: Color(0xFF8D8E98))
                    ],
                  ),
                ],
              ),)),
            ],
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsetsDirectional.only(top: 10.0),
            width: double.infinity,
            height: bottomheight,
            child: FlatButton(

              onPressed: () {
                Calculatebmi c=Calculatebmi(weight, n);







                Navigator.push(context, MaterialPageRoute(builder: (context)=> Result(
                    c.calculate(),c.getResult(),c.getInterpretation()
                ),
                ),);

              },
              child: Text(
                'CALCULATE',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }


}
