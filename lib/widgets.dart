import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calc/styling.dart';
import 'package:flutter_calc/math.dart';

String _inputBar = '';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class NavBarItem extends StatefulWidget {
  final IconData icon;
  const NavBarItem({Key key, this.icon}) : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
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
          widget.icon,
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
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(right: 70, top: 100),
        child: Text(
          'input history',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

class InputBar extends StatefulWidget {
  InputBar({Key key}) : super(key: key);

  @override
  _InputBarState createState() => _InputBarState();
}

class _InputBarState extends State<InputBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 60, top: 15),
          child: Text(
            '$_inputBar',
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    ));
  }
}


class NumPad extends StatelessWidget {
  const NumPad({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  NumButton(text: 'C'),
                  NumButton(text: '+/-'),
                  NumButton(text: '%'),
                  NumButton(text: '/'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NumButton(text: '7'),
                NumButton(text: '8'),
                NumButton(text: '9'),
                NumButton(text: 'X'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NumButton(text: '4'),
                NumButton(text: '5'),
                NumButton(text: '6'),
                NumButton(text: '-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NumButton(text: '1'),
                NumButton(text: '2'),
                NumButton(text: '3'),
                AddButton(text: '+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                NumButton(text: ''),
                NumButton(text: '0'),
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

class NumButton extends StatefulWidget {
  const NumButton({Key key, this.text}) : super(key: key);

  final String text;
  @override
  _NumButtonState createState() => _NumButtonState();
}

class _NumButtonState extends State<NumButton> {
  void _addInput() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _inputBar += '1';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // height: 65,
        // width: Max,
        decoration: BoxDecoration(
          color: primaryLightColor,
        ),
        child: TextButton(
          style: TextButton.styleFrom(primary: lightText),
          onPressed: () {
            _addInput();
          },
          child: Text(
            widget.text,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
          ),
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
        onPressed: () {
          _inputBar += '1';
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
