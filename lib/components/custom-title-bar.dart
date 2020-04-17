import 'package:flutter/material.dart';

class CustomTitleBar extends StatelessWidget {
  CustomTitleBar({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: new BoxDecoration(
          color: Colors.blueAccent.shade700,
          borderRadius: new BorderRadius.only(
            bottomLeft: const Radius.circular(16.0),
            bottomRight: const Radius.circular(16.0),
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}
