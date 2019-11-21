import 'package:flutter/material.dart';

class CustomLinearGradient {

  CustomLinearGradient({
    this.colorLeft = 0xFF673ab7,
    this.colorRight = 0xFF4527a0
  });

  final int colorLeft;
  final int colorRight;

  LinearGradient get() {
    return LinearGradient(
        colors: [
          Color(colorLeft),
          Color(colorRight),
        ],
        begin: FractionalOffset(0.2, 0.0),
        end: FractionalOffset(1.0, 0.6),
        stops: [0.0,0.6],
        tileMode: TileMode.clamp
    );
  }

}
