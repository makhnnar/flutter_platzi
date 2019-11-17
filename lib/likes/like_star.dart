import 'package:flutter/material.dart';

class LikeStar extends StatelessWidget {

  LikeStar({
    Key key,
    this.isLike,
    this.size
  }) : super(key: key);

  final bool isLike;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.star,
        size: size,
        color: Color(isLike?0xFFf2C611:0xFFd3d3d3),
      ),
    );
  }

}
