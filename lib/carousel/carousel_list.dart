import 'package:flutter/material.dart';
import 'package:flutter_app/carousel/carousel_detail/carousel_item.dart';

class CarouselList extends StatelessWidget {

  CarouselList({
    Key key,
    this.placeList
  }) : super(key: key);

  final List<String> placeList;

  List<Widget> renderList() {
    List<Widget> list = new List();
    placeList.forEach(
            (item) =>
            list.add(
                CarouselItem(
                  srcImage: item,
                )
            )
    );
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: renderList(),
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10.0),
    );
  }

}
