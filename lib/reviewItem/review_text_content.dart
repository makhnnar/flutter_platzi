import 'package:flutter/material.dart';

import 'package:flutter_app/likes/titled_stars.dart';

class ReviewTextContent extends StatelessWidget {

  ReviewTextContent({
    Key key,
    this.fullNameAvatar,
    this.cantReview,
    this.cantPhotos,
    this.likes,
    this.comment
  }) : super(key: key);

  final String fullNameAvatar;
  final int cantReview;
  final int cantPhotos;
  final int likes;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              fullNameAvatar,
              style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.left,
          ),
          TitledStars(
            title: "$cantReview ${cantReview>1?"reviews":"review"}, $cantPhotos ${cantPhotos>1?"photos":"photo"}",
            starCount: likes,
            fontSize: 10.0,
            fontWeight: FontWeight.normal,
          ),
          Text(
              comment,
              style: TextStyle(
                  fontSize: 10.0,
              ),
              textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }

}
