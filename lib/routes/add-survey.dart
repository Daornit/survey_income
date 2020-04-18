import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:surveyincome/components/custom-button.dart';
import 'package:surveyincome/components/custom-title-bar.dart';

class AddSurveyRoute extends StatefulWidget {
  @override
  _AddSurveyRouteState createState() => _AddSurveyRouteState();
}

class _AddSurveyRouteState extends State<AddSurveyRoute> {
  final _formKey = GlobalKey<FormState>();

  String _selectedType = 'short';
  List<DropdownMenuItem<String>> genderList = [];

  List<Widget> list = [];

  void loadGenderList() {
    genderList = [];
    genderList.add(new DropdownMenuItem(
      child: new Text('Текст хариулт'),
      value: 'short',
    ));
    genderList.add(new DropdownMenuItem(
      child: new Text('Сонголт/selection/'),
      value: 'selection',
    ));
    genderList.add(new DropdownMenuItem(
      child: new Text('Олон сонголтот/checkbox/'),
      value: 'checkbox',
    ));
    genderList.add(new DropdownMenuItem(
      child: new Text('Хооронд/Range/'),
      value: 'range',
    ));
    genderList.add(new DropdownMenuItem(
      child: new Text('Огноо'),
      value: 'date',
    ));
    genderList.add(new DropdownMenuItem(
      child: new Text('Цаг'),
      value: 'time',
    ));
  }

  typeChange(String value) {
    setState(() {
      _selectedType = value;
      switch (_selectedType) {
        case 'short':
          list.clear();
          list.add(
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Текст хариулт хүлээн авна.',
              ),
              enabled: false,
            ),
          );
          break;
        case 'selection':
          list.clear();
          list.add(
            Row(
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'хариулт...',
                      ),
                    ),
                    leading: Radio(
                      value: 1,
                      onChanged: (value) {},
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  iconSize: 20.0,
                  color: Colors.blueAccent.shade400,
                ),
              ],
            ),
          );
          list.add(
            CustomButton(
              text: "Хариулт нэмэх",
              onPressed: () {},
            ),
          );
          break;
        case 'checkbox':
          list.clear();
          break;
        case 'range':
          list.clear();
          break;
        case 'date':
          list.clear();
          break;
        case 'time':
          list.clear();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    loadGenderList();
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
                children: <Widget>[
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
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Асуулт ...',
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Блок бүр асуулт талбарийг бөглөсөн байх шаардлагатай!';
                            }
                            return null;
                          },
                        ),
                        DropdownButton(
                          hint: new Text('Блокийн төрлийг сонгоно уу!'),
                          items: genderList,
                          value: _selectedType,
                          onChanged: (value) {
                            typeChange(value);
                          },
                          isExpanded: true,
                        ),
                        ...list,
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade50,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(16.0),
                        topRight: const Radius.circular(16.0),
                        bottomLeft: const Radius.circular(16.0),
                        bottomRight: const Radius.circular(16.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: CustomButton(
                text: "Үүсгэх",
                onPressed: () {},
              ),
            ),
            IconButton(
              iconSize: 45.0,
              onPressed: () {},
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.blueAccent.shade400,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
      ],
    );
  }
}
