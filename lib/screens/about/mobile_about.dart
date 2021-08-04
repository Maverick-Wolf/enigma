import 'package:flutter/material.dart';

class MobileAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.93,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "About Me",
                  style: TextStyle(
                      color: Colors.white, fontSize: 35.0, letterSpacing: 1.5),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Who am I?",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 18.0,
                        letterSpacing: 1.5),
                  ),
                ),
                Text(
                  "Hi There! I'm Rachit Chaudhary,\nA Flutter developer, Python/C++ programmer, a Discord bot developer and an open source contributor based in India.",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.5,
                      letterSpacing: 1.1),
                ),
                Text(
                  "I have been developing Android/IOS Apps for just over 6 months now and all of these apps have majorly been in Flutter. This portfolio website is my first time playing around with flutter web.",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 13.5,
                      letterSpacing: 1.1),
                ),
                Text(
                  "I am also the Creator and Co-Founder of a Discord bot called Emote Handler which currenlty is in over 1000 servers and has a userbase of over 600k+ users.",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.5,
                      letterSpacing: 1.1),
                ),
                RichText(
                  text: TextSpan(
                    text:
                        "Right now I'm in my Second year of undergraduate degree at",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13.5,
                        letterSpacing: 1.1),
                    children: [
                      TextSpan(
                          text:
                              " Birla Institue of Technology and Science, Pilani",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.1)),
                      TextSpan(
                          text: " doing my",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13.5,
                              letterSpacing: 1.1)),
                      TextSpan(
                          text: "  Engineering in Electronics.",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.1)),
                    ],
                  ),
                ),
                Image(
                  image: AssetImage('assets/manmail.png'),
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.55,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
