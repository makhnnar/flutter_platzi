import 'package:flutter/material.dart';
import 'package:flutter_app/resources/CustomLinearGradient.dart';

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
          gradient: CustomGradients().getHorizontalLinearGradient(0xFFab47bc,0xFF6a1b9a)
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
