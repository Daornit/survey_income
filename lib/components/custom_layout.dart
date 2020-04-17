import 'package:flutter/material.dart';
import 'package:surveyincome/components/footer.dart';

class CustomLayout extends StatelessWidget {
  CustomLayout({this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade700,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Expanded(
                child: this.child,
              ),
              Divider(),
              Padding(padding: const EdgeInsets.all(10.0), child: Footer())
            ],
          ),
        ),
      ),
    );
  }
}
