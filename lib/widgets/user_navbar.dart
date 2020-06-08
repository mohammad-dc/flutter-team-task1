import 'package:flutter/material.dart';
import 'package:flutterteamtask/widgets/circle_widget.dart';
import '../constant.dart';

class UserNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: Image.asset("./assets/user.jpg").image,
                    radius: 30,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Good morning',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                                fontFamily: 'Quicksand'),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Mohammad',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Quicksand'))
                        ],
                      ))
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  CircleIcons(
                      icon: Icon(
                    Icons.featured_play_list,
                    color: Colors.white,
                  )),
                  CircleIcons(
                      icon: Icon(
                    Icons.attach_money,
                    color: Colors.white,
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
