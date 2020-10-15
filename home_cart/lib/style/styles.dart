import 'package:flutter/material.dart';

class Styles {

  static BoxDecoration boxdeco = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
      Colors.amber,
      Colors.orange[700],
    ]),
  );

  static TextStyle heading1 = TextStyle(
    color: Colors.purple[300],
    fontSize: 34,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(1.0, 2.0),
        blurRadius: 1.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      Shadow(
        offset: Offset(4.0, 2.0),
        blurRadius: 4.0,
        color: Color.fromARGB(125, 0, 0, 255),
      ),
    ],
  );

  static TextStyle pageHeading = TextStyle(
    letterSpacing: 1.5,
    color: Colors.lime[200],
    fontSize: 28,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(1.0, 2.0),
        blurRadius: 2.0,
      ),
      Shadow(
        offset: Offset(4.0, 2.0),
        blurRadius: 8.0,
      ),
    ],
  );

  static TextStyle cardHeading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle listHeading = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black87
  );

  static double width = double.infinity;
  static double height = double.infinity;

  


}
