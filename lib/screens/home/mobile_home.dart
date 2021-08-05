import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  Image myImage, myImage2;

  @override
  void initState() {
    super.initState();
    myImage = Image.asset('assets/drawer.gif');
    myImage2 = Image.asset('assets/login.gif');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(myImage.image, context);
    precacheImage(myImage2.image, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: AnimationConfiguration.toStaggeredList(
              duration: Duration(milliseconds: 1200),
              childAnimationBuilder: (widget) => SlideAnimation(
                child: FadeInAnimation(
                  child: widget,
                ),
              ),
              children: [
                Text(
                  "HEY THERE!!",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
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
                SizedBox(
                  height: 15.0,
                ),
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
                              textStyle: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                              speed: Duration(milliseconds: 100)),
                          TypewriterAnimatedText("Flutter Web Development",
                              textStyle: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                              speed: Duration(milliseconds: 100)),
                          TypewriterAnimatedText("Discord Bot Development",
                              textStyle: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                              speed: Duration(milliseconds: 100)),
                          TypewriterAnimatedText("Python Programming",
                              textStyle: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                              speed: Duration(milliseconds: 100)),
                        ],
                        repeatForever: true,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Image(
                  image: AssetImage('assets/fullstack.png'),
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              'open', ['https://github.com/Maverick-Wolf']);
                        }),
                    SizedBox(
                      width: 20.0,
                    ),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.linkedin,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          js.context.callMethod('open', [
                            'https://www.linkedin.com/in/rachit-chaudhary-8217b8204/'
                          ]);
                        }),
                    SizedBox(
                      width: 20.0,
                    ),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.reddit,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        onPressed: () {
                          js.context.callMethod('open',
                              ['https://www.reddit.com/user/Branded-Devil']);
                        }),
                    SizedBox(
                      width: 20.0,
                    ),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          js.context.callMethod(
                              'open', ['https://www.instagram.com/imrachitt/']);
                        }),
                    SizedBox(
                      width: 20.0,
                    ),
                    IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.discord,
                          size: 40.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          js.context.callMethod('open',
                              ['https://top.gg/user/549820835230253060']);
                        }),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
