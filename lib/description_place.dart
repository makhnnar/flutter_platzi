import 'package:flutter/material.dart';

import 'titled_stars.dart';

class DescriptionPlace extends StatelessWidget {

  DescriptionPlace({
    Key key,
    this.namePlace,
    this.stars,
    this.description
  }) : super(key: key);

  final String namePlace;
  final int stars;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
        children:<Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 20.0,
              left: 20.0,
              right: 20.0
            ),
            child: TitledStars(
              title: namePlace,
              starCount: stars,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20.0,
              left: 20.0,
              right: 20.0
            ),
            child: Text(
                description,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF56575a)
                ),
            ),
          )
        ]
    );
  }

}
