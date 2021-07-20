import 'package:enigma/widgets/responsiveness.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0.0,
      title: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "<Maverick Wolf/>",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                Spacer(),
                InkWell(
                    child: Container(
                        child: Text(
                  "HOME",
                  style: TextStyle(fontSize: 15.0),
                ))),
                Spacer(),
                InkWell(
                    child: Container(
                        child: Text(
                  "ABOUT",
                  style: TextStyle(fontSize: 15.0),
                ))),
                Spacer(),
                InkWell(
                    child: Container(
                        child: Text(
                  "SKILLS",
                  style: TextStyle(fontSize: 15.0),
                ))),
                Spacer(),
                InkWell(
                    child: Container(
                        child: Text(
                  "PROJECTS",
                  style: TextStyle(fontSize: 15.0),
                ))),
                Spacer(),
                InkWell(
                    child: Container(
                        child: Text(
                  "CONTACT",
                  style: TextStyle(fontSize: 15.0),
                ))),
                Spacer(),
              ],
            )
          : Row(
              children: [
                SizedBox(
                  width: 10.0,
                ),
                Text("<Maverick Wolf/>"),
              ],
            ),
      backgroundColor: Colors.blue,
    );
