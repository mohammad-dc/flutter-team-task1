import 'package:flutter/material.dart';
import './user_navbar.dart';
import './currency_container.dart';
import './dropDown_widget.dart';
import '../constant.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: <Widget>[UserNavBar(), CurrencyContainer(), DropDownItems()],
      );
  }
}