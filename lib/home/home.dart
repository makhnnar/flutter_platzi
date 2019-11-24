import 'package:flutter/material.dart';
import 'package:flutter_app/descriptionPlace/description_place.dart';
import 'package:flutter_app/reviewItemList/review_item_data.dart';
import 'package:flutter_app/reviewItemList/review_item_list.dart';

class Home extends StatelessWidget {

  Home({
    Key key,
    this.namePlace,
    this.stars,
    this.description,
    this.reviews
  }) : super(key: key);

  final String namePlace;
  final int stars;
  final String description;
  final List<ReviewItemData> reviews;

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          DescriptionPlace(
            namePlace: namePlace,
            stars: stars,
            description: description,
          ),
          ReviewItemList(
            reviewItemList: reviews,
          )
        ]
    );
  }

}
