import 'package:flutter/material.dart';
import 'package:surveyincome/components/footer.dart';

class CustomLayout extends StatelessWidget {
  CustomLayout({this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade700,
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/drawer-bg.jpg"),
                          fit: BoxFit.cover)),
                  child: null,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ListView(children: [
                ListTile(
                  title: Text("Мөнгө шилжүүлэх хүсэлт"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Оролцсон судалгаанууд"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Миний судалгаа"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Нууц үг солих"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Хувийн мэдээлэл засах"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ]),
            )
          ],
        ),
      ),
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
