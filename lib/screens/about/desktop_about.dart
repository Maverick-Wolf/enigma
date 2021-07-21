import 'package:flutter/material.dart';

class DesktopAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(),
            Spacer(),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    "About Me",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 42.0,
                        letterSpacing: 1.5),
                  ),
                  Text(
                    "Get to know me :)",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "Who am I?",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 20.0,
                        letterSpacing: 1.5),
                  ),
                  Spacer(),
                  Spacer(),
                  Text(
                    "Hi There! I'm Rachit Chaudhary,\nA Flutter developer, Python/C++ programmer, a Discord bot owner and an open source contributor based in India.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17.0,
                        letterSpacing: 1.1),
                  ),
                  Spacer(),
                  Text(
                    "I have been developing Android Apps for just over 6 months now and all of these apps have majorly been in Flutter. This portfolio website is my first time playing around with flutter web.",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 17.0,
                        letterSpacing: 1.1),
                  ),
                  Spacer(),
                  Text(
                    "I am also the Creator and Co-Founder of a Discord bot called Emote Handler which currenlty is in over 1000 servers and has a userbase of over 400k+ users.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17.0,
                        letterSpacing: 1.1),
                  ),
                  Spacer(),
                  RichText(
                    text: TextSpan(
                      text:
                          "Right now I'm in my Second year of undergraduate degree at",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17.0,
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
                                fontSize: 17.0,
                                letterSpacing: 1.1)),
                        TextSpan(
                            text: "  Engineering in Electronics",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.1)),
                        TextSpan(
                            text: " , and a active supporter of a",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 17.0,
                                letterSpacing: 1.1)),
                        TextSpan(
                            text: "  Discord bot YAGPDB.xyz",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.1)),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 5,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 3,
            ),
            Image(
              image: AssetImage('assets/about.png'),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.33,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
