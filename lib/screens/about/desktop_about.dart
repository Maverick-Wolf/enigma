import 'package:flutter/material.dart';

class DesktopAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Me",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Get to know me :)",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Who am I?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Hi There! I'm Rachit Chaudhary, a Flutter developer, a Python/C++ programmer and an open source contributor based in India",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "I have been developing Android Apps for just over 6 months now and all of these apps have majorly been in Flutter.This portfolio website is my first time playing around with flutter web.I am also the Creator and Co-Founder of a Discord bot called Emote Handler which currenlty is in over 1000 servers and has a userbase of over 400k+ users",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Right now I'm in my Second year of undergraduate degree at BITS Pilani, doing an engineering in Electronics",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Image(
              image: AssetImage('assets/about.png'),
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.4,
            ),
          ],
        ),
      ),
    );
  }
}
