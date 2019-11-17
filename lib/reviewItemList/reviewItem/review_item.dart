import 'package:flutter/material.dart';

import 'CircleImage.dart';

import 'review_text_content.dart';

class ReviewItem extends StatelessWidget {

  ReviewItem({
    Key key,
    this.imgAvatar,
    this.fullNameAvatar,
    this.cantReview,
    this.cantPhotos,
    this.likes,
    this.comment
  }) : super(key: key);

  final String imgAvatar;
  final String fullNameAvatar;
  final int cantReview;
  final int cantPhotos;
  final int likes;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleImage(
            uriImage:imgAvatar,
            widthImage: 80,
            heightImage: 80,
          ),
          ReviewTextContent(
            fullNameAvatar: fullNameAvatar,
            cantReview: cantReview,
            cantPhotos: cantPhotos,
            likes: likes,
            comment: comment,
          ),
        ],
      ),
    );
  }

}
