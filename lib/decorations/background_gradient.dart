import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {

  BackgroundGradient({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
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
    );
  }

}
