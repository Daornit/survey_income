import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  static const PADDING = 10.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(PADDING),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: Icon(
              Icons.featured_play_list,
              color: Colors.grey.shade700,
              size: 28.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(PADDING),
          child: IconButton(
            onPressed: () {
              print('search navigation');
              Navigator.pushNamed(context, '/search');
            },
            icon: Icon(
              Icons.search,
              color: Colors.grey.shade700,
              size: 28.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/add-survey');
            },
            child: Icon(
              Icons.add_circle,
              color: Colors.blueAccent.shade700,
              size: 50.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(PADDING),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/how-to');
            },
            icon: Icon(
              Icons.forum,
              color: Colors.grey.shade700,
              size: 28.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(PADDING),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/account');
            },
            icon: Icon(
              Icons.account_circle,
              color: Colors.grey.shade700,
              size: 28.0,
            ),
          ),
        ),
      ],
    );
  }
}
