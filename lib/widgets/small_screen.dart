import 'package:flutter/material.dart';

class SmallScreen extends StatefulWidget {
  @override
  _SmallScreenState createState() => _SmallScreenState();
}

class _SmallScreenState extends State<SmallScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      key: scaffoldKey,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: Row(
          children: [
            SizedBox(
              width: 10.0,
            ),
            Text("<Maverick Wolf/>"),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey,
      ),
    );
  }
}
