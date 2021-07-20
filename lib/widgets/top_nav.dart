import 'package:enigma/widgets/responsiveness.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

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
                Spacer(),
                HoverButton(
                  onpressed: () {},
                  hoverColor: Colors.black,
                  child: Text(
                    "HOME",
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ),
                Spacer(),
                HoverButton(
                  hoverShape: RoundedRectangleBorder(),
                  onpressed: () {},
                  hoverColor: Colors.black,
                  child: Text(
                    "ABOUT",
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ),
                Spacer(),
                HoverButton(
                  onpressed: () {},
                  hoverColor: Colors.black,
                  child: Text(
                    "SKILLS",
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ),
                Spacer(),
                HoverButton(
                  onpressed: () {},
                  hoverColor: Colors.black,
                  minWidth: 100.0,
                  child: Text(
                    "PROJECTS",
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ),
                Spacer(),
                HoverButton(
                  onpressed: () {},
                  hoverColor: Colors.black,
                  minWidth: 100.0,
                  child: Text(
                    "CONTACT",
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ),
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
