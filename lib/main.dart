import 'package:flutter/material.dart';
import 'package:flutter_app/trips_app.dart';

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
      home: TripsApp(),
    );
  }

}