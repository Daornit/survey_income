import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:surveyincome/components/custom-title-bar.dart';

class HowTo extends StatefulWidget {
  @override
  _HowToState createState() => _HowToState();
}

class _HowToState extends State<HowTo> {
  @override
  Widget build(BuildContext context) {
    final List<Entry> data = <Entry>[
      Entry(
        'Системд хэрхэн бүртгүүлэх бэ?',
        <Entry>[
          Entry('Section A1'),
          Entry('Section A2'),
        ],
      ),
      Entry(
        'Хэрхэн судалгаа бөглөх бэ?',
        <Entry>[
          Entry('Section B0'),
          Entry('Section B1'),
        ],
      ),
      Entry(
        'Мөнгөө хэрхэн өөрийн дансруу татах вэ?',
        <Entry>[
          Entry('Section C0'),
          Entry('Section C1'),
          Entry(
            'Section C2',
            <Entry>[
              Entry('Item C2.0'),
              Entry('Item C2.1'),
              Entry('Item C2.2'),
              Entry('Item C2.3'),
            ],
          ),
        ],
      ),
      Entry(
        'Судалгааны хариуг хэрхэн харах бэ?',
        <Entry>[
          Entry('Section A1'),
          Entry('Section A2'),
        ],
      ),
      Entry(
        'Судалгааны хариуг хэрхэн pdf-ээх татах бэ?',
        <Entry>[
          Entry('Section A1'),
          Entry('Section A2'),
        ],
      ),
    ];

    return Column(
      children: <Widget>[
        CustomTitleBar(
          title: 'Түгээмэл асуулт хариулт',
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) =>
                EntryItem(data[index]),
            itemCount: data.length,
          ),
        ),
      ],
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
