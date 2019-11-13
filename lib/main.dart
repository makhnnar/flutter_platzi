import 'package:flutter/material.dart';

import 'PressedButton.dart';

import 'description_place.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  void _saludar() {
    print("hola");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
              title: Text('Bombita')
          ),
          body: Center(
              child: Column(
                  children: <Widget>[
                    Text('bombi'),
                    Text('bombo'),
                    Text('bombero'),
                    PressedButton(
                      onPressed: _saludar,
                      title: "Presioname!",
                    ),
                    DescriptionPlace(),
                  ]
              )
          ),
        ),
    );
  }

}