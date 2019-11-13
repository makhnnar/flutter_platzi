import 'package:flutter/material.dart';

import 'like_star.dart';

class StarsCounter extends StatelessWidget {

  StarsCounter({
    Key key,
    this.starCount,
    this.maxStars = 5
  }) : super(key: key);

  final int starCount;
  final int maxStars;

  List<Widget> starList() {
    List<Widget> list = new List();
    for (var i = 1; i <= maxStars; i++) {
      list.add(LikeStar(isLike: i<=starCount));
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
