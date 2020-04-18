import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:surveyincome/components/custom-button.dart';
import 'package:surveyincome/components/custom-title-bar.dart';
import 'package:surveyincome/components/survey_question.dart';

class AddSurveyRoute extends StatefulWidget {
  @override
  _AddSurveyRouteState createState() => _AddSurveyRouteState();
}

class _AddSurveyRouteState extends State<AddSurveyRoute> {
  final _formKey = GlobalKey<FormState>();

  List<Widget> surveyList = new List<Widget>();

  void initializeList() {
    surveyList.add(
      TextFormField(
        decoration: const InputDecoration(
          hintText: 'Судалгааны нэр',
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Судагааны нэр заавал өгөгдсөн байх шаардлагатай';
          }
          return null;
        },
      ),
    );
    surveyList.add(
      TextFormField(
        decoration: const InputDecoration(
          hintText: 'Оролцогчийн тоо',
        ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly
        ],
        validator: (value) {
          if (value.isEmpty) {
            return 'Оролцогчдийн тоог заавал бөглөнө үү!';
          }
          return null;
        },
      ),
    );
    surveyList.add(
      TextFormField(
        decoration: const InputDecoration(
          hintText: 'Судалгааны нийт төлбөр/төгрөгөөр/',
        ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly
        ],
        validator: (value) {
          if (value.isEmpty) {
            return 'Оролцогчдийн тоог заавал бөглөнө үү!';
          }
          return null;
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    initializeList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomTitleBar(
          title: 'Судалгаа үүсгэх',
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Form(
              key: _formKey,
              child: ListView(
                children: surveyList,
              ),
            ),
          ),
        ),
        Container(
          child: Material(
            elevation: 4.0,
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    print("submit button clicked");
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Text(
                      "Үүсгэх",
                      style: TextStyle(fontSize: 15, letterSpacing: 5),
                    ),
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 1.0,
                  color: Colors.blueGrey,
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      print('adding SurveyQuestion');
                      surveyList.add(
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
                      );
                      print(surveyList.length);
                    });
                  },
                  icon: Icon(Icons.add),
                  color: Colors.blueAccent.shade400,
                  iconSize: 20,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
