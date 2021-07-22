import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MobileHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 6,
            ),
            Text(
              "HEY THERE!!",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            Spacer(),
            Text(
              "Rachit",
              style: TextStyle(color: Colors.redAccent, fontSize: 32.0),
            ),
            Text(
              "Chaudhary",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 32.0),
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
                      fontSize: 22.0),
                ),
                Container(
                  width: 220.0,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText("Flutter App Development",
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 18.0),
                          speed: Duration(milliseconds: 100)),
                      TypewriterAnimatedText("Flutter Web Development",
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 18.0),
                          speed: Duration(milliseconds: 100)),
                      TypewriterAnimatedText("Discord Bot Development",
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 18.0),
                          speed: Duration(milliseconds: 100)),
                      TypewriterAnimatedText("Python Programming",
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 18.0),
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
            CircleAvatar(
              backgroundImage: AssetImage('groot.png'),
              radius: 100.0,
            ),
            Spacer(
              flex: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.github,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                SizedBox(
                  width: 20.0,
                ),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.linkedin,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                SizedBox(
                  width: 20.0,
                ),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.reddit,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    onPressed: () {}),
                SizedBox(
                  width: 20.0,
                ),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.instagram,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                SizedBox(
                  width: 20.0,
                ),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.discord,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ],
            ),
            Spacer(flex: 8),
          ],
        ),
      ),
    );
  }
}
