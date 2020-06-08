import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import '../constant.dart';

class CurrencyContainer extends StatefulWidget {
  @override
  _CurrencyContainerState createState() => _CurrencyContainerState();
}

class _CurrencyContainerState extends State<CurrencyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        color: SecondColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Bitcoin rate for United State Dollar: ',
                style: TextStyle(color: WhiteColor, fontSize: 15),
              ),
              Badge(
                badgeColor: WhiteColor,
                shape: BadgeShape.square,
                borderRadius: 15,
                toAnimate: false,
                badgeContent:
                    Text('USA', style: TextStyle(color: PrimaryColor)),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text('9,540.6967',
              style: TextStyle(color: WhiteColor, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
