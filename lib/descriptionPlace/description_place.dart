import 'package:flutter/material.dart';
import 'package:flutter_app/buttons/purple_button.dart';
import 'package:flutter_app/descriptionPlace/paragraph.dart';

import 'package:flutter_app/likes/titled_stars.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 270.0,
              left: 20.0,
              right: 20.0
            ),
            child: TitledStars(
              title: namePlace,
              starCount: stars,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Paragraph(
              paragraph: description
          ),
          PurpleButton(
            title: "Presioname!",
            btnHeight: 60.0,
            btnWidth: 160.0,
          )
        ]
    );
  }

}
