import 'package:flutter/material.dart';
import 'package:flutter_app/resources/CustomLinearGradient.dart';

class PurpleButton extends StatelessWidget {

  PurpleButton({
    Key key,
    this.title = "navigate",
    this.btnHeight = 50.0,
    this.btnWidth = 140.0
  }) : super(key: key);

  final String title;
  final double btnHeight;
  final double btnWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        height: btnHeight,
        width: btnWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: CustomGradients().getHorizontalLinearGradient(0xFF2196f3,0xFF4527a0),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: "Lato",
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }

}
