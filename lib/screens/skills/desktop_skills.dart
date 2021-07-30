import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';

class DesktopSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Text(
              "What I Do",
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
            Text(
              "I may not be perfect, but I'm surely of some help :)",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: AssetImage('assets/manontable.png'),
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HoverContainer(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[850],
                          ),
                          hoverDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[850],
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red[700],
                                  blurRadius: 6.0,
                                  offset: Offset(4.0, 4.0))
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.code,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "Flutter App Development",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              // AnimatedTextKit(
                              //   animatedTexts: [
                              //     TyperAnimatedText("Flutter App Development",
                              //         textStyle: TextStyle(color: Colors.white),
                              //         speed: Duration(milliseconds: 70))
                              //   ],
                              //   totalRepeatCount: 1,
                              // )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        HoverContainer(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[850],
                          ),
                          hoverDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[850],
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red[700],
                                  blurRadius: 6.0,
                                  offset: Offset(4.0, 4.0))
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.laptopCode,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "Flutter Web Development",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              // AnimatedTextKit(
                              //   animatedTexts: [
                              //     TyperAnimatedText("Flutter Web Development",
                              //         textStyle: TextStyle(color: Colors.white),
                              //         speed: Duration(milliseconds: 70))
                              //   ],
                              //   totalRepeatCount: 1,
                              // )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HoverContainer(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[850],
                          ),
                          hoverDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[850],
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red[700],
                                  blurRadius: 6.0,
                                  offset: Offset(4.0, 4.0))
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.terminal,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "Discord Bot Development",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              // AnimatedTextKit(
                              //   animatedTexts: [
                              //     TyperAnimatedText("Discord Bot Development",
                              //         textStyle: TextStyle(color: Colors.white),
                              //         speed: Duration(milliseconds: 70))
                              //   ],
                              //   totalRepeatCount: 1,
                              // )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        HoverContainer(
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[850],
                          ),
                          hoverDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.grey[850],
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.red[700],
                                  blurRadius: 6.0,
                                  offset: Offset(4.0, 4.0))
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.codeBranch,
                                color: Colors.white,
                                size: 40.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  "Open Source - Githib",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              // AnimatedTextKit(
                              //   animatedTexts: [
                              //     TyperAnimatedText("Open Source - Github",
                              //         textStyle: TextStyle(color: Colors.white),
                              //         speed: Duration(milliseconds: 70))
                              //   ],
                              //   totalRepeatCount: 1,
                              // )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
