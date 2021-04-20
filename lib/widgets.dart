import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calc/styling.dart';

// class NavBarItem extends StatelessWidget {
//   const NavBarItem({Key key, this.icon, this.func}) : super(key: key);
//   final IconData icon;
//   final void func;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       width: 50,
//       decoration: BoxDecoration(
//         color: primaryDarkColor,
//       ),
//       child: IconButton(
//         iconSize: 30,
//         icon: Icon(
//           icon,
//           color: darkText,
//         ),
//         onPressed: () {func;},
//       ),
//     );
//   }
// }



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
