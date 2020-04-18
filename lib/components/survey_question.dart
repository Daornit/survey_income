import 'package:flutter/material.dart';

import 'custom-button.dart';

class SurveyQuestion extends StatefulWidget {
  @override
  _SurveyQuetionState createState() => _SurveyQuetionState();
}

class _SurveyQuetionState extends State<SurveyQuestion> {
  String _selectedType = 'short';
  List<DropdownMenuItem<String>> typeList = [];

  List<Widget> list = [];
  List<Widget> defaultList = [];

  void loadDefautltList() {
    defaultList = [];
    defaultList.add(
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
    );
    defaultList.add(
      DropdownButton(
        hint: new Text('Блокийн төрлийг сонгоно уу!'),
        items: typeList,
        value: _selectedType,
        onChanged: (value) {
          typeChange(value);
        },
        isExpanded: true,
      ),
    );
  }

  void loadTypeList() {
    typeList = [];
    typeList.add(new DropdownMenuItem(
      child: new Text('Текст хариулт'),
      value: 'short',
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Сонголт/selection/'),
      value: 'selection',
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Олон сонголтот/checkbox/'),
      value: 'checkbox',
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Хооронд/Range/'),
      value: 'range',
    ));
    typeList.add(new DropdownMenuItem(
      child: new Text('Огноо'),
      value: 'date',
    ));
    typeList.add(new DropdownMenuItem(
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
    loadTypeList();

    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Column(
        children: defaultList,
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
    );
  }
}
