import 'package:flutter/material.dart';
import 'package:flutter_app/resources/CustomLinearGradient.dart';

class PurpleButton extends StatelessWidget {

  PurpleButton({
    Key key,
    this.title = "navigate"
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 60.0,
        width: 100.0,
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: CustomLinearGradient(
            colorLeft: 0xFF2196f3,
            colorRight: 0xFF4527a0
          ).get(),
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
