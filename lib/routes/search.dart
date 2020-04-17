import 'package:flutter/material.dart';

import 'package:floating_search_bar/floating_search_bar.dart';

class SearchRoute extends StatefulWidget {
  @override
  _SearchRouteState createState() => _SearchRouteState();
}

class _SearchRouteState extends State<SearchRoute> {
  @override
  Widget build(BuildContext context) {
    return FloatingSearchBar.builder(
      pinned: true,
      itemCount: 100,
      padding: EdgeInsets.only(top: 10.0),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/survey');
          },
          child: Container(
            height: 100.0,
            margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
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
        );
      },
      leading: null,
      endDrawer: null,
//        endDrawer: Drawer(
//          child: Container(),
//        ),
      onChanged: (String value) {
        print(value);
      },
      decoration: InputDecoration.collapsed(
        hintText: "Search...",
      ),
    );
  }
}
