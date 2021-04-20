import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calc/styling.dart';
import 'package:flutter_calc/math.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({Key key, this.icon}) : super(key: key);
  final IconData icon;
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
