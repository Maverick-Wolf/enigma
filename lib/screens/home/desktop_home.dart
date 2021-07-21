import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DesktopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          children: [
            Spacer(
              flex: 2,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(
                  flex: 6,
                ),
                Text(
                  "WELCOME TO MY PORTFOLIO!!",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
                Spacer(),
                Text(
                  "Maverick",
                  style: TextStyle(color: Colors.redAccent, fontSize: 40.0),
                ),
                Text(
                  "Wolf",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 40.0),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "> ",
                      style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w400,
                          fontSize: 30.0),
                    ),
                    Container(
                      width: 300.0,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText("Flutter App Development",
                              textStyle: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                              speed: Duration(milliseconds: 100)),
                          TypewriterAnimatedText("Flutter Web Development",
                              textStyle: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                              speed: Duration(milliseconds: 100)),
                          TypewriterAnimatedText("Discord Bot Development",
                              textStyle: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                              speed: Duration(milliseconds: 100)),
                          TypewriterAnimatedText("Python Programming",
                              textStyle: TextStyle(
                                  color: Colors.white, fontSize: 22.0),
                              speed: Duration(milliseconds: 100)),
                        ],
                        repeatForever: true,
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
                Row(
                  children: [
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 30.0,
                    ),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 30.0,
                    ),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.reddit,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 30.0,
                    ),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                    SizedBox(
                      width: 30.0,
                    ),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.discord,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  ],
                ),
                Spacer(
                  flex: 6,
                )
              ],
            ),
            Spacer(
              flex: 3,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5.0, 5.0, 15.0, 30.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('groot.png'),
                radius: 170.0,
              ),
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
