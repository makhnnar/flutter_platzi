import 'package:flutter/material.dart';

import 'package:flutter_app/likes/like_star.dart';

class StarsCounter extends StatelessWidget {

  StarsCounter({
    Key key,
    this.starCount,
    this.maxStars = 5,
    this.starSize = 20
  }) : super(key: key);

  final int starCount;
  final int maxStars;
  final double starSize;

  List<Widget> starList() {
    List<Widget> list = new List();
    for (var i = 1; i <= maxStars; i++) {
      list.add(
        LikeStar(
          isLike: i<=starCount,
          size: starSize,
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children:starList(),
    );
  }

}
