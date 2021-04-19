import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calc/styling.dart';
import 'package:flutter_calc/math.dart';

int result = 9999999;
String inputBar;
int num1;
int num2;

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 35, top: 60),
        child: Row(
          children: [
            NavBarItem(icon: CupertinoIcons.clock),
            Spacer(),
            NavBarItem(icon: CupertinoIcons.back),
          ],
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;
  const NavBarItem({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: primaryLightColor,
      ),
      child: IconButton(
        iconSize: 30,
        icon: Icon(
          icon,
          color: lightText,
        ),
        onPressed: () {},
      ),
    );
  }
}

class InputHistory extends StatefulWidget {
  final String inputHistory;
  InputHistory({Key key, this.inputHistory}) : super(key: key);

  @override
  _InputHistoryState createState() => _InputHistoryState();
}

class _InputHistoryState extends State<InputHistory> {
  String _inputHistory = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(right: 55, top: 100),
        child: Text(
          '$_inputHistory',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class InputBar extends StatefulWidget {
  final inputBar;
  InputBar({Key key, this.inputBar}) : super(key: key);
  @override
  _InputBarState createState() => _InputBarState();
}

class _InputBarState extends State<InputBar> {
  void addInput(num) {
    setState(() {
      result += num;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(left: 110, top: 15),
        child: Text(
          '$result',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class NumPad extends StatelessWidget {
  const NumPad({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(left: 30, right: 0, top: 60),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  NumButton(text: 'C'),
                  NumButton(text: '+/-'),
                  NumButton(text: '%'),
                  NumButton(text: '/'),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                NumButton(text: '7', num: 7),
                NumButton(text: '8', num: 8),
                NumButton(text: '9', num: 9),
                NumButton(text: 'X'),
              ],
            ),
            Row(
              children: <Widget>[
                NumButton(text: '4', num: 4),
                NumButton(text: '5', num: 5),
                NumButton(text: '6', num: 6),
                NumButton(text: '-'),
              ],
            ),
            Row(
              children: <Widget>[
                NumButton(text: '1', num: 1),
                NumButton(text: '2', num: 2),
                NumButton(text: '3', num: 3),
                AddButton(text: '+'),
              ],
            ),
            Row(
              children: <Widget>[
                NumButton(text: ''),
                NumButton(text: '0', num: 0),
                NumButton(text: '.'),
                NumButton(text: '='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NumButton extends StatelessWidget {
  final String text;
  final int num;
  const NumButton({Key key, this.text, this.num}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 75,
      decoration: BoxDecoration(
        color: primaryLightColor,
      ),
      child: TextButton(
        style: TextButton.styleFrom(primary: lightText),
        onPressed: () {
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  final String text;
  const AddButton({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 75,
      decoration: BoxDecoration(
        color: primaryLightColor,
      ),
      child: TextButton(
        style: TextButton.styleFrom(primary: lightText),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
