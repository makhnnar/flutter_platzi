import 'package:flutter/material.dart';

class LikeStar extends StatelessWidget {

  LikeStar({
    Key key,
    this.isLike
  }) : super(key: key);

  final bool isLike;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        Icons.star,
        color: Color(isLike?0xFFf2C611:0xFFd3d3d3),
      ),
    );
  }

}
