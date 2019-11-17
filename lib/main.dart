import 'package:flutter/material.dart';
import 'package:flutter_app/reviewItemList/review_item_data.dart';
import 'package:flutter_app/reviewItemList/review_item_list.dart';

import 'PressedButton.dart';

import 'package:flutter_app/descriptionPlace/description_place.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  String dummyText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  List<ReviewItemData> getList() {
    List<ReviewItemData> list = List();
    list.add(
        ReviewItemData(
            imgAvatar: "assets/img/ari.jpg",
            fullNameAvatar: "Ari Oronoz",
            cantReview: 1,
            cantPhotos: 64,
            likes: 4,
            comment: "this is amazing. I've never imagined that!!! ^^"
        )
    );
    list.add(
        ReviewItemData(
            imgAvatar: "assets/img/ari.jpg",
            fullNameAvatar: "Ari Milano",
            cantReview: 3,
            cantPhotos: 1,
            likes: 3,
            comment: "this is coll. I love it!!! ^^"
        )
    );
    return list;
  }

  void _saludar() {
    print("hola");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
              title: Text('Bombita')
          ),
          body: Center(
              child: Column(
                children: <Widget>[
                  PressedButton(
                    onPressed: _saludar,
                    title: "Presioname!",
                  ),
                  DescriptionPlace(
                    namePlace: "Palanquero",
                    stars: 2,
                    description: dummyText,
                  ),
                  ReviewItemList(
                    reviewItemList: getList(),
                  )
                ]
              )
          ),
        ),
    );
  }

}