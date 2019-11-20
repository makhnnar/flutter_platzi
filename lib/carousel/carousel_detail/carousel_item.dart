import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {

  CarouselItem({
    Key key,
    this.srcImage
  }) : super(key: key);

  final String srcImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit:BoxFit.cover,
          image: AssetImage(srcImage)
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0)
        ),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );
  }

}
