import 'package:flutter/material.dart';

class StateButton extends StatefulWidget {

  StateButton({
    this.isFavorite = false
  });

  final bool isFavorite;

  @override
  State<StatefulWidget> createState() {
    return _StateButton(isFavorite:isFavorite);
  }

}

class _StateButton extends State<StateButton> {

  _StateButton({
    this.isFavorite
  });

  bool isFavorite;
  IconData favIcon = Icons.favorite_border;

  void onClicked() {
    setState(() {
      isFavorite= !isFavorite;
      favIcon = isFavorite?Icons.favorite:Icons.favorite_border;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini:true,
      tooltip: "Fav",
      child: Icon(favIcon),
      onPressed: onClicked,
    );
  }
}
