import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:surveyincome/components/custom-button.dart';
import 'package:surveyincome/components/custom-title-bar.dart';

import '../components/custom-button.dart';

class AccountRoute extends StatefulWidget {
  @override
  _AccountRouteState createState() => _AccountRouteState();
}

class _AccountRouteState extends State<AccountRoute> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.all(20.0),
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blueAccent.shade200,
                  Colors.blueAccent.shade700,
                ],
              ),
              borderRadius: new BorderRadius.only(
                bottomLeft: const Radius.circular(16.0),
                bottomRight: const Radius.circular(16.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/images/img1.jpeg'),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Д. Бат-Оргил',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: "BoyarskyMon",
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(6.0),
              decoration: new BoxDecoration(
                color: Colors.blueAccent.shade400,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(16.0),
                  topRight: const Radius.circular(16.0),
                  bottomLeft: const Radius.circular(16.0),
                  bottomRight: const Radius.circular(16.0),
                ),
              ),
              child: Text(
                'Данс: 10\'000₮',
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(6.0),
              decoration: new BoxDecoration(
                color: Colors.blueAccent.shade400,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(16.0),
                  topRight: const Radius.circular(16.0),
                  bottomLeft: const Radius.circular(16.0),
                  bottomRight: const Radius.circular(16.0),
                ),
              ),
              child: Text(
                'НОС: 112',
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 10.0),
          padding: const EdgeInsets.fromLTRB(25.0, 10, 10, 10),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.blueGrey,
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                'daornit2@gmail.com',
                style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),
              ),
            ],
          ),
          decoration: new BoxDecoration(
            color: Colors.transparent,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(5.0),
              topRight: const Radius.circular(5.0),
              bottomLeft: const Radius.circular(5.0),
              bottomRight: const Radius.circular(5.0),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20.0, 0, 20.0, 10.0),
          padding: const EdgeInsets.fromLTRB(25.0, 10, 10, 10),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.account_balance_wallet,
                color: Colors.blueGrey,
              ),
              SizedBox(
                width: 15.0,
              ),
              Text(
                '5751487565',
                style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),
              ),
            ],
          ),
          decoration: new BoxDecoration(
            color: Colors.transparent,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(5.0),
              topRight: const Radius.circular(5.0),
              bottomLeft: const Radius.circular(5.0),
              bottomRight: const Radius.circular(5.0),
            ),
          ),
        ),
        CustomButton(
            text: "Үйлдэл",
            onPressed: () {
              Scaffold.of(context).openDrawer();
            }),
      ],
    );
  }
}
