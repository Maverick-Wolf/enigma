import 'package:flutter/material.dart';

class DesktopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.black,
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.blue,
                )),
          ],
        ),
      ),
    );
  }
}
