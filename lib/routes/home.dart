import 'package:flutter/material.dart';
import 'package:surveyincome/components/custom-button.dart';
import 'package:surveyincome/components/slider.dart';

class HomeRoute extends StatelessWidget {
  // This widget is the root of your application.
  static const PADDING = 10.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: CustomSlider(),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              Container(
                height: 100.0,
                margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                color: Colors.transparent,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/survey');
                  },
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.green,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(16.0),
                          topRight: const Radius.circular(16.0),
                          bottomLeft: const Radius.circular(16.0),
                          bottomRight: const Radius.circular(16.0),
                        )),
                    child: null,
                  ),
                ),
              ),
              CustomButton(
                text: "Цааш үзэх",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
