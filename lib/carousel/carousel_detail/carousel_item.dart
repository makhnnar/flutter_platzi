import 'package:flutter/material.dart';
import 'package:flutter_app/buttons/state_button.dart';
import 'package:flutter_app/carousel/carousel_detail/carousel_image_item.dart';

class CarouselItem extends StatelessWidget {

  CarouselItem({
    Key key,
    this.srcImage
  }) : super(key: key);

  final String srcImage;


  /**
   * esto es equivalente, por si no deseo usar el alignment
   * margin: EdgeInsets.only(
      top: 205.0,
      left: 190.0
      ),
   *
   * */
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.8, 1.1),
      children: <Widget>[
        CarouselImageItem(
          srcImage: srcImage,
        ),
        Container(
            child:StateButton()
        ),
      ],
    );
  }

}
