import 'package:flutter/material.dart';

class TripsApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _TripsApp();
  }

}

class _TripsApp extends State<TripsApp>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple,

          ),
          child: BottomNavigationBar(
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
          )
      ),
    );
  }

}