import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({@required this.text, @required this.onPressed});
  final GestureTapCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: EdgeInsets.fromLTRB(50, 0, 50, 10),
      color: Colors.transparent,
      child: FlatButton(
        onPressed: onPressed,
        child: Container(
          decoration: new BoxDecoration(
              color: Colors.blueAccent.shade700,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(16.0),
                topRight: const Radius.circular(16.0),
                bottomLeft: const Radius.circular(16.0),
                bottomRight: const Radius.circular(16.0),
              )),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
