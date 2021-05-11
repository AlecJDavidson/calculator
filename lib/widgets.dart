import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator/styling.dart';

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
