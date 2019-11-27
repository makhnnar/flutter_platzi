import 'package:flutter/material.dart';
import 'package:flutter_app/home/home.dart';
import 'package:flutter_app/profile/profile.dart';
import 'package:flutter_app/reviewItemList/review_item_data.dart';
import 'package:flutter_app/search/search.dart';

class TripsApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _TripsApp();
  }

}

class _TripsApp extends State<TripsApp>{

  int indexTap = 0;

  final List<Widget> tabs = [
    Home(
      namePlace: "Palanquero",
      stars: 2,
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      places: [
        "assets/img/img1.png",
        "assets/img/img2.png",
        "assets/img/img3.png"
      ],
      reviews: [
        ReviewItemData(
            imgAvatar: "assets/img/ari.jpg",
            fullNameAvatar: "Ari Oronoz",
            cantReview: 1,
            cantPhotos: 64,
            likes: 4,
            comment: "this is amazing. I've never imagined that!!! ^^"
        ),
        ReviewItemData(
            imgAvatar: "assets/img/avatar.jpeg",
            fullNameAvatar: "Otro Usuario",
            cantReview: 3,
            cantPhotos: 1,
            likes: 3,
            comment: "this is coll. I love it!!! ^^"
        )
      ],
    ),
    Search(),
    Profile()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple,
          ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text("")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("")
              )
            ]
        ),
      ),
    );
  }

}