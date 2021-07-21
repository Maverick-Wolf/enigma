import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class DesktopSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "What I Do",
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            Text(
              "I may not be perfect, but I'm surely of some help :)",
              style: TextStyle(color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HoverContainer(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.grey[850],
                  ),
                  hoverDecoration: BoxDecoration(
                    color: Colors.grey[850],
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(10.0, 10.0),
                          blurRadius: 10.0)
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                HoverContainer(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.25,
                  color: Colors.grey[850],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HoverContainer(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.25,
                  color: Colors.grey[850],
                ),
                SizedBox(
                  width: 15.0,
                ),
                HoverContainer(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.25,
                  color: Colors.grey[850],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
