import 'package:flutter/material.dart';

import 'package:flutter_app/reviewItemList/reviewItem/review_item.dart';
import 'package:flutter_app/reviewItemList/review_item_data.dart';

class ReviewItemList extends StatelessWidget {

  ReviewItemList({
    Key key,
    this.reviewItemList,
  }) : super(key: key);

  final List<ReviewItemData> reviewItemList;

  List<Widget> renderList() {
    List<Widget> list = new List();
    reviewItemList.forEach(
      (item) =>
        list.add(
          ReviewItem(
            imgAvatar: item.imgAvatar,
            fullNameAvatar: item.fullNameAvatar,
            cantReview: item.cantReview,
            cantPhotos: item.cantPhotos,
            likes: item.likes,
            comment: item.comment,
          )
        )
    );
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: renderList(),
      ),
    );
  }

}
