import 'package:flutter/material.dart';

class CarouselBackground extends StatelessWidget {

  CarouselBackground({
    Key key,
    this.title = "My Title"
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      width: 600,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFab47bc),
                Color(0xFF6a1b9a)
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0,0.6],
              tileMode: TileMode.clamp
          )
      ),
      child: Container(
        margin: EdgeInsets.only(
            top: 40.0,
            left: 20.0
        ),
        child:Text(
          title,
          style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              fontFamily: "Lato",
              color: Colors.white
          ),
        ),
      ),
    );
  }

}
