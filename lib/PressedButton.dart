import 'package:flutter/material.dart';

class PressedButton extends StatefulWidget {

  PressedButton({
    Key key,
    this.onPressed,
    this.title
  }) : super(key: key);

  final VoidCallback onPressed;
  final String title;

  @override
  _PressedButton createState() => _PressedButton(
      onPressed: onPressed,
      title: title
  );

}

class _PressedButton extends State<PressedButton> {

  _PressedButton({
    this.onPressed,
    this.title
  });

  String title;

  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child:Container(
            color: Colors.cyanAccent,
            width: 200,
            height: 30,
            child: Center(
                child:Text(title)
            )
        ),
        onTap: onPressed,
    );
  }
}
