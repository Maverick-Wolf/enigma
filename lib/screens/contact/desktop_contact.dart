import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

class DesktopContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contact",
              style: TextStyle(color: Colors.white, fontSize: 50.0),
            ),
            Text(
              "Let's get in touch and build something together :)",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: AnimationConfiguration.toStaggeredList(
                  duration: Duration(milliseconds: 1200),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[850],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            size: 50.0,
                            color: Colors.redAccent,
                          ),
                          Text(
                            "Location",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "Delhi, India",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[850],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone,
                            size: 50.0,
                            color: Colors.redAccent,
                          ),
                          Text(
                            "Phone",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "(+91) 8587955277",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[850],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mail,
                            size: 50.0,
                            color: Colors.redAccent,
                          ),
                          Text(
                            "Email",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "rachau76@gmail.com",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                      width: MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[850],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.discord,
                            size: 50.0,
                            color: Colors.redAccent,
                          ),
                          Text(
                            "Discord",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 7.0,
                          ),
                          Text(
                            "Maverick Wolf#6565",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 4,
                ),
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
                Spacer(),
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
                Spacer(),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.reddit,
                      size: 40.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      js.context.callMethod('open',
                          ['https://www.reddit.com/user/Branded-Devil']);
                    }),
                Spacer(),
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
                Spacer(),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.discord,
                      size: 40.0,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      js.context.callMethod(
                          'open', ['https://top.gg/user/549820835230253060']);
                    }),
                Spacer(
                  flex: 4,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
