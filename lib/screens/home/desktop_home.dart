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
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "WELCOME TO MY PORTFOLIO!!",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Maverick",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Wolf",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "> ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0),
                    ),
                    Container(
                      width: 200.0,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText("Flutter App Development",
                              textStyle: TextStyle(color: Colors.white),
                              speed: Duration(milliseconds: 100)),
                          TypewriterAnimatedText("Flutter Web Development",
                              textStyle: TextStyle(color: Colors.white),
                              speed: Duration(milliseconds: 100)),
                          TypewriterAnimatedText("Python Programming",
                              textStyle: TextStyle(color: Colors.white),
                              speed: Duration(milliseconds: 100)),
                        ],
                        repeatForever: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.reddit,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.discord,
                          size: 30.0,
                          color: Colors.white,
                        ),
                        onPressed: () {})
                  ],
                ),
              ],
            ),
            Spacer(),
            Spacer(),
            Padding(
              padding: EdgeInsets.fromLTRB(5.0, 5.0, 15.0, 30.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  image: AssetImage('assets/classy.jpg'),
                  height: MediaQuery.of(context).size.height * 0.6,
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
