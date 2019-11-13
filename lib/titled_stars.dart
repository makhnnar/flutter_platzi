import 'package:flutter/material.dart';

import 'stars_counter.dart';

class TitledStars extends StatelessWidget {

  TitledStars({
    Key key,
    this.title,
    this.starCount
  }) : super(key: key);

  final String title;
  final int starCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.left,
        ),
        StarsCounter(
          starCount: starCount,
        )
      ],
    );
  }

}
