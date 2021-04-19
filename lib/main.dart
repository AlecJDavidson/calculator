import 'package:flutter/material.dart';
import 'package:flutter_calc/styling.dart';
import 'package:flutter_calc/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Quicksand'),
      home: Calculator(),
    ),
  );
}

class Calculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor, // primaryColor imports from data.dart
      body: Column(
        children: <Widget>[
          NavigationBar(),
          InputHistory(),
          InputBar(),
          NumPad(),
        ],
      ),
    );
  }
}

class _Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<_Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor, // primaryColor imports from data.dart
      body: Column(
        children: <Widget>[
        ],
      ),
    );
  }
}
