import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Reusable extends StatelessWidget {
  final Color color;
  final Widget carChild;
  Function onPress;
  Reusable(this.color,{this.carChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPress,
        child: Container(
          child: carChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(10.0)),
          height: 200.0,
          width: 170.0,
        ) );
  }


}
