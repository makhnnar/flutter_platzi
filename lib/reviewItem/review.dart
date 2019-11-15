import 'package:flutter/material.dart';

import 'CircleImage.dart';

class Review extends StatelessWidget {

  Review({
    Key key,
    this.imgAvatar
  }) : super(key: key);

  final String imgAvatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          CircleImage(
            uriImage:imgAvatar,
            widthImage: 100,
            heightImage: 100,
          )
        ],
      ),
    );
  }

}
