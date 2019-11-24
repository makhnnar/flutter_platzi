import 'package:flutter/material.dart';

class Paragraph extends StatelessWidget {

  Paragraph({
    Key key,
    this.paragraph
  }) : super(key: key);

  final String paragraph;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0
      ),
      child: Text(
        paragraph,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );
  }
}
