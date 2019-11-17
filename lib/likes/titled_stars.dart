import 'package:flutter/material.dart';

import 'package:flutter_app/likes/stars_counter.dart';

class TitledStars extends StatelessWidget {

  TitledStars({
    Key key,
    this.title,
    this.starCount,
    this.fontSize,
    this.fontWeight,
    this.starsSize = 20
  }) : super(key: key);

  final String title;
  final int starCount;
  final double fontSize;
  final double starsSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight
          ),
          textAlign: TextAlign.left,
        ),
        Container(
          margin: EdgeInsets.only(
              left: 20.0,
          ),
          child: StarsCounter(
            starCount: starCount,
            starSize: starsSize,
          ),
        )
      ],
    );
  }

}
