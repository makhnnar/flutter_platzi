import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {

  CircleImage({
    Key key,
    this.uriImage,
    this.widthImage,
    this.heightImage
  }) : super(key: key);

  final String uriImage;
  final double widthImage;
  final double heightImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      width: widthImage,
      height: heightImage,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              uriImage
            )
        )
      ),
    );
  }

}
