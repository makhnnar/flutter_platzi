import 'package:flutter/material.dart';
import 'package:flutter_app/carousel/carousel_background.dart';
import 'package:flutter_app/carousel/carousel_list.dart';

class CarouselHeader extends StatelessWidget {

  CarouselHeader({
    Key key,
    this.placeList
  }) : super(key: key);

  final List<String> placeList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290.0,
      child: Stack(
        children: <Widget>[
          CarouselBackground(
            title: "Mi Playon",
          ),
          CarouselList(
            placeList: placeList,
          )
        ]
      ),
    );
  }

}
