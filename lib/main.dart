import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator/styling.dart';

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
  String _inputBar1 = '';
  String _inputBar2 = '';
  String _inputHistory = '';
  String _operator = '';
  bool operatorStatus = false;
  double num1;
  double num2;

  void _addInput(num) {
    setState(() {
      if (operatorStatus == false) {
        _inputBar1 += num;
        num1 = double.parse(_inputBar1);
      } else {
        _inputBar2 += num;
        num2 = double.parse(_inputBar2);
      }
    });
  }

  void _clearInput() {
    setState(() {
      _inputBar1 = '';
      _inputBar2 = '';
      _inputHistory = '';
      _operator = '';
      num1 = 0;
      num2 = 0;
    });
  }

  void _reset() {
    setState(() {
      _inputBar2 = '';
      _operator = '';
      num1 = double.parse(_inputBar1);
      num2 = 0;
    });
  }

  void setOperator(inputOperator) {
    setState(() {
      if (operatorStatus == true) {
        calculate();
        operatorStatus = false;
      } else {
        _operator = inputOperator;
        operatorStatus = true;
      }
    });
  }

  void _setPolarity() {
    setState(() {
      if (operatorStatus == false) {
        _inputBar1 = (double.parse(_inputBar1) * -1).toString();
        num1 = double.parse(_inputBar1);
      } else {
        _inputBar2 = (double.parse(_inputBar2) * -1).toString();
        num2 = double.parse(_inputBar2);
      }
    });
  }

  void setInputHistory() {
    setState(() {
      _inputHistory = _inputBar1 +' '+ _operator +' '+ _inputBar2;
    });
  }

  void calculate() {
    setState(() {
      if (_operator == '+') {
        setInputHistory();
        _inputBar1 = (num1 + num2).toString();
        _reset();
        operatorStatus = false;
      } else if (_operator == '-') {
        setInputHistory();
        _inputBar1 = (num1 - num2).toString();
        _reset();
        operatorStatus = false;
      } else if (_operator == 'x') {
        setInputHistory();
        _inputBar1 = (num1 * num2).toString();
        _reset();
        operatorStatus = false;
      } else if (_operator == '÷') {
        setInputHistory();
        _inputBar1 = (num1 / num2).toString();
        _reset();
        operatorStatus = false;
      } else if (_operator == '%') {
        setInputHistory();
        _inputBar1 = ((num1 * 0.01) * (num2)).toString();
        _reset();
        operatorStatus = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryDarkColor, // primaryColor imports from data.dart
      body: Center(
        child: Column(
          children: <Widget>[
            // InputBar
            Expanded(
              flex: 6,
              child: Container(
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.end, // makes input center
                  children: <Widget>[
                    Column(
                      mainAxisAlignment:
                          MainAxisAlignment.end, // makes input center
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(65, 20, 25, 5),
                          child: Text(
                            '$_inputHistory',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 20),
                          child: Text(
                            '$_inputBar1' + ' $_operator ' + '$_inputBar2',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 60,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // InputBar End
            // -----------------
            // NumPad
            // Container(
            // height: 700,
            // width: double.infinity,

            Expanded(
              flex: 10,
              child: Container(
                color: secondaryDarkColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _clearInput();
                          },
                          child: Text(
                            'C',
                            style: TextStyle(
                                color: darkButton1,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _setPolarity();
                          },
                          child: Text(
                            '+/-',
                            style: TextStyle(
                                color: darkButton1,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            setOperator('%');
                          },
                          child: Text(
                            '%',
                            style: TextStyle(
                                color: darkButton1,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            if (operatorStatus == true) {
                              calculate();
                            }
                            setOperator('÷');
                          },
                          child: Text(
                            '÷',
                            style: TextStyle(
                                color: darkButton2,
                                fontSize: 55,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _addInput('7');
                          },
                          child: Text(
                            '7',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _addInput('8');
                          },
                          child: Text(
                            '8',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _addInput('9');
                          },
                          child: Text(
                            '9',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            if (operatorStatus == true) {
                              calculate();
                            }
                            setOperator('x');
                          },
                          child: Text(
                            'x',
                            style: TextStyle(
                                color: darkButton2,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _addInput('4');
                          },
                          child: Text(
                            '4',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _addInput('5');
                          },
                          child: Text(
                            '5',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _addInput('6');
                          },
                          child: Text(
                            '6',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            if (operatorStatus == true) {
                              calculate();
                            }
                            setOperator('-');
                          },
                          child: Text(
                            '-',
                            style: TextStyle(
                                color: darkButton2,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _addInput('1');
                          },
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _addInput('2');
                          },
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _addInput('3');
                          },
                          child: Text(
                            '3',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            if (operatorStatus == true) {
                              calculate();
                            }
                            setOperator('+');
                          },
                          child: Text(
                            '+',
                            style: TextStyle(
                                color: darkButton2,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {},
                          child: Text(
                            '',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _addInput('0');
                          },
                          child: Text(
                            '0',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            _addInput('.');
                          },
                          child: Text(
                            '.',
                            style: TextStyle(
                                color: darkText,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: darkText),
                          onPressed: () {
                            calculate();
                          },
                          child: Text(
                            '=',
                            style: TextStyle(
                                color: darkButton2,
                                fontSize: 40,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // NumPad End
  }
}
