import 'package:flutter/material.dart';
import '../constant.dart';

class CircleIcons extends StatelessWidget {
  final Widget icon;
  CircleIcons({Key key, @required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(35 / 2),
      child: Stack(
        children: <Widget>[
          Container(
            width: 35 * 1.5,
            height: 35 * 1.5,
            decoration: BoxDecoration(
              color: SecondColor,
              borderRadius: BorderRadius.circular(35),
            ),
          ),
          Positioned.fill(child: icon),
        ],
      ),
    );
  }
}
