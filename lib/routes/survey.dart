import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveyincome/components/custom-button.dart';
import 'package:surveyincome/components/custom-title-bar.dart';

class SurveyRoute extends StatefulWidget {
  @override
  _SurveyRouteState createState() => _SurveyRouteState();
}

class _SurveyRouteState extends State<SurveyRoute> {
  static const PADDING = 10.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomTitleBar(
          title: 'Бүлэгийн хүйсийн судалгаа',
        ),
        Container(
          color: Colors.transparent,
          margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
          child: Container(
            padding: EdgeInsets.all(6.0),
            decoration: new BoxDecoration(
              color: Colors.green,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(16.0),
                topRight: const Radius.circular(16.0),
                bottomLeft: const Radius.circular(16.0),
                bottomRight: const Radius.circular(16.0),
              ),
            ),
            child: Text(
              '1240/2000 оролцогчдын тоо',
              style: TextStyle(color: Colors.white, fontSize: 12.0),
            ),
          ),
        ),
        Container(
          color: Colors.transparent,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
          child: Text(
              'Each page needs a Scaffold, even if you are refactoring smaller widgets onto separate classes they should end up with a Scaffold parent somewhere. I am not sure if it is meant this way for the text to be underlined or it is an issue, regardless, you will end up needing to build any page within a Scaffold.'),
        ),
        Container(
          color: Colors.transparent,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
          child: Text('₮5000'),
        ),
        CustomButton(
          text: "Судалгааг эхлүүлэх",
          onPressed: () {},
        ),
      ],
    );
  }
}
