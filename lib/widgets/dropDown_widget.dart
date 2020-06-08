import 'package:flutter/material.dart';
import '../constant.dart';

class DropDownItems extends StatefulWidget {
  @override
  _DropDownItemsState createState() => _DropDownItemsState();
}

class _DropDownItemsState extends State<DropDownItems> {
  String dropdownValue = 'USD';
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: ShapeDecoration(
          color: WhiteColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1.0, style: BorderStyle.solid, color: WhiteColor),
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
        child: DropdownButton<String>(
          value: dropdownValue,
          isExpanded: true,
          dropdownColor: WhiteColor,
          elevation: 16,
          style: TextStyle(color: PrimaryColor),
          underline: Container(
            height: 2,
            color: WhiteColor,
          ),
          onChanged: (String newValue) {
            setState(() => dropdownValue = newValue);
          },
          items: <String>['USD', 'GBP', 'EUR']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: PrimaryColor),
              ),
            );
          }).toList(),
        ));
  }
}
