import 'package:flutter/material.dart';

class CustomGradients {

  CustomGradients();

  LinearGradient getHorizontalLinearGradient(int colorLeft,int colorRight) {
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
