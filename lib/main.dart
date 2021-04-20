import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calc/styling.dart';
import 'package:flutter_calc/widgets.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Quicksand'),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  Calculator({Key key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _inputBar = '';
  String _inputOperator = '';

  void _addInput(num) {
    setState(() {
      _inputBar += num;
    });
  }

  void _clearInput() {
    setState(() {
      _inputBar = '';
    });
  }

  void _add() {
    setState(() {
      double num1 = double.parse(_inputBar);
      _inputBar += ' + ';
    });
  }

    void _equals() {
    setState(() {
      double num1 = double.parse(_inputBar);
      _inputBar += ' + ';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor, // primaryColor imports from data.dart
      body: Center(
        child: Column(
          children: <Widget>[
            // NavigationBar
            Container(
              height: 50,
              child: Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    NavBarItem(icon: CupertinoIcons.clock),
                    Spacer(),
                    NavBarItem(icon: CupertinoIcons.back),
                  ],
                ),
              ),
            ),
            // NavigationBar End
            // -----------------
            // InputHistory
            Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 70, top: 100),
                child: Text(
                  'input history',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            // InputHistory End
            // -----------------
            // InputBar
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 60, top: 15),
                    child: SingleChildScrollView(
                      child: Text(
                        '$_inputBar',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // InputBar End
            // -----------------
            // NumPad
            Container(
              child: Padding(
                padding: EdgeInsets.only(top: 60),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          TextButton(
                            style: TextButton.styleFrom(primary: lightText),
                            onPressed: () {
                              _clearInput();
                            },
                            child: Text(
                              'C',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w500),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(primary: lightText),
                            onPressed: () {},
                            child: Text(
                              '+/-',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w500),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(primary: lightText),
                            onPressed: () {},
                            child: Text(
                              '%',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w500),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(primary: lightText),
                            onPressed: () {},
                            child: Text(
                              '/',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {
                            _addInput('7');
                          },
                          child: Text(
                            '7',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {
                            _addInput('8');
                          },
                          child: Text(
                            '8',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {
                            _addInput('9');
                          },
                          child: Text(
                            '9',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {},
                          child: Text(
                            'x',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {
                            _addInput('4');
                          },
                          child: Text(
                            '4',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {
                            _addInput('5');
                          },
                          child: Text(
                            '5',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {
                            _addInput('6');
                          },
                          child: Text(
                            '6',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {},
                          child: Text(
                            '-',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {
                            _addInput('1');
                          },
                          child: Text(
                            '1',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {
                            _addInput('2');
                          },
                          child: Text(
                            '2',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {
                            _addInput('3');
                          },
                          child: Text(
                            '3',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {},
                          child: Text(
                            '+',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {},
                          child: Text(
                            '',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {
                            _addInput('0');
                          },
                          child: Text(
                            '0',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {
                            _addInput('.');
                          },
                          child: Text(
                            '.',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: lightText),
                          onPressed: () {},
                          child: Text(
                            '=',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // NumPad End
          ],
        ),
      ),
    );
  }
}
